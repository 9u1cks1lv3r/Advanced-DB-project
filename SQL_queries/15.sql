/*Which profiles left the landlord report with ID equal to 4?*/
SELECT a.profile_Id FROM Profile a INNER JOIN Review b ON a.profile_Id = b.profile_Id INNER JOIN Landlord c ON b.lanlord_Id = c.lanlord_Id WHERE c.lanlord_Id = 4;

