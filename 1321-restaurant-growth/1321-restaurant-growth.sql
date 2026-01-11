/* Step 1: Pre-calculate the total amount spent PER DAY */
WITH DailyTotals AS (
    SELECT visited_on, SUM(amount) as daily_amount
    FROM Customer
    GROUP BY visited_on
)

/* Step 2: Calculate the Rolling Average over 7 days */
SELECT
    visited_on,
    
    /* The Sum for the last 7 days */
    SUM(daily_amount) OVER (
        ORDER BY visited_on
        ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
    ) AS amount,
    
    /* The Average for the last 7 days */
    ROUND(
        AVG(daily_amount) OVER (
            ORDER BY visited_on
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ), 2
    ) AS average_amount

FROM DailyTotals
/* Step 3: We skip the first 6 days because they don't have a full week of data yet */
LIMIT 100000 OFFSET 6;