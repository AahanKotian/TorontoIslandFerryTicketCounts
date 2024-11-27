/*
To retrieve all rows from the table:
*/

SELECT * FROM TorontoIslandFerryTicketCounts;

__________________________________________________________________

--To find how many records are in the TorontoIslandFerryTicketCounts table:

SELECT COUNT(*) FROM TorontoIslandFerryTicketCounts;

--Result: 233,686
__________________________________________________________________
       
/*
If you want to filter the data between two specific dates (assuming Timestamp is stored in a format like YYYY-MM-DD):
*/

SELECT * FROM TorontoIslandFerryTicketCounts
WHERE Timestamp BETWEEN '2024-01-01' AND '2024-12-31';

__________________________________________________________________

--To aggregate sales and redemption counts by month:

SELECT strftime('%Y-%m', Timestamp) AS month,
       SUM("SalesCount") AS total_sales,
       SUM("RedemptionCount") AS total_redemptions
FROM TorontoIslandFerryTicketCounts
GROUP BY month
ORDER BY month;
__________________________________________________________________

--If you want to find the total Redemption Count and Sales Count over the entire dataset:

SELECT SUM("RedemptionCount") AS total_redemptions,
       SUM("SalesCount") AS total_sales
FROM TorontoIslandFerryTicketCounts;

--Results: 11,242,135 total redemptions and 11,444,256 total sales.
__________________________________________________________________

--To find the average daily Redemption Count and Sales Count:

SELECT AVG("RedemptionCount") AS avg_redemptions,
       AVG("SalesCount") AS avg_sales
FROM TorontoIslandFerryTicketCounts;

-- Results: 48.10786696678449 average redemptions and 48.97279255068767 average sales
__________________________________________________________________

--To aggregate the data by day (assuming Timestamp is in YYYY-MM-DD format):

SELECT Timestamp, 
       SUM("RedemptionCount") AS total_redemptions,
       SUM("SalesCount") AS total_sales
FROM TorontoIslandFerryTicketCounts
GROUP BY Timestamp
ORDER BY Timestamp;

-- Results: 48.10786696678449 average redemptions and 48.97279255068767 average sales
___________________________________________________________________
