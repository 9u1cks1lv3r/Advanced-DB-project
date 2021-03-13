/*Which landlords rent apartments in Almaty?*/
SELECT DISTINCT a.* FROM Lanlord a INNER JOIN housing b ON a.landlord_Id = b.landlord_Id;

