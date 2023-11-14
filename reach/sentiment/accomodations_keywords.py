import csv
import openai
import json

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
        data_object = {
            'fbid': fbid,
            'pagename': pagename,
            'review': review
        }
        
        # Append the object to the data_list
        data_list.append(data_object)



openai.api_key = "NULL"
openai.api_base = "http://localhost:1234/v1"
# openai.api_key = "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"



def toDict(message):
    response = {
        'role': message['role'],
        'content': message['content']
    }
    return response

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

    with open(file_path, "w") as json_file:
        json_file.write(json_data)




print(pages)
json_data = json.dumps(pages)

file_path = "accomodation_final.json"

with open(file_path, "w") as json_file:
    json_file.write(json_data)