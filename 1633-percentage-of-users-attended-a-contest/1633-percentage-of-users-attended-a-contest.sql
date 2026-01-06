SELECT contest_id, ROUND((COUNT(user_id)/(SELECT COUNT(user_id) FROM Users)*100.0),2) AS percentage #Provide contest ID and also the percentage. Do a subquery for the total amount of existing users which is in another table.
FROM Register #Use the Register table for the contest ID's. 
GROUP BY contest_id #Group by this same variable.
ORDER BY percentage DESC, contest_id ASC; #Order by percentage. If there's a tie, order the tie by contest id, asc; as requested.