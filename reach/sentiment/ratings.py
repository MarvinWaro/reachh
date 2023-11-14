import json

# Load the original JSON data
with open('data.json', 'r') as file:
    data = json.load(file)

# Create a new dictionary to store the averages
averages = {}

# Calculate the average for each key in the original data
for key, values in data.items():
    average = sum(values) / len(values)
    averages[key] = round(average,2)

# Save the averages to a new JSON file
with open('ratings.json', 'w') as file:
    json.dump(averages, file, indent=4)

print("Averages calculated and saved to ratings.json")
print(averages)
