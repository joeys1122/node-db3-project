-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT productname, categoryname FROM Product
JOIN Category ON Product.CategoryId = Category.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT id, shipvia FROM [Order] as o
WHERE o.orderdate < '2012-08-09';

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT p.productname, p.quantityperunit FROM OrderDetail as o
JOIN Product as p ON o.productid = p.id
WHERE o.orderid = 10251
ORDER BY p.productname;

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.id, c.companyname, e.lastname FROM [Order] as o
JOIN Customer as c ON o.customerid = c.id
JOIN Employee as e ON o.employeeid = e.id
GROUP BY o.id;