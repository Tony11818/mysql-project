-- Jorah Mormont DIED and will not be a member anymore
DELETE FROM `payment`
WHERE participant_id = 18 AND tournament_id = 1;

-- Fish disqualified weight not visible in image
DELETE FROM `fish`
WHERE id = 39;

-- update someones name that had updated

UPDATE people
SET firstname = aegon, lastname = targaryen
WHERE firstname like 'jon' AND lastname like 'snow';

----------------
----------------
--2nd update is in the trigger -- trigger.sql
----------------
----------------

----------------
----------------
--both inserts are in the Trigger -- trigger.sql
----------------
----------------
