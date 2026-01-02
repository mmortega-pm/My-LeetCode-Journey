SELECT employee_id #Provide requsted field.
FROM Employees #Use the single table.
WHERE salary < 30000 #Filter for people with less than 30K.
AND manager_id IS NOT NULL #Make sure that there is a value for mgr id. This cannot be empty, per the instructions
AND manager_id NOT IN ( SELECT employee_id FROM Employees) #Lastly, use a subquery to compare the mgr id's with all of the employee id's. The manager field doesn't get cleansed, but the employee id does. When a manager leaves, their data is deleted off of the table.
ORDER BY employee_id; #Order by employee id as requested, for good measure.