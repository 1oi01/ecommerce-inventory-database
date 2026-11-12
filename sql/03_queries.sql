-- Reporting queries recovered from the submitted academic report.
-- Original column spelling ShppingStatus is retained.

-- 1. Out-of-stock products
SELECT * FROM Product WHERE StockLevel = 0;

-- 2. Sales per product
SELECT ProductID, SUM(Price * Quantity) AS TotalSales
FROM OrderProducts GROUP BY ProductID;

-- 3. Overdue shipping records not marked Delivered
SELECT * FROM Shipping
WHERE DeliveryDate < CURDATE() AND ShppingStatus != 'Delivered';

-- 4. Customers with more than three orders
SELECT c.CustomerID, c.FirstName, c.Lastname, COUNT(o.OrderID) AS Number_Of_Orders
FROM Customer c JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.FirstName, c.Lastname HAVING COUNT(o.OrderID) > 3;

-- 5. Inventory value
SELECT SUM(Price * StockLevel) AS TotalInventoryValue FROM Product;

-- 6. Orders placed today
SELECT o.OrderID, o.OrderDate, o.Status, o.CustomerID, c.FirstName, c.Lastname
FROM Orders o JOIN Customer c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate = CURDATE() ORDER BY o.OrderID;
