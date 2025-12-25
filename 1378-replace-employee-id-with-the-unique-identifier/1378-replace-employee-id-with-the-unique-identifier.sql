SELECT EU.unique_id, E.name #Produce the two values requested in the appropriate order.
FROM Employees AS E #Use Employees as the first table.
LEFT JOIN EmployeeUNI AS EU #Use a LEFT JOIN so that we can receive NULL's for missing unique id's. 
ON E.id = EU.id; #Use the id field to connect both tables.