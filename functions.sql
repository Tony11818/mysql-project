-- function to get the total weight of all the fish in a passed in tourney
delimiter EOF
CREATE function getTotalFishWeight(tourneyId INT)
RETURNS DECIMAL(4,2)
READS SQL DATA
BEGIN
  DECLARE totalWeight DECIMAL(4,2);
  SELECT SUM(f.weight) INTO totalWeight FROM people AS p
  JOIN people_tournament_fish AS ptf ON (p.id=ptf.participant_id)
  JOIN tournament AS t ON (t.id=ptf.tournament_id)
  JOIN fish AS f ON (f.id=ptf.fish_id)
  WHERE t.id = tourneyId;
  RETURN(totalWeight);
END EOF
delimiter ;

-- get the winner of the tournament
delimiter EOF
CREATE function getTourneyWinner(tourneyId INT)
RETURNS VARCHAR(110)
READS SQL DATA
BEGIN
  DECLARE winner VARCHAR(110);
  SELECT CONCAT(p.firstname,' ',p.lastname) INTO winner FROM people AS p
  JOIN people_tournament_fish AS ptf ON (p.id=ptf.participant_id)
  JOIN tournament AS t ON (t.id=ptf.tournament_id)
  JOIN fish AS f ON (f.id=ptf.fish_id)
  WHERE t.id = tourneyId
  ORDER BY f.weight DESC LIMIT 1;
  RETURN(winner);
END EOF
delimiter ;
