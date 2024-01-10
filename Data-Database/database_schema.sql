/*
File: database_skeleton.sql

Description:
SQL script that creates a database to be populated later.

@author Nick Creeley
@author Kyle Krebs

*/

CREATE DATABASE IF NOT EXISTS basketball_stats;

USE basketball_stats;

-- create the play description table
CREATE TABLE PlayDescriptions (
    PlayID INT PRIMARY KEY AUTO_INCREMENT,
    PlayType VARCHAR(50),
    Direction VARCHAR(50) NULL,
    Play_Action VARCHAR(50) NULL
);

-- create the shot type table
CREATE TABLE ShotTypes (
    ShotType VARCHAR(50) PRIMARY KEY
); 

-- create the play outcomes table
CREATE Table PlayOutcomes (
    Outcome VARCHAR(50) PRIMARY KEY
);

-- create the opponents table
CREATE TABLE Opponents (
    Opponent VARCHAR(50) PRIMARY KEY
);

-- create the main table that will hold all plays
CREATE TABLE Plays (
    PlayID INT,
    ShotType VARCHAR(50),
    Outcome VARCHAR(50),
    Opponent VARCHAR(50),
    FOREIGN KEY (PlayID) REFERENCES PlayDescriptions(PlayID),
    FOREIGN KEY (ShotType) REFERENCES ShotTypes(ShotType),
    FOREIGN KEY (Outcome) REFERENCES PlayOutcomes(Outcome),
    FOREIGN KEY (Opponent) REFERENCES Opponents(Opponent)
);
