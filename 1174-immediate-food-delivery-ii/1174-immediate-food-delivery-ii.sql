SELECT 
    ROUND(AVG(order_date = customer_pref_delivery_date) * 100.0, 2) AS immediate_percentage #Calculate the average that's filtered since the logic for the average is for immediate orders od = cpdd
FROM Delivery
WHERE (customer_id, order_date) IN ( 
    #The VIP List: Only the first order for each person
    SELECT customer_id, MIN(order_date)
    FROM Delivery
    GROUP BY customer_id
);