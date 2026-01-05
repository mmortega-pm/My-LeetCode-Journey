SELECT sell_date, COUNT(DISTINCT product) AS num_sold, GROUP_CONCAT(DISTINCT product ORDER BY product ASC SEPARATOR ',') AS products # Pull in the sell date along with how many different products were sold and then do a concatenation of the group ot show those different products.
FROM Activities #Use our single table.
GROUP BY sell_date #Group by sell date.
ORDER BY sell_date; #Order by it too.