from django.shortcuts import render, redirect, get_object_or_404, reverse
from django.http import HttpResponse, HttpResponseRedirect, Http404
from django.contrib import messages
from .models import Beach, Resort, BeachAndResort, Place

# Create your views here.

def landing(request):
    return render(request, 'start/landing.html') #LANDING

#---------HOME----------#

def getStarted(request):
    return render(request, 'filter/filter.html')


def selection(request):
    return render(request, 'home/filter.html')


def read_more(request):
    return render(request, 'home/read_more.html')


def getFilter(input, output):
    print(input)
    if input == "on":
        if isinstance(output, list):
            return output
        else:
            return [output]
    return None

def checkHasFilter(keywords_string, filters):
    for i in range(len(filters)):
        hasKeyword = keywords_string.find(filters[i]) > -1
        if hasKeyword:
            return True
    return False

def filter_data(request):
    # Retrieve the selected option from the radio button
    selected_option = request.GET.get('beach_or_resort')
    print("-----")
    filters = []
    filter_names = ['room', 'cottage', 'villa', 'suites', 'pools', 'food_and_dining', 'historical_and_cultural', 'festival_and_events', 'natural_attractions', 'local_markets', 'sports_and_recreation', 'religious_sites']
    filter_keywords =  ['rooms', 'cottage', 'villa', ['tent', 'camping'], 'pools', ['food', 'dining'], ['historical', 'cultural'], ['festivals', 'events'], 'attractions', ['market', 'shopping'], ['sports', 'recreation'], 'religion']
    for i in range(12):
        filter = getFilter(request.GET.get(filter_names[i]), filter_keywords[i])
        if filter is not None:
            filters = filters + filter

    if selected_option == 'beach':
        places = Place.objects.filter(is_beach=True)
    elif selected_option == 'resort':
        places = Place.objects.filter(is_resort=True)
    elif selected_option == 'both':
        places = Place.objects.filter(is_beach=True) & Place.objects.filter(is_resort=True)
    else:
        selected_option = 'both'
        places = Place.objects.all()

    
    places_filtered = []

    for place in places:
        keywords = place.keywords
        hasFilter = checkHasFilter(keywords, filters)
        if hasFilter:
            places_filtered.append(place)
            print(place.name)

    search_query = request.GET.get('search', '')

    if search_query:
        # If there is a search query, filter places based on the name containing the search query
        places = Place.objects.filter(name__icontains=search_query)

    if len(filters) > 0:
        places = places.filter(id__in=[place.id for place in places_filtered])

    # Sort places by rating in descending order
    places = sorted(places, key=lambda x: x.rating, reverse=True)

    # Set the default limit to 10
    limit = 10

    if selected_option == 'both':
        # If both beach and resort are selected, set the limit to display all places
        limit = len(places)

    # Fetch the first 'limit' items
    data = places[:limit]
    # Check if there are no results
    no_results = len(data) == 0

    return render(request, 'home/filter.html', {'data': data, 'selected_option': selected_option, 'no_results': no_results})


