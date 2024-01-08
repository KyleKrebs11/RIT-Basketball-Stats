import pandas as pd


def main():
    df = pd.read_sql_table("elmira_playbyplay")
    print(df.head)
    return 0
