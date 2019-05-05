-- Jorah Mormont DIED and will not be a member anymore
DELETE FROM `payment`
WHERE participant_id = 18 AND tournament_id = 1;

-- Fish disqualified weight not visible in image
DELETE FROM `fish`
WHERE id = 39;
