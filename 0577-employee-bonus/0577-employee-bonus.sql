SELECT E.name, B.bonus #Return requested values, one from each table.
FROM Employee AS E #Reference Employee table for names.
LEFT JOIN Bonus AS B #Join with Bonus table for bonus, but with Employee as the main table to ensure bringing in NULL values bonuses.
ON E.empId = B.empId #Use empId as the common key.
WHERE B.bonus < 1000 OR B.bonus IS NULL; #Filter for any bonus below 1000 and also pull in NULL's too.