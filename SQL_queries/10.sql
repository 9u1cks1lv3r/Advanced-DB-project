/*Which landlord can give rent housing which floor of housing is lower than the average of the floor of housing in Almaty?  */
SELECT l.landlord_id FROM Landlord l inner join housing h on a.landlordId = b_landlordId WHERE floorOfHousing < (SELECT avg(floorOfHousing) FROM housing WHERE city = “Almaty”)

