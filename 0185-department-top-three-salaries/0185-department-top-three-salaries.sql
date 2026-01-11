SELECT Department, Employee, Salary #Deliver requested values.
FROM (
    SELECT #Rank names by salary, use Dense Rank to not skip any ranks but equal the rank on ties.
        d.name AS Department,
        e.name AS Employee,
        e.salary AS Salary,
        DENSE_RANK() OVER (PARTITION BY d.name ORDER BY e.salary DESC) as salary_rank
    FROM Employee e
    JOIN Department d ON e.departmentId = d.id #Join that with the Department table to bring in the department.
) AS ranking_table
WHERE salary_rank <= 3; #Give me the Top 3 ranks per Dept.