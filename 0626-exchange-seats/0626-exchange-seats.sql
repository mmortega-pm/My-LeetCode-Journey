SELECT
    CASE
        WHEN id%2=0 THEN id - 1 #All even numbers lead by 1.
        WHEN id = (SELECT COUNT(id) FROM Seat) THEN id #Do not      alter the last number, per the rules. If it is even, it's already been adjusted.
        else id + 1 #Lag all the odd numbers by 1.
    END AS id, #Name variable
    student
FROM Seat
ORDER BY id ASC; #Order as requested.