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
import numpy as np
import sys
import os


"""
process_csv: Processes the csv file

"""
def process_plays(csv_df: pd.DataFrame):
    # final dataframe with important info
    final_df = pd.DataFrame()

    # defining constraints of rows that we do not care about
    constraints = get_constraints(csv_df)
    
    # filter dataframe to fit the constraints
    filtered_df = csv_df(constraints)

    # finds key information and puts in
    finds_opponent_site(filtered_df, final_df)
    find_playoutcomes(filtered_df, final_df)
    find_shottypes(filtered_df, final_df)
    find_playtype(filtered_df, final_df)

    print(final_df.head)



def finds_opponent_site(df: pd.DataFrame, final_df: pd.DataFrame):
    # Finds home and away teams
    away = df['Game'].str[:3]
    home = df['Game'].str[3:]
    
    # Finds the site and opponent of the game
    final_df['Site'] = np.where(home == 'RIT', 'Home', 'Away')
    final_df['Opponent'] = np.where(home == 'RIT', away, home)


def find_playoutcomes(df: pd.DataFrame, final_df: pd.DataFrame):
    # Maps The result column values to their new outcome values
    outcome_mapping = {
        'Foul': 'Foul',
        'Make 2 Pts': '2pMa',
        'Make 3 Pts': '3pMa',
        'Miss 2 Pts': '2pmi',
        'Miss 3 Pts': '3pmi',
        'Turnover': 'Turnover',
        '1 Pts': 'And1'
    }
    df['Outcome'] = df['Result'].map(outcome_mapping)


def find_shottypes(df: pd.DataFrame, final_df: pd.DataFrame):
    # Splits synergy string into a list based on delimiters
    list = df['Synergy String'].str.split(' >')

    # Checks Shot Type
    if 'No Dribble Jumper' in list:
        final_df['ShotType'] = 'No Dribble Jumper'
    elif 'Dribble Jumper' in list:
        final_df['ShotType'] = 'Dribble Jumper'
    elif 'Drop Step' in list:
        final_df['ShotType'] = 'Drop Step'
    elif 'Hook Shot' in list:
        final_df['ShotType'] = 'Hook Shot'
    elif 'To Basket' in list:
        final_df['ShotType'] = 'To Basket'


def find_playtype():
    pass

def get_constraints(csv_df: pd.DataFrame):
    constraint1 = csv_df['Result'] != "No Violation"
    constraint2 = csv_df['Result'] != "Free Throw"
    constraint3 = csv_df['Result'] != "Run Offense"
    constraint4 = csv_df['Result'] != "Non Shooting Foul"
    constraint5 = csv_df['Result'] != "Kicked Ball"
    return constraint1 & constraint2 & constraint3 & constraint4 & constraint5


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
     
