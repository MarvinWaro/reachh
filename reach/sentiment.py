import os
import django
import json
# Set the Django settings module
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "reach.settings")
# Initialize Django
django.setup()



from algo.models import Place

def load_json_file(file_path):
    with open(file_path, 'r') as file:
        data = json.load(file)
        # cleaned_data = {key: [item.strip().lower().strip('"').strip('.').replace(' ', '') for item in value] for key, value in data.items()}
    return data

keywords_data = load_json_file("./sentiment/cleaned_data.json")
ratings_data = load_json_file("./sentiment/ratings.json")

print(keywords_data)
print(ratings_data)
record_count = Place.objects.count()
search_result = Place.objects.filter(place_identifier="3mjdhillsiteresort")

for key in keywords_data: 
    search_result = Place.objects.filter(place_identifier=key)
    if(len(search_result) == 0):
        continue
    place = search_result[0]
    place.keywords = ', '.join(keywords_data[key])
    place.rating = ratings_data[key]
    place.save()
    print(key,place.name)

print('keywords are added to db')
print('ratings are added to db')


