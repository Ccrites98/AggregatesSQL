use northwind;
SELECT COUNT(*) AS supplier_count
FROM suppliers; 

SELECT SUM(salary) AS total_salary
FROM employees;

SELECT AVG(Unitprice) AS average_price
FROM products;

SELECT SupplierID, COUNT(*) AS item_count
FROM products
GROUP BY SupplierID;

SELECT CategoryID, AVG(Unitprice) AS average_price
FROM products
GROUP BY CategoryID;

SELECT SupplierID, COUNT(*) AS item_count
FROM products
GROUP BY SupplierID
HAVING COUNT(*) >= 5;

SELECT 
    ProductID,
    ProductName,
    UnitPrice,
    UnitsInStock,
    UnitPrice * UnitsInStock AS InventoryValue
FROM 
    Products
ORDER BY 
    InventoryValue DESC, ProductName;