/*What housing is the oldest ?*/
SELECT * FROM housing WHERE year = (SELECT max(year) FROM housings)

