SELECT w1.id #Return the id, as requested.
FROM Weather AS w1 #We're using the Weather table.
JOIN Weather AS w2 #We're creating a join with the same table to compare the temp against the previous date. Use a JOIN since a LEFT JOIN would include the oldest date with no data to be had from the previous date. 
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1 #We're going to match these two tables only when the left (today's date) matches the same date on the copy of the table, minus 1 (yesterday). Today - today = 0. Today - yesterday = 1.
WHERE w1.temperature > w2.temperature; #Now that we have today's temp and yesterday's temp on a table, let's compare teh values and return the appropriate ID's.