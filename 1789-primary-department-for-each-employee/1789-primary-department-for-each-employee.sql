SELECT employee_id, department_id # Pull both requested values.
FROM Employee #Use the provided table.
WHERE primary_flag = 'Y' #Filter for everyone who has more than one department ID and get us the ones flagged as Y.
UNION #Let's do a Union with the same table but look for the missing employees that don't have a single Y.
SELECT employee_id, department_id #Pull in the same values for the sake of the Union.
FROM Employee #Use the same table
GROUP BY employee_id #We must do a grouping since we'll be using the Having function.
HAVING COUNT(employee_id) = 1; #Filter for all the employees with a single line, that's their main by elimination. Any duplicates will be eliminated by the UNION.