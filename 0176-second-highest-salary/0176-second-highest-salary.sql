SELECT MAX(salary) AS SecondHighestSalary #Pull the largest salary after the subquery, this pulls the second largest since the subquery below pulls our the largest salary through filtering which happens first in querying order.
FROM Employee #Use out single table
WHERE salary < (SELECT MAX(salary) #Filter on a subquery. Pull in the largest salary and have the filter pull in anything smaller than that.
    FROM Employee); #Use the same table.