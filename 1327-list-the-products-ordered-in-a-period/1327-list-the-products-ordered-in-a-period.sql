SELECT P.product_name, SUM(O.unit) AS unit #Pull in values from both tables. Give us the total sum of units, since we'll be grouping an filtering for 11/2020.
FROM Products AS P #Initial the first table.
LEFT JOIN Orders AS O #Left Join and initial second table.
ON P.product_id = O.product_id #Connect via the Product ID.
WHERE O.order_date LIKE '2020-02%' #Ensure the order date matches the requested criteria with the LIKE function.
GROUP BY P.product_name #Group by Product Name.
HAVING unit >= 100; #Make sure the unit count is 100 or more, as requested.