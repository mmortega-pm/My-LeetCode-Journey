SELECT Manager.name #Deliver the Manager name.
FROM Employee AS Manager #Start off with a self join using the Employee table as the manager report.
JOIN Employee AS Report #Join it with the same report which will be titled Report.
ON Manager.id = Report.managerid #We're turning using the managerid on the first report as our key, effectively treating every name on the report as a manager and then tying back to the same report and creating a line for each direct report tied to a line with the manager.
GROUP BY Manager.id, Manager.name #We're then ensuring to group this by id and Manager name since we'll have a few and need to filter afterwords.
HAVING COUNT(Report.id) >= 5; #Then we only want those managers with 5 or more. We're using Having since we want to filter after the grouping, not before hand like the WHERE would.