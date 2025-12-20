SELECT name #Call the customer name only.
FROM Customer #We're referencing the Customer Table.
WHERE referee_id != 2 OR referee_id IS NULL; #The customers should not have been referred by cusotmers with id 2. We also want any names of people who were not referred at all (NULL).