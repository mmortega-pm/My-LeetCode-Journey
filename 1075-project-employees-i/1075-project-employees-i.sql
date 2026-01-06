SELECT project_id, ROUND(AVG(E.experience_years),2) AS average_years #Provide requested values including avg years, round to 2 decimal points.
FROM Project AS P #Left Join to pull in Employee table.
LEFT JOIN Employee AS E #Continue Left Join.
ON P.employee_id = E.employee_id #Join on employee id.
GROUP BY project_id; #Group by project, as requested.