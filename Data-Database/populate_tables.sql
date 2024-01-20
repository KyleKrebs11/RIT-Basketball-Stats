/*
File: populate_tables.sql

Description:
Fills the lookup tables with information such as types of shots,
types of outcomes, opponents etc. 

Authors: 
Nick Creeley 
Kyle Krebs

*/

USE basketball_stats;

-- add shot types 
INSERT INTO shottypes (ShotType) VALUES
('To Basket'),
('Dribble Jumper'),
('No Dribble Jumper'),
-- for post moves 
('Hook Shot'),
('Drop Step');

-- populate outcomes 
INSERT INTO playoutcomes (Outcome) VALUES
-- Ma = make, mi = miss
('2pmi'),
('2pma'),
('3pma'),
('3pmi'),
('Foul'),
('Turnover');

-- populate opponents
INSERT INTO opponents (Opponent) VALUES
  ('Wells'),
  ('St. John Fisher'),
  ('Nazareth'),
  ('Alfred State'),
  ('Bard College'),
  ('Union College'),
  ('Gallaudet'),
  ('Elmira'),
  ('Rochester'),
  ('Hobart'),
  ('RPI'),
  ('Skidmore'),
  ('Vassar'),
  ('Ithaca'),
  ('Clarkson'),
  ('St. Lawrence');

-- populate playdescriptions next 

INSERT INTO playdescriptions (PlayType, Direction, Play_Action) VALUES
  -- Spot Ups 
  ('Spot Ups', 'Left','Drive'),
  ('Spot Ups', 'Right','Drive'),
  ('Spot Ups', 'Straight','Drive'),
  ('Spot Ups',NULL,'Shot'),

  -- Pick N Rolls
  ('PNR', 'Right', 'Off'),
  ('PNR', 'Right', 'Away'),
  ('PNR', 'Left', 'Off'),
  ('PNR', 'Left', 'Away'),
  ('PNR', 'High', 'Off'),
  ('PNR', 'High', 'Away'),

  -- Miscellaneous
  ('Misc', NULL, NULL),

  -- Iso Plays
  ('Iso', 'Top', NULL),
  ('Iso', 'Right', NULL),
  ('Iso', 'Left', NULL),

  -- Post Ups
  ('Post', 'Right', 'Face Up'),
  ('Post', 'Right', 'Dribble'),
  ('Post', 'Left', 'Face Up'),
  ('Post', 'Left', 'Dribble'),
  ('Post', 'Middle', 'Face Up'),
  ('Post', 'Middle', 'Dribble'),

-- Types of Cuts
  ('Cuts', NULL, 'Basket'),
  ('Cuts', NULL, 'Screen'),
  ('Cuts', NULL, 'Flash'),
  
-- Transition plays
  ('Transition', NULL, 'Ball Handler'), 
  ('Transition', NULL, 'Left Wing'),
  ('Transition', NULL, 'Right Wing'),
  ('Transition', NULL, 'Trailer'),
  ('Transition', NULL, 'Leak Outs'),
  ('Transition', NULL, 'First Middle'),
  
-- Off Ball screens
  ('Off Screens', 'Left', 'Straight'),
  ('Off Screens', 'Left', 'Flare'),
  ('Off Screens', 'Left', 'Curl'),
  ('Off Screens', 'Right', 'Straight'),
  ('Off Screens', 'Right', 'Flare'),
  ('Off Screens', 'Right', 'Curl'),
  
-- hand offs
  ('Hand Offs', 'Top', 'Dribble'),
  ('Hand Offs', 'Top', 'Stationary'),
  ('Hand Offs', 'Right', 'Dribble'),
  ('Hand Offs', 'Right', 'Stationary'),
  ('Hand Offs', 'Left', 'Dribble'),
  ('Hand Offs', 'Left', 'Stationary'),
  
-- PnR Roll Man
  ('P&R Roll Man', 'Left', 'Pop'),
  ('P&R Roll Man', 'Right', 'Pop'),
  ('P&R Roll Man', NULL, 'Pop'),
  ('P&R Roll Man', NULL, 'Roll');



  
