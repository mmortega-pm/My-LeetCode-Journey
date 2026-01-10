#Due two unions to combine three queries where we title each one under a category based on the income, as requested.
#First, low salary group (<20K)
SELECT 'Low Salary' AS category, COUNT(*) AS accounts_count FROM Accounts WHERE income < 20000
UNION
#Second, Average salary group (20K-50K)
SELECT 'Average Salary', COUNT(*) FROM Accounts WHERE income >= 20000 AND income <= 50000
UNION
#Third, High salary group (>50K)
SELECT 'High Salary', COUNT(*) FROM Accounts WHERE income > 50000;