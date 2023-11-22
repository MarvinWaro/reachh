import csv
import json
import matplotlib.pyplot as plt
import os

# Specify the path to your JSON file
json_file_path = 'data.json'

# Read JSON data from the file
with open(json_file_path, 'r') as json_file:
    json_data = json.load(json_file)

# Specify the output CSV file
csv_file_path = 'output.csv'

weights = {
    "cleanliness": 22.60,
    "natural_beauty": 18.30,
    "safety": 24.09,
    "accommodations": 14.38,
    "recreational_activity": 8.40,
    "accessibility": 12.23
}
output_directory = "plots"
os.makedirs(output_directory, exist_ok=True)

length = -1

# Write CSV header
with open(csv_file_path, 'w', newline='', encoding='utf-8') as csv_file:
    csv_writer = csv.writer(csv_file)
    header = ["hotel", "cleanliness", "safety", "accessibility", "natural_beauty", "accomodations", "recreational_activity", "weighted_rating", "review"]
    csv_writer.writerow(header)

    i = 0

    for hotel, reviews in json_data.items():
        for review in reviews:
            length += 1

    # Write data rows
    for hotel, reviews in json_data.items():
        for review in reviews:
            weighted_cleanliness = round(review["cleanliness"] * weights["cleanliness"],2)
            weighted_safety = round(review["safety"] * weights["safety"],2)
            weighted_accessibility = round(review["accessibility"] * weights["accessibility"],2)
            weighted_natural_beauty = round(review["natural_beauty"] * weights["natural_beauty"],2)
            weighted_accommodations = round(review["accommodations"] * weights["accommodations"],2)
            weighted_recreational_activity = round(review["recreational_activity"] * weights["recreational_activity"],2)

            weighted_sum = weighted_cleanliness + weighted_safety + weighted_accessibility + weighted_natural_beauty + weighted_accommodations + weighted_recreational_activity
            
            weighted_avg = weighted_sum / 6.0  
            weighted_avg_percentage = weighted_avg / 16.67 
            weighted_avg_percentage = round(weighted_avg_percentage, 2)

            row = [hotel, weighted_cleanliness, weighted_safety, weighted_accessibility,
                   weighted_natural_beauty, weighted_accommodations, weighted_recreational_activity, weighted_avg_percentage, review["review"]]
            csv_writer.writerow(row)
            try: 
                plt.figure(figsize=(8, 8))
                plt.pie([weighted_cleanliness, weighted_safety, weighted_accessibility,
                        weighted_natural_beauty, weighted_accommodations, weighted_recreational_activity, weighted_sum * ((5/weighted_avg_percentage)-1)],
                        labels=["cleanliness", "safety", "accessibility", "natural_beauty", "accomodations", "recreational_activity", " "], autopct='%1.1f%%', startangle=90, shadow=False, colors=['blue', 'green', 'coral', 'skyblue', 'red', 'yellow', 'black'])
                plt.title(f'Weighted Review#{i + 1} : {weighted_avg_percentage}/5 - {hotel}')
                plt.savefig(f'{output_directory}/{hotel}_review_{i + 1}_pie_chart.png')
                plt.close()
                print(f'{i}/{length}')
                i += 1
            except Exception as e:
                i += 1
                continue

print(f"CSV file '{csv_file_path}' has been created.")
