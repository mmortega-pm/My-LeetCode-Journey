SELECT mgr.employee_id, mgr.name, COUNT(emp.employee_id) AS reports_count, ROUND(AVG(emp.age)) AS average_age # Provide the values for the manager as the main focus. For the reports count, use the emp table and same for the age, round out and round to nearest integer.
FROM Employees AS emp #Do a self join.
JOIN Employees AS mgr #Continue self join.
ON emp.reports_to = mgr.employee_id #Join the names based on the manager and who the people report to.
GROUP BY mgr.employee_id #Group my Manager ID's.
ORDER BY mgr.employee_id; #Order by the same ID.