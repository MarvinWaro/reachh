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

# print(data_list[1:5])
for data in data_list:
    if data['review'] == 'text':
        continue
    review = "Review: " + data['review']
    instructions = ''''
Rate the review by sentiment analysis from 1 to 5.
Do sentiment analysis by category.
categories are: cleanliness, safety, accessibility, natural beauty, accomodations.
give each score by category and use it for the total average score
Respond with only one number which is the total average score, no introduction, explanation, tables, just respond with a number
remember that the respond should just be a singe digit number, nothing more""
    '''
    message = ({"role": "user", "content": review + instructions})
    print(message['content'])
    completion = openai.ChatCompletion.create(model="gpt-3.5-turbo", messages=[message])
    rating = completion.choices[0].message['content']
    print(rating)
    print(completion)

    if data['pagename'] in pages:
        pages[data['pagename']].append(float(rating))
    else:
        pages[data['pagename']] = []
        pages[data['pagename']].append(float(rating))

    print(pages)
    json_data = json.dumps(pages)

    file_path = "data.json"

    with open(file_path, "w") as json_file:
        json_file.write(json_data)




print(pages)
json_data = json.dumps(pages)

file_path = "data.json"

with open(file_path, "w") as json_file:
    json_file.write(json_data)