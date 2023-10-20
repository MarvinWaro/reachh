from django.shortcuts import render, redirect, get_object_or_404, reverse
from django.http import HttpResponse, HttpResponseRedirect, Http404
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from .models import Beach, Resort, BeachAndResort

# Create your views here.

def landing(request):
    return render(request, 'users/start/landing.html') #LANDING


#---------HOME----------#

def getStarted(request):
    return render(request, 'users/filter/filter.html')


def selection(request):
    return render(request, 'users/home/filter.html')


def read_more(request):
    return render(request, 'users/home/read_more.html')



def filter_data(request):
    # Retrieve the selected option from the radio button
    selected_option = request.GET.get('beach_or_resort')

    # Filter data based on the selected option
    if selected_option == 'beach':
        data = Beach.objects.all()[:5]
    elif selected_option == 'resort':
        data = Resort.objects.all()[:5]
    elif selected_option == 'both':
        data = BeachAndResort.objects.all()[:5]
    else:
        data = []

    return render(request, 'users/home/filter.html', {'data': data, 'selected_option': selected_option})


