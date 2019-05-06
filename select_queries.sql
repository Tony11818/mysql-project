-------------
-------------
-- 3 Selects I counted my 4th select in my function getTotalFishWeight
-------------
-------------

--Will pull all of the information for a participant for all of the tournaments
SELECT p.firstname, p.lastname, p.ismember, l.lakename, t.tournament_date, t.starttime, t.endtime, r.winner, f.weight FROM people AS p
JOIN people_tournament_fish AS ptf ON (p.id=ptf.participant_id)
JOIN tournament AS t ON (t.id=ptf.tournament_id)
JOIN fish AS f ON (f.id=ptf.fish_id)
JOIN lake AS l ON (l.id=t.lake_id)
JOIN results AS r ON(r.tournament_id=t.id)\G

--Will pull the information for a participance on the given tournament id #
SELECT CONCAT(p.firstname,' ',p.lastname) AS "fishermen", l.lakename, l.state, f.weight AS "fish weight" FROM people AS p
JOIN people_tournament_fish AS ptf ON (p.id=ptf.participant_id)
JOIN tournament AS t ON (t.id=ptf.tournament_id)
JOIN fish AS f ON (f.id=ptf.fish_id)
JOIN lake AS l ON (l.id=t.lake_id)
WHERE t.id = 1\G

-- Will show which admin is in charge of which tournament
SELECT CONCAT(a.firstname,' ',a.lastname) AS 'admin', l.lakename, l.state, t.tournament_date FROM people AS a
JOIN tournament AS t ON (a.id=t.admin_id)
JOIN lake AS l ON (l.id=t.lake_id)\G

-- subquery 1, get the admin for the tourney
SELECT * FROM people WHERE id IN (
  SELECT admin_id FROM tournament)\G

-- subquery 2, get the winner's name for the tournament
SELECT * FROM people WHERE id IN (
  SELECT people_id FROM results)\G
