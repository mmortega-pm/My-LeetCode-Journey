SELECT V.customer_id, COUNT(V.visit_id) AS count_no_trans #Provide the customers and a count of all their visits.
FROM Visits AS V #Use our Visits table for this data.
LEFT JOIN Transactions AS T #Join it with the transactions so that we can know what transactions happened on each visit.
ON V.visit_id = T.visit_id #Join on the visit ID.
WHERE T.transaction_id IS NULL #Filter for only visits where a customer had 0 transactions AKA Null.
GROUP BY V.customer_id; #Group by Customers.