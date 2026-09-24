CREATE TABLE Customers
(
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    Occupation VARCHAR(50) NOT NULL,
    Purchase_Amount DECIMAL(10,2) NOT NULL
);
INSERT INTO Customers
    (Customer_ID, Customer_Name, Age, Occupation, Purchase_Amount)
VALUES
    (201, 'Aman',   25, 'Engineer', 4500.00),
    (202, 'Neha',   22, 'Student',  3700.00),
    (203, 'Rahul',  25, 'Engineer', 6800.00),
    (204, 'Priya',  22, 'Student',  2500.00),
    (205, 'Karan',  28, 'Doctor',   7200.00),
    (206, 'Simran', 28, 'Doctor',   3900.00),
    (207, 'Riya',   26, 'Teacher',  5100.00),
    (208, 'Arjun',  25, 'Engineer', 6100.00);
SELECT * FROM Customers;
SELECT COUNT(*) AS Total_Customers
FROM Customers;
SELECT
    MAX(Purchase_Amount) AS Maximum_Purchase,
    MIN(Purchase_Amount) AS Minimum_Purchase,
    AVG(Purchase_Amount) AS Average_Purchase
FROM Customers;
SELECT
    Occupation,
    COUNT(*) AS Total_Customers
FROM Customers
GROUP BY Occupation;
SELECT *
FROM Customers
WHERE Purchase_Amount = (
    SELECT MIN(Purchase_Amount)
    FROM Customers
);
SELECT *
FROM Customers
WHERE Purchase_Amount > (
    SELECT AVG(Purchase_Amount)
    FROM Customers
    WHERE Occupation = 'Engineer'
);
SELECT Occupation, SUM(Purchase_Amount) AS Total_Purchase
FROM Customers
GROUP BY Occupation
HAVING SUM(Purchase_Amount) > 8000;
SELECT CONCAT(Customer_Name, '-', Occupation) AS Customer_Details
FROM Customers;
SELECT Customer_Name, SUBSTRING(Customer_Name, 1, 3) AS First_Three_Characters
FROM Customers;
SELECT Occupation, COUNT(*) AS Total_Customers
FROM Customers
GROUP BY Occupation
HAVING COUNT(*) > 1;
SELECT Customer_Name, LENGTH(Customer_Name) AS Name_Length
FROM Customers;