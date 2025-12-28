Select P.product_id, IFNULL(ROUND(SUM(P.price*U.units)/SUM(U.units),2),0) AS average_price #Provide the product ID and also give us the average price. The average price is rounded to the 2nd decimal and it's an average of the prices considering the units sold at varying prices. If we get a Null, then give us 0 instead.
FROM Prices AS P #Our main table is prices.
LEFT JOIN UnitsSold AS U #We're left joining with the Units sold so that we know the price and the quantity sold.
ON P.product_id = U.product_id AND #Join on product id.
U.purchase_date BETWEEN P.start_date AND P.end_date #Also join on the purchase date so that the quanity matches on the product and also on the quantity sold given the purchase date. If we don't do the second piece, we can attribute the wrong price to a purchase.
GROUP BY P.product_id; #Group by product id.