-- this trigger updates the winner in the results tables for biggest fish
delimiter $
CREATE TRIGGER updateTourneyWinner AFTER INSERT on people_tournament_fish
FOR EACH ROW BEGIN
    -- get the original leader in the tourney
    DECLARE winnerId INT;
    DECLARE winningFishWeight DECIMAL(4,2);
    DECLARE newFishWeight INT;
    SELECT p.id,f.weight INTO winnerId,winningFishWeight
    FROM people AS p
    JOIN people_tournament_fish AS ptf ON (p.id=ptf.participant_id)
    JOIN tournament AS t ON (t.id=ptf.tournament_id)
    JOIN fish AS f ON (f.id=ptf.fish_id)
    WHERE t.id = NEW.tournament_id
    ORDER BY f.weight DESC LIMIT 1;
    -- get the new fish weight
    SELECT weight INTO newFishWeight
    FROM fish WHERE id=NEW.fish_id;
    -- check if its a bigger fish
    IF newFishWeight > winningFishWeight THEN
      UPDATE results SET people_id = NEW.participant_id
      WHERE tournament_id = NEW.tournament_id;
    END IF;
END$
delimiter ;

-- test by adding new fish and adding new fish and connecting that fish to Sansa in the first tourney
INSERT INTO fish (weight) VALUES (10.6);
INSERT INTO people_tournament_fish (participant_id,tournament_id,fish_id)
VALUES (12,1,79);

----------------
----------------
-- TRIGGER #2
----------------
----------------

-- check if user paid
SELECT * FROM payment where participant_id = 12 AND tournament_id = 1;

-- trigger 2, check if the participant has paid for the tournament before
-- they can add their fish to that tournament
delimiter $
CREATE TRIGGER isYourTourneyPaid BEFORE INSERT on people_tournament_fish
FOR EACH ROW BEGIN
  DECLARE tourneyPaid TINYINT;
  DECLARE membershipPaid TINYINT;
  SELECT paid_for_tournament,membership_paid INTO tourneyPaid,membershipPaid
  FROM payment WHERE participant_id = NEW.participant_id AND tournament_id = NEW.tournament_id;
  IF tourneyPaid=0 OR membershipPaid=0 THEN
    set NEW.fish_id = NULL;
  END IF;
END$
delimiter ;

-- test
update payment set paid_for_tournament = 0,membership_paid = 0
WHERE participant_id = 12 AND tournament_id = 2;
-- add that fish
call addFish(20.5,12,2);
