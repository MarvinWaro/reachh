<<<<<<< HEAD
=======
<<<<<<< Updated upstream
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
=======
>>>>>>> 718c7534d79ae053929c4143b6f5988d631caea5
import pandas as pd
import json

csv_file = 'output.csv'
df = pd.read_csv(csv_file)
grouped_df = df.groupby('hotel')['weighted_rating'].mean().round(2)
result_dict = grouped_df.to_dict()
json_output_file = 'ratings.json'
with open(json_output_file, 'w') as json_file:
    json.dump(result_dict, json_file, indent=4)
<<<<<<< HEAD
print(f"The data has been saved to {json_output_file}")
=======
print(f"The data has been saved to {json_output_file}")
>>>>>>> Stashed changes
>>>>>>> 718c7534d79ae053929c4143b6f5988d631caea5
