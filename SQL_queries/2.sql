/*What housing has a bigger price where  rent type is by hours?*/
SELECT * FROM housing WHERE price = (SELECT max(price) FROM housings) AND rent_type = “По часам”;

