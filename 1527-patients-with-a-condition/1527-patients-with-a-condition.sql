SELECT patient_id, patient_name, conditions #Provide the three values requested
FROM Patients #Pull them from the single table.
WHERE conditions LIKE 'DIAB1%' #Filter via conditions for entries starting with Type I Diabetes.
OR conditions LIKE '% DIAB1%'; #Filter for other instances where it's not at the beginning. But always, ensure that there is nothing or a space before the keyword. 