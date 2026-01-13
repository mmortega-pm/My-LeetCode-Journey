SELECT user_id, name, mail
FROM Users
WHERE 
    -- Step 1: Check the structure (Letters, numbers, @leetcode.com)
    mail REGEXP '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode\\.com$'
    
    AND 
    
    -- Step 2: Force the ending to be lowercase using a Binary Cast
    -- This avoids the "Collation Error" you just saw.
    CAST(mail AS BINARY) LIKE '%@leetcode.com';