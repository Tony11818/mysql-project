CREATE Algorithm = participantfish AS
SELECT p.firstname, p.lastname,l.lakename, t.tournament_date, f.weight
FROM people AS p
JOIN people_tournament_fish AS ptf ON(p.id=ptf.participant_id)
JOIN tournament AS t ON (t.id=ptf.tournament_id)
JOIN fish AS f ON (f.id=ptf.fish_id)
JOIN lake AS l ON (l.id=t.lake_id)\G
