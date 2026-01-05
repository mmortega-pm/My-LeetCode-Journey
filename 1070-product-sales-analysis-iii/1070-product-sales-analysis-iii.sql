SELECT product_id, year AS first_year, quantity, price #Pull in all requested values and rename year.
FROM Sales #Use our single table.
WHERE (product_id, year) IN ( #Use a where statement to ensure we're pullin gthe quantity and price matching the min year, otherwise we might pull in the wrong value for quantity and price.
    SELECT product_id, MIN(year) #Pull in the product ID and min year from the Sales table.
    FROM Sales
    GROUP BY product_id #Group by the product ID, this will ensure the WHERE works correctly.
);