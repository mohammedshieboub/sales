select * from Customers_Data
select * from Orders_Data

SELECT * FROM Customers_Data 
WHERE nationality = 'Egypt';


SELECT * FROM Customers_Data
WHERE nationality = 'Egypt' AND paid > 20000;


SELECT [Customer Name], nationality, city, paid
FROM Customers_Data
ORDER BY paid DESC;

------------------------------------ ندي 
SELECT 
    COUNT(customerid) AS Total_Customers,
    SUM(paid) AS Total_Revenue,
    AVG(paid) AS Average_Payment
FROM Customers_Data;


SELECT nationality, SUM(paid) AS High_Revenue
FROM Customers_Data
GROUP BY nationality
HAVING SUM(paid) > 500000
ORDER BY High_Revenue DESC;


SELECT 
    Customers_Data.[Customer Name], 
    Customers_Data.nationality, 
    Orders_Data.[Order Date], 
    Orders_Data.[Ship Mode]
FROM Customers_Data
INNER JOIN Orders_Data ON Customers_Data.customerid = Orders_Data.[Customer ID];


SELECT 
    City,
    SUM(Sales) AS Total_Sales
FROM 
    Orders_Data
GROUP BY 
    City ORDER BY Total_Sales DESC;



