import pandas as pd
import json

csv_file = 'output.csv'
df = pd.read_csv(csv_file)
grouped_df = df.groupby('hotel')['weighted_rating'].mean().round(2)
result_dict = grouped_df.to_dict()
json_output_file = 'ratings.json'
with open(json_output_file, 'w') as json_file:
    json.dump(result_dict, json_file, indent=4)
print(f"The data has been saved to {json_output_file}")