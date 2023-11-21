/*
A starting template that will create the main databases needed

@author Nick Creeley
@author Kyle Krebs
*/

-- create the database if not already created 
create database if not exists stats;

use stats;

-- create the lineup table
create table lineups (
	lineup_id INT PRIMARY KEY AUTO_INCREMENT,
    player1 INT,
    player2 INT,
    player3 INT,
    player4 INT,
    player5 INT,
    UNIQUE(player1, player2, player3, player4, player5)
);

-- create master defense table
create table master_defense (
	lineup_id INT PRIMARY KEY, 
	-- defending data 
    level1_scores_vs_man INT,
    level1_att_vs_man INT,
    level2_scores_vs_man INT,
    level2_att_vs_man INT,
    level3_scores_vs_man INT,
    level3_att_vs_man INT,
    transition_level1_scores INT,
    transition_level1_att INT,
    transition_level2_scores INT,
    transition_level2_att INT,
    transition_level3_scores INT,
    transition_level3_att INT,
    level1_scores_vs_zone INT,
    level1_att_vs_zone INT,
    level2_scores_vs_zone INT,
    level2_att_vs_zone INT,
    level3_scores_vs_zone INT,
    level3_att_vs_zone INT,
    -- link all stats to lineups table
    FOREIGN KEY (lineup_id) REFERENCES lineups(lineup_id)
);

-- create master offense table
create table master_offense (

	lineup_id INT PRIMARY KEY, 
	-- scoring data
    level1_scores_vs_man INT,
    level1_att_vs_man INT,
    level2_scores_vs_man INT,
    level2_att_vs_man INT,
    level3_scores_vs_man INT,
    level3_att_vs_man INT,
    transition_level1_scores INT,
    transition_level1_att INT,
    transition_level2_scores INT,
    transition_level2_att INT,
    transition_level3_scores INT,
    transition_level3_att INT,
    level1_scores_vs_zone INT,
    level1_att_vs_zone INT,
    level2_scores_vs_zone INT,
    level2_att_vs_zone INT,
    level3_scores_vs_zone INT,
    level3_att_vs_zone INT,
    level1_scores_on_play1 INT,
    level2_scores_on_play1 INT,
    level3_scores_on_play1 INT,
    poss_running_play1 INT,
    -- link all stats to lineups table 
     FOREIGN KEY (lineup_id) REFERENCES lineups(lineup_id)
);

-- create master general stats
create table master_general (
	
	lineup_id INT PRIMARY KEY,
	-- general stats
	time_seconds INT,
	PF INT,
	PA INT,
	turnovers INT,
	TO_forced INT,
	DR INT,
	DRA INT,
	off_rebounds INT,
	ORA INT,
	3PM INT,
	3PA INT,
	-- link all stats to lineups table
	FOREIGN KEY (lineup_id) REFERENCES lineups(lineup_id)
); 



