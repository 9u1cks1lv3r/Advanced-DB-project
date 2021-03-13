/*Which landlords have a power of attorney rating greater than the average rating of all landlords whose house is from Almaty?*/
SELECT landlord_Id FROM Landlord WHERE rating > (SELECT avg(a.rating) FROM Landlord a inner JOIN housing b ON a.landlord_Id = b.landlord_Id WHERE b.city = ‘Алматы’);

