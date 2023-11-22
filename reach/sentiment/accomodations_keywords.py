import csv
import openai
import json
<<<<<<< HEAD
=======
<<<<<<< Updated upstream

data_list = []

# Open the CSV file with the correct encoding
with open('reach.csv', 'r', encoding='utf-8') as f:
    # Create a CSV reader object
    reader = csv.reader(f)

    # Iterate over each row in the CSV file
    for row in reader:
        # Print each column value
        fbid = row[0]
        pagename = row[1]
        review = row[2]
        
        # Create an object and store it in a dictionary
=======
>>>>>>> 718c7534d79ae053929c4143b6f5988d631caea5
from dotenv import load_dotenv
import os
load_dotenv()

data_list = []

with open('reach.csv', 'r', encoding='utf-8') as f:
    reader = csv.reader(f)
    for row in reader:
        fbid = row[0]
        pagename = row[1]
        review = row[2]
<<<<<<< HEAD
=======
>>>>>>> Stashed changes
>>>>>>> 718c7534d79ae053929c4143b6f5988d631caea5
        data_object = {
            'fbid': fbid,
            'pagename': pagename,
            'review': review
        }
<<<<<<< HEAD
=======
<<<<<<< Updated upstream
        
        # Append the object to the data_list
        data_list.append(data_object)



# openai.api_key = "NULL"
# openai.api_base = "http://localhost:1234/v1"
openai.api_key = "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"


=======
>>>>>>> 718c7534d79ae053929c4143b6f5988d631caea5
        data_list.append(data_object)


openai.api_key = os.getenv("OPENAI_KEY")
<<<<<<< HEAD
=======
>>>>>>> Stashed changes
>>>>>>> 718c7534d79ae053929c4143b6f5988d631caea5

def toDict(message):
    response = {
        'role': message['role'],
        'content': message['content']
    }
    return response

<<<<<<< HEAD
=======
<<<<<<< Updated upstream
pages = {
    
}
print('a' in pages)

messages = [
    {"role": "user", "content": "Just respond with a number. Rate by sentiment analysis, 1 - 5"}
]
# completion = openai.ChatCompletion.create(model="mistral", messages=messages)
# messages.append(toDict(completion.choices[0].message))

data_list.pop()
data_list.pop()
index = 0
# print(data_list[1:5])
=======
>>>>>>> 718c7534d79ae053929c4143b6f5988d631caea5
pages = {}
messages = [
    {"role": "user", "content": "Just respond with a number. Rate by sentiment analysis, 1 - 5"}
]

<<<<<<< HEAD
=======
>>>>>>> Stashed changes
>>>>>>> 718c7534d79ae053929c4143b6f5988d631caea5
for data in data_list:
    if data['review'] == 'text':
        continue
    keywords = "These are the keywords to choose from:  [rooms, cottage, villa, tent, camping, pools] \n"
    review = "Review: " + data['review']
    instructions = ''''
    
Analyze the review, which of the keywords provided above applies to the review? only select one keyword and if there is none then only output empty
respond in only one word,
do not add explanations
    '''
    message = ({"role": "user", "content": keywords + review + instructions})
<<<<<<< HEAD
=======
<<<<<<< Updated upstream
    print(message['content'])
    completion = openai.ChatCompletion.create(model="gpt-3.5-turbo", messages=[message])
    keywords = completion.choices[0].message['content']
    print(keywords)
    print(completion)
    print("Index: " + str(index))
    index += 1
    keywords_list = list(set(keywords.split(', ')))

    if data['pagename'] in pages:
        # pages[data['pagename']].append(keywords)
        pages[data['pagename']] = list(set(pages[data['pagename']] + keywords_list))
    else:
        pages[data['pagename']] = []
        pages[data['pagename']].append(keywords)

    print(pages)
    json_data = json.dumps(pages)

    file_path = "accomodation.json"

=======
>>>>>>> 718c7534d79ae053929c4143b6f5988d631caea5

    retries = 3
    while retries > 0:   
        try: 
            completion = openai.ChatCompletion.create(model="gpt-3.5-turbo", messages=[message], request_timeout=15 * (11-retries))
            keywords = completion.choices[0].message['content']
            keywords_list = list(set(keywords.split(', ')))
            if data['pagename'] in pages:
                pages[data['pagename']] = list(set(pages[data['pagename']] + keywords_list))
            else:
                pages[data['pagename']] = []
                pages[data['pagename']].append(keywords)
            print(keywords_list)
            break
        except Exception as e:
            retries -= 1
            time.sleep(5)

    json_data = json.dumps(pages)
    file_path = "accomodation.json"
<<<<<<< HEAD
=======
>>>>>>> Stashed changes
>>>>>>> 718c7534d79ae053929c4143b6f5988d631caea5
    with open(file_path, "w") as json_file:
        json_file.write(json_data)




print(pages)
json_data = json.dumps(pages)
<<<<<<< HEAD
=======
<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
>>>>>>> 718c7534d79ae053929c4143b6f5988d631caea5
file_path = "accomodation_final.json"

with open(file_path, "w") as json_file:
    json_file.write(json_data)