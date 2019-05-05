-- Get the total weight of all fish caught in the lake mead tourney

SELECT SUM(f.weight) FROM people AS p
JOIN people_tournament_fish AS ptf ON (p.id=ptf.participant_id)
JOIN tournament AS t ON (t.id=ptf.tournament_id)
JOIN fish AS f ON (f.id=ptf.fish_id)
WHERE t.id = 6;
