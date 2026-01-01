DELETE p1 #Delete from the alias p1
FROM Person AS p1 #Use the available table to set up a self join
JOIN Person AS p2 #Pull in a second copy so that we can effectively self compare and delete the rows with the WHERE statement off of p1.
ON p1.email = p2.email #JOIN via the emails.
WHERE p1.id > p2.id; #Delete the lines where the p1 ID larger than the p2 ID? We want the smaller one to stay. The system will then print the table to confirm (not included here).