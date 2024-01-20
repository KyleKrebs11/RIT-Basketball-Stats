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