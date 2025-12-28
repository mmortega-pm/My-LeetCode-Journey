SELECT id, movie, description, rating #Provide requested fields
FROM Cinema #Use the Cinema table
WHERE MOD(id,2) = 1 AND #Filter for odd numbered id's by dividing by two and looking for results with a remainder of 1.
description != 'boring' #Filter by the second criterium, the description must not be 'boring'.
ORDER BY rating DESC; #Put in descending order based on rating.