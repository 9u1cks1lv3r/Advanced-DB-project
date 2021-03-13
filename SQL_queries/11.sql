/*What is the average price of apartments whose height is higher than the average height of all apartments?*/
SELECT avg(price) FROM housing WHERE cellingHeight > (SELECT avg(price) FROM housing);

