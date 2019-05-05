SELECT p.firstname, p.lastname, p.ismember, l.lakename, t.tournament_date, t.starttime, t.endtime, r.winner, f.weight FROM people AS p
JOIN people_tournament_fish AS ptf ON (p.id=ptf.participant_id)
JOIN tournament AS t ON (t.id=ptf.tournament_id)
JOIN fish AS f ON (f.id=ptf.fish_id)
JOIN lake AS l ON (l.id=t.lake_id)
JOIN results AS r ON(r.tournament_id=t.id)\G

SELECT a.firstname + ' ' + a.lastname AS 'admin', l.lakename, l.state, p.firstname, p.lastname, f.weight AS 'Fish weight' FROM people AS a
JOIN people_tournament_fish AS ptf ON (p.id=ptf.admin_id)
JOIN lake AS l ON (l.id=t.lake_id)
JOIN people AS p ON (p.id=ptf.participation_id)
JOIN fish AS f ON (f.id=ptf.fish_id)\G
