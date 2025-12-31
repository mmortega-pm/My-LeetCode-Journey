SELECT MAX(num) AS num #Filter for the MAX value in our column.
FROM ( #Commence a subquery
    SELECT num #Call the same field so we can pre filter the data before the MAX function.
    FROM MyNumbers #Call the table.
    GROUP BY num #Group all the nums so that we can use the HAVING function.
    HAVING COUNT(num)=1 #Filter out any repeats before we do the MAX function, as requested.
) AS unique_numbers; #Name the Table (SQL requirement)