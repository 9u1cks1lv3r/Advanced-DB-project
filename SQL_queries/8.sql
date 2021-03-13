/*How many housing will have balcony, bathroom will be “совмещенный” and type of rent will be by month?*/
SELECT COUNT(*) FROM housing WHERE balcony = 1 AND bathroom = “совмещенный” AND rent_type = “Помесячно”;

