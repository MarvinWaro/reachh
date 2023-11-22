import json

def load_json_file(file_path):
    with open(file_path, 'r') as file:
        data = json.load(file)
        cleaned_data = {key: [item.strip().lower().strip('"').strip('.').replace(' ', '') for item in value] for key, value in data.items()}
    return cleaned_data

json_data_accomodations = load_json_file('accomodation_final.json')
json_data_culture = load_json_file('culture_final.json')
json_data = {}
for key in json_data_accomodations:
    json_data[key] = json_data_accomodations[key] + json_data_culture[key]


valid = ['rooms', 'cottage', 'villa', 'tent', 'camping', 'pools', 'food', 'dining', 'historical', 'cultural', 'festivals', 'events', 'attractions', 'market', 'shopping', 'sports', 'recreation', 'religion']

def isValidKeyword(keyword):
    for word in valid:
        if(keyword == word):
            return True
    return False

def isDuplicate(word, dict):
    for w in dict:
        if word == w:
            return True
    return False

for key in json_data:
    valid_words = []
    for keyword in json_data[key]:
        if isValidKeyword(keyword):
            valid_words.append(keyword)
    json_data[key] = valid_words

for key in json_data:
    keywords = []
    for keyword in json_data[key]:
        if not isDuplicate(keyword, keywords):
            keywords.append(keyword)
    json_data[key] = keywords

for key in json_data:
    print(json_data[key])

with open('cleaned_data.json', 'w') as json_file:
    json.dump(json_data, json_file)