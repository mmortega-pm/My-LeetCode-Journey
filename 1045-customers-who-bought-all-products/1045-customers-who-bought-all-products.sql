SELECT customer_id #Pull in the requested value.
FROM Customer #Pull in from the Customer Table
GROUP BY customer_id #Group by our variable
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(*) FROM Product); #Filter for unique products purchased by customer that shows up against the total amound of existing products. These numbers should match up.