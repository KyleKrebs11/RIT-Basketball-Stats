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
import os


"""
process_csv: Processes the csv file

"""
def process_plays(csv_file_path):

    return 0


if __name__ == "__main__":
    
    #check that file is provided
    if len(sys.argv) < 2:
        print("Usage: python read_csv.py <csv file path_1> <csv file path_2>...")
        sys.exit(1)
    
    #process csv files given 
    for csv_file in sys.argv[1:]:
        #Process each csv path
        file_path = os.path.join('game_csv', csv_file)

        #turn csv into pandas dataframe
        df = pd.read_csv(file_path)
        
        #process the plays
        process_plays(df)
     
