-- insert a new fish
INSERT INTO fish (weight,upload_date)
VALUES (5.6,NOW());

-- procedure to add new fish
-- example syntax:
-- call addFish(10.6,12,1);
delimiter EOF
CREATE PROCEDURE addFish(fishWeight DECIMAL(4,2),participantId INT, tourneyId INT)
BEGIN
  DECLARE lastInsertId INT;
  INSERT INTO fish (weight,upload_date) VALUES (fishWeight,NOW());
  SELECT LAST_INSERT_ID() INTO lastInsertId;
  INSERT INTO people_tournament_fish (participant_id,tournament_id,fish_id)
  VALUES (participantId,tourneyId,lastInsertId);
END EOF
delimiter ;


-- select most recent tourney
SELECT * FROM tournament WHERE tournament_date < current_date ORDER BY tournament_date DESC limit 1;

-- procedure to schedule the most recent tournament for next year
delimiter EOF
CREATE PROCEDURE autoScheduleTourney()
BEGIN
  DECLARE mostRecentTourney INT;
  DECLARE recentTourneyDate date;
  DECLARE recentTourneyStart time;
  DECLARE recentTourneyEnd time;
  DECLARE nextTourneyDate date;
  DECLARE recentTourneylake INT;
  SELECT id,tournament_date,starttime,endtime,lake_id
  INTO mostRecentTourney,recentTourneyDate,recentTourneyStart,recentTourneyEnd,recentTourneylake
  FROM tournament WHERE tournament_date < current_date ORDER BY tournament_date DESC limit 1;
  set nextTourneyDate = DATE_ADD(recentTourneyDate, INTERVAL 1 YEAR);
  INSERT INTO tournament (tournament_date,starttime,endtime,lake_id)
  VALUES (nextTourneyDate,recentTourneyStart,recentTourneyEnd,recentTourneylake);
END EOF
delimiter ;
