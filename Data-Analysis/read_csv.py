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
def process_plays(csv_df: pd.DataFrame):
    final_df = pd.DataFrame()

    # defining constraints of rows that we do not care about
    constraints = get_constraints(csv_df)
    
    #turn csv into pandas dataframe


def find_opponents():
    pass

def find_playoutcomes():
    pass

def find_site():
    pass

def find_shottypes():
    pass

def play_playtype():
    pass

def get_constraints(csv_df: pd.DataFrame):
    constraint1 = csv_df['Result'] == "No Violation"
    constraint2 = csv_df['Result'] == "Free Throw"
    constraint3 = csv_df['Result'] == "Run Offense"
    constraint4 = csv_df['Result'] == "Non Shooting"
    return constraint1 & constraint2 & constraint3 & constraint4


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
     
