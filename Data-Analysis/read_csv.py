"""
File: read_csv.py

Description:
A program to read a given csv file from command line, 
parse and grab needed information to later be added to database

Authors:
Nick Creeley
Kyle Krebs

"""

import pandas as pd
import sys


"""
process_csv: Processes the csv file

"""
def process_csv(csv_file_path):
    
    #turn csv into pandas dataframe
    df = pd.read_csv(csv_file_path)

    print(df)


if __name__ == "__main__":
    
    #check that file is provided
    if len(sys.argv) < 2:
        print("Usage: python read_csv.py <csv file path_1> <csv file path_2>...")
        sys.exit(1)
    
    #process csv files given 
    for csv_path in sys.argv[1:]:
        #Process each csv path
        process_csv(csv_path)
     
