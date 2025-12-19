SELECT product_id #Call Product ID's only.
FROM Products #We're using the Products table.
WHERE low_fats = 'Y' AND recyclable = 'Y'; #Filter for exclusively products that are low fat and recyclable.