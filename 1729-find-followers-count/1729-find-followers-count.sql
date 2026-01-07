SELECT user_id, COUNT(follower_id) AS followers_count #Collect required field. Count the followers too.
FROM Followers #Use our single table.
GROUP BY user_id #Group by user id, as requested.
ORDER BY user_id ASC; #Order by the same field, ascending.