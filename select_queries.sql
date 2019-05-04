SELECT p.firstname, p.lastname, p.ismember, l.lakename, t.tournament_date, t.starttime, t.endtime, r.winner, f.weight
FROM people AS p
JOIN people_tournament_fish AS ptf  ON (p.id= ptf.participant_id)
JOIN lake AS l ON (ptf.lake_id= l.id)
JOIN tournament AS t (ptf.tournament_id= t.id)
JOIN fish AS f (ptf.fish_id= f.id)
JOIN results AS r (t.id= r.tournament_id);
