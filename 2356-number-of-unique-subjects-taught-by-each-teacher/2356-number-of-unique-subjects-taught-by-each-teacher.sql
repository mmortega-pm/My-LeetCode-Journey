SELECT teacher_id, COUNT(DISTINCT(subject_id)) AS cnt #Provide requested value and calculate for subject count (unique).
FROM Teacher #Use our one table.
GROUP BY teacher_id; #Group by teacher, as mentioned in instructions.