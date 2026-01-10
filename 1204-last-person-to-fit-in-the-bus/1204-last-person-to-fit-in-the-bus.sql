SELECT person_name #Provide the requested value
FROM (
    SELECT #Create a table with a running total orderd by turn.
        person_name, 
        turn, 
        SUM(weight) OVER (ORDER BY turn) AS running_total
    FROM Queue
) t
WHERE running_total <= 1000 #Filter that table so that we only get 1k or less on RT.
ORDER BY running_total DESC #Order it so we get the largest as the first one.
LIMIT 1; #Remove the rest.