SELECT DISTINCT l1.num AS ConsecutiveNums # Give me a single result per number.
FROM Logs AS l1 #Triple Join
JOIN Logs AS l2 ON l1.id = l2.id - 1 #Next Join to to match l2 number (next in line) to the right of l1.
JOIN Logs AS l3 ON l2.id = l3.id - 1 #The same but with l3 and l2. This way you'll see all three numbers beside each other.
WHERE l1.num = l2.num AND l2.num = l3.num; #We can then filter for row where all three are the same and, by definition, in order.