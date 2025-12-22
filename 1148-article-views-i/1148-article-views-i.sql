SELECT DISTINCT(author_id) AS id #Provide the author id as id, per the instructions.
FROM Views #Use the Views table.
WHERE author_id = viewer_id #Ensure that the author id is the same person viewing the article, their own article.
ORDER BY id ASC; #Show the artists that did so in ascending order.