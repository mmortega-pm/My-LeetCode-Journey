SELECT S.student_id, S.student_name, SUB.subject_name, COUNT(E.subject_name) AS attended_exams #Provide required values. Use a Count for how many tests per subject per student.
FROM Students AS S #Start wtih the Students table.
CROSS JOIN Subjects AS SUB #Cross Join so that we can demonstrate not just the subjects were tests were taken, but also the ones with 0. A left join would not include the 0's down the line.
LEFT JOIN Examinations AS E #With the cross join, we can now tie  in the examinations.
ON S.student_id = E.student_id AND SUB.subject_name = E.subject_name #Join them via the student ID but also via the subject so that we can show examinations per student per subject.
GROUP BY S.student_id, SUB.subject_name #Group by these two values so that the count captures the right number.
ORDER BY S.student_id, SUB.subject_name; #Order  by student and then subject.