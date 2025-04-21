USE PHITRON;

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactName VARCHAR(100),
    Address VARCHAR(100),
    City VARCHAR(50),
    PostalCode VARCHAR(20)
);

INSERT INTO Customers (CustomerID, CustomerName, ContactName, Address, City, PostalCode)
VALUES 
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22');

SELECT * FROM CUSTOMERS
WHERE CUSTOMERNAME LIKE 'a%';

SELECT * FROM CUSTOMERS
WHERE CUSTOMERNAME LIKE 'A%';

SELECT * FROM CUSTOMERS
WHERE CUSTOMERNAME LIKE 'L%';

SELECT * FROM CUSTOMERS
WHERE CUSTOMERNAME LIKE '%y%';

SELECT * FROM CUSTOMERS
WHERE city LIKE 'L%';

SELECT * FROM CUSTOMERS
WHERE CUSTOMERNAME LIKE 'a%' or customername like 'b%';

CREATE TABLE Products (
    p_id INT PRIMARY KEY,
    p_Name VARCHAR(100),
    price int
);
INSERT INTO Products (p_id, p_Name, price)
VALUES 
(3, 'mouse', 435),
(7, 'keyboard', 54656),
(80,'monitor', 56546),
(2, 'laptop', 9778),
(16, 'pendrive', 900);
SELECT * FROM Products
ORDER BY p_Name;

SELECT * FROM Products
ORDER BY price desc;


select p_Name, price
from Products
where price between 10 and 15000
order by p_name;

select avg(price)
from products
where price >= 2000;


CREATE TABLE Employee 
(
    E_id INT PRIMARY KEY,
    E_Name VARCHAR(100),
    Dept VARCHAR (50),
    Salary int
);
INSERT INTO Employee (E_id, E_Name, Dept, Salary)
VALUES 
(1, 'robin', 'hr', 435),
(2, 'akash', 'mkt', 54656),
(3, 'robi', 'hr', 56546),
(4, 'noyon', 'it', 9778),
(5, 'fahim', 'qa', 900),
(6, 'rakib', 'it', '0') ;

SELECT MIN(Salary) 
FROM Employee;

SET sql_mode = '';

SELECT E_name, MAX(Salary) 
FROM Employee;
