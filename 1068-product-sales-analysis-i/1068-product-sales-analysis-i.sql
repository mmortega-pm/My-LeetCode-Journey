SELECT P.product_name, S.year, S.price #Return the values requested. 1 from the Product Table and 2 from the Sales table.
FROM Sales AS S #Since the focus is on a per sale_id basis, we'll focus on that table for the LEFT JOIN.
LEFT JOIN Product AS P #LEFT JOIN with Product table, simplify the naming for both.
ON S.product_id = P.product_id #Join via the common product_id