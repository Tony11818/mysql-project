-- merge the participants and their fish for each tourney in one table
CREATE Algorithm = merge view participantfish AS
SELECT p.firstname, p.lastname,l.lakename, t.tournament_date, f.weight
FROM people AS p
JOIN people_tournament_fish AS ptf ON(p.id=ptf.participant_id)
JOIN tournament AS t ON (t.id=ptf.tournament_id)
JOIN fish AS f ON (f.id=ptf.fish_id)
JOIN lake AS l ON (l.id=t.lake_id);

--merge admins and which tourney in one table for a quck view
CREATE Algorithm = merge view admintotourney AS
SELECT a.firstname, a.lastname, l.lakename, t.tournament_date
FROM people AS a
JOIN tournament AS t ON (a.id=t.admin_id)
JOIN lake AS l ON (l.id=t.lake_id);

------------------
------------------
-- REPORTS
------------------
------------------

-- get all the fish for a tournament
delimiter EOF
CREATE PROCEDURE tourneysFish(tourneyId INT)
BEGIN
  SELECT f.weight,ptf.participant_id FROM tournament AS t
  JOIN people_tournament_fish AS ptf ON (ptf.tournament_id = t.id)
  JOIN fish AS f ON (f.id = ptf.fish_id)
  WHERE ptf.tournament_id = tourneyId;
END EOF
delimiter ;

-- example to run:
-- call tourneysFish(1);

-- get all the fish for a participant in a tournament
delimiter EOF
CREATE PROCEDURE participantsFish(participant INT,tourneyId INT)
BEGIN
  SELECT f.weight FROM tournament AS t
  JOIN people_tournament_fish AS ptf ON (ptf.tournament_id = t.id)
  JOIN fish AS f ON (f.id = ptf.fish_id)
  JOIN people AS p ON (p.id = ptf.participant_id)
  WHERE ptf.tournament_id = tourneyId AND ptf.participant_id = participant;
END EOF
delimiter ;

-- example to run:
-- call participantsFish(12,1);
