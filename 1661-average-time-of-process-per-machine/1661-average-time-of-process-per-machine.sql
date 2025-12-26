SELECT A1.machine_id, ROUND(AVG(A2.timestamp - A1.timestamp),3) AS processing_time #Provide requested fields. Use a SELF JOIN. Use round on the avg delta of duration from start to finish to demonstrate processing time. This will be grouped by machine and process.
FROM Activity AS A1 #Table to use.
JOIN Activity AS A2 #Implement the self join.
ON A1.machine_id = A2.machine_id AND #Ensure that for the start and finish, the machine being looked at matches up.
A1.process_id = A2.process_id AND #ensure the process matches up too.
A1.activity_type = 'start' AND #focus on the start date when it come to table A1
A2.activity_type = 'end' #focus on the finish date when it comes to table A2
GROUP BY A1.machine_id; #Group by machine, as requested.