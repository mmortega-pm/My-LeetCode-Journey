# List A: The products that have a price history on/before the date
SELECT product_id, new_price AS price
FROM Products
WHERE (product_id, change_date) IN (
    SELECT product_id, MAX(change_date)
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
)

UNION

# List B: The products that didn't exist yet (Default Price 10)
SELECT product_id, 10 AS price
FROM Products
WHERE product_id NOT IN (
    SELECT DISTINCT product_id 
    FROM Products 
    WHERE change_date <= '2019-08-16'
)