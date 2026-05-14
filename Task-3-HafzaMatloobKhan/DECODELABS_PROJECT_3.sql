SELECT * 
FROM DecodeLabs_task3_SQL;


SELECT TOP 10 * 
FROM DecodeLabs_task3_SQL;

SELECT COUNT(*) AS total_records
FROM DecodeLabs_task3_SQL;
SELECT SUM(TotalPrice) AS total_sales
FROM DecodeLabs_task3_SQL;
SELECT avg(TotalPrice) AS avg_order_value
FROM DecodeLabs_task3_SQL;

SELECT Product, SUM(TotalPrice) AS total_sales
FROM DecodeLabs_task3_SQL
GROUP BY Product
ORDER BY total_sales DESC;

SELECT PaymentMethod, COUNT(*) AS total_orders
FROM DecodeLabs_task3_SQL
GROUP BY PaymentMethod
ORDER BY total_orders DESC;

SELECT OrderStatus, COUNT(*) AS total_orders
FROM DecodeLabs_task3_SQL
GROUP BY OrderStatus;

SELECT *
FROM DecodeLabs_task3_SQL
WHERE TotalPrice > 1000;

SELECT *
FROM DecodeLabs_task3_SQL
WHERE OrderStatus = 'Delivered';


SELECT *
FROM DecodeLabs_task3_SQL
ORDER BY TotalPrice DESC;

SELECT Product, SUM(TotalPrice) AS total_sales
FROM DecodeLabs_task3_SQL
GROUP BY Product
HAVING SUM(TotalPrice) > 550
ORDER BY total_sales DESC;


SELECT *
FROM DecodeLabs_task3_SQL
WHERE TotalPrice IS NULL;



SELECT *
FROM DecodeLabs_task3_SQL
WHERE PaymentMethod IS NULL
   OR Product IS NULL;

USE DecodeLabs_Project_3;

   SELECT *
FROM DecodeLabs_task3_SQL
WHERE TotalPrice > (SELECT AVG(TotalPrice)*3 FROM DecodeLabs_task3_SQL);



SELECT Date, SUM(TotalPrice) AS daily_sales
FROM DecodeLabs_task3_SQL
GROUP BY Date
ORDER BY Date;
