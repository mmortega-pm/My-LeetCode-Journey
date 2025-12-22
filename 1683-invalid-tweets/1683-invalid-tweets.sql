SELECT tweet_id #Provide the ID's of the tweets
FROM Tweets #Those ID's and the rest of the content live on the Tweets table.
WHERE LENGTH(content) > 15; #Before we call those ID's we filter for the ones where the content is great than 15 characters. We are using LENGTH. Please note that a variation is CHAR_LENGTH() where characters are counted, not just bytes.