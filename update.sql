-- update someones name that had updated

UPDATE people
SET firstname = aegon, lastname = targaryen
WHERE firstname like 'jon' AND lastname like 'snow';
