# -*- coding: utf-8 -*-
"""
Created on Thu Jan 11 15:48:06 2018

@author: Merel
"""

# Import the JSON and CSV packages
import json
import csv

# Load in the conflict JSON data
with open('conflict_data/conflict_data_full_lined.json') as file:
    data = json.load(file)

# Open the output CSV file we want to write to
with open('preprocessed_data.csv', 'w', newline='') as file:
    csvwriter = csv.writer(file, delimiter=',', quotechar='"', quoting=csv.QUOTE_NONNUMERIC)
    
    csvwriter.writerow(['Country', 'event_clarity', 'date_prec', 'year', 'longtitude', 'latitude'])
    # Actually write the data to the CSV file here.
    # You can use the same csvwriter.writerow command to output the data 
    #   as is used above to output the headers.
    for item in data:
#       print(item['country'])
        if item['country'] == "Myanmar (Burma)": #or item['country']=="Burma":
            print(item)
            csvwriter.writerow([item['country'], item['event_clarity'], item['date_prec'],item['year'], item['longitude'], item['latitude']])
#    Myanmar_countries = set ()
#    for value in data:
#        Myanmar_countries.add(data[value]['country'])
#    print(Myanmar_countries)