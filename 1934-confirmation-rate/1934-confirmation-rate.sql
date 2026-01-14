SELECT S.user_id, ROUND(IFNULL(AVG(c.action = 'confirmed'), 0), 2) AS confirmation_rate #Give us the users and use the AVG function to count the Trues and Falses and force the avg this way. Round to 2 decimals.
FROM Signups AS S #User our table to LEFT Join and pull in the confirmations.
LEFT JOIN Confirmations AS C
ON S.user_id = C.user_id #Join on User ID
GROUP BY S.user_id; #Group by User ID