SELECT class #Provide the class, as requested.
FROM Courses #Use our single table.
GROUP BY class #Group the result by class.
HAVING COUNT(student) >= 5; #Count the grouping of students per class and filter for only those with 5 or more students.