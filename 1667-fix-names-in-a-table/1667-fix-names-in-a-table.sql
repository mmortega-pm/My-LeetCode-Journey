SELECT user_id, CONCAT(UPPER(SUBSTR(name,1,1)),LOWER(SUBSTR(name,2))) AS name #Return user id and the name after cleaning up. Capitalize the first character in the String and then undercase the rest of the name; essentially normalizing the capitalization of the names.
FROM Users #Reference the table we're using, Users.
ORDER BY user_id; #Order by user id, as requested.