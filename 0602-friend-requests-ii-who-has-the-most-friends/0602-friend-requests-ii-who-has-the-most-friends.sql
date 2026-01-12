SELECT id, COUNT(*) AS num #Provide requested value.
FROM ( #Use as source table a combination of UNION ALL with our single table. One version with the requester ID and another with the Accepter ID since they're both friends now. This will give us everyone's total count.
    SELECT requester_id AS id
    FROM RequestAccepted

    UNION ALL

    SELECT accepter_id AS id
    FROM RequestAccepted
) AS all_friends
GROUP BY id #Group by the id
ORDER BY num DESC #Descending order
LIMIT 1; #Only show one result.