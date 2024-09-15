-- Insert data into Departments
INSERT INTO Staff.Departments VALUES (1, 'Finance', 'Los Angeles');
INSERT INTO Staff.Departments VALUES (2, 'Marketing', 'Chicago');
INSERT INTO Staff.Departments VALUES (3, 'HR', 'New York');
INSERT INTO Staff.Departments VALUES (4, 'IT', 'San Francisco');
INSERT INTO Staff.Departments VALUES (5, 'Sales', 'Houston');

-- Insert data into Employees
INSERT INTO Staff.Employees VALUES (1, 'Alice', 'Brown', 2, '2023-02-12', 'Analyst', 75000);
INSERT INTO Staff.Employees VALUES (2, 'Bob', 'Johnson', 1, '2022-07-20', 'Engineer', 95000);
INSERT INTO Staff.Employees VALUES (3, 'Charlie', 'Davis', 3, '2023-01-05', 'HR Specialist', 68000);
INSERT INTO Staff.Employees VALUES (4, 'Diana', 'Miller', 4, '2023-03-15', 'Developer', 88000);
INSERT INTO Staff.Employees VALUES (5, 'Evan', 'Smith', 5, '2022-11-30', 'Sales Manager', 92000);

-- Insert data into Projects
INSERT INTO Staff.Projects VALUES (1, 'Project X', '2023-04-01', '2023-12-31', 450000);
INSERT INTO Staff.Projects VALUES (2, 'Project Y', '2023-03-01', '2023-10-30', 320000);
INSERT INTO Staff.Projects VALUES (3, 'Project Z', '2023-05-15', '2024-02-15', 550000);
INSERT INTO Staff.Projects VALUES (4, 'Project Alpha', '2023-06-10', '2024-01-20', 420000);
INSERT INTO Staff.Projects VALUES (5, 'Project Beta', '2023-08-20', '2024-05-30', 600000);

-- Insert data into Assignments
INSERT INTO Staff.Assignments VALUES (1, 2, 1, 'Analyst', '2023-04-01');
INSERT INTO Staff.Assignments VALUES (2, 1, 2, 'Engineer', '2023-07-01');
INSERT INTO Staff.Assignments VALUES (3, 3, 3, 'HR Specialist', '2023-05-15');
INSERT INTO Staff.Assignments VALUES (4, 4, 4, 'Developer', '2023-06-20');
INSERT INTO Staff.Assignments VALUES (5, 5, 5, 'Sales Manager', '2023-09-01');

-- Insert data into Customers
INSERT INTO Sales.Customers VALUES (1, 'Charlie', '2345678901', 'charlie@example.com', '789 Pine St');
INSERT INTO Sales.Customers VALUES (2, 'Diana', '3456789012', 'diana@example.com', '321 Oak St');
INSERT INTO Sales.Customers VALUES (3, 'Evan', '4567890123', 'evan@example.com', '654 Maple St');
INSERT INTO Sales.Customers VALUES (4, 'Fiona', '5678901234', 'fiona@example.com', '987 Cedar Ave');
INSERT INTO Sales.Customers VALUES (5, 'George', '6789012345', 'george@example.com', '123 Birch Blvd');

-- Insert data into Orders
INSERT INTO Sales.Orders VALUES (1, 2, '2023-07-25', 300.45);
INSERT INTO Sales.Orders VALUES (2, 1, '2023-08-10', 180.90);
INSERT INTO Sales.Orders VALUES (3, 3, '2023-09-05', 275.00);
INSERT INTO Sales.Orders VALUES (4, 4, '2023-10-15', 325.75);
INSERT INTO Sales.Orders VALUES (5, 5, '2023-11-20', 410.25);

-- Insert data into Products
INSERT INTO Sales.Products VALUES (1, 'Product Z', 'Category 3', 24.99, 150);
INSERT INTO Sales.Products VALUES (2, 'Product W', 'Category 4', 34.99, 250);
INSERT INTO Sales.Products VALUES (3, 'Product V', 'Category 2', 29.99, 180);
INSERT INTO Sales.Products VALUES (4, 'Product U', 'Category 1', 19.99, 300);
INSERT INTO Sales.Products VALUES (5, 'Product T', 'Category 5', 39.99, 220);

-- Insert data into OrderDetails
INSERT INTO Sales.OrderDetails VALUES (1, 2, 1, 3, 24.99);
INSERT INTO Sales.OrderDetails VALUES (2, 1, 2, 2, 34.99);
INSERT INTO Sales.OrderDetails VALUES (3, 3, 3, 1, 29.99);
INSERT INTO Sales.OrderDetails VALUES (4, 4, 4, 5, 19.99);
INSERT INTO Sales.OrderDetails VALUES (5, 5, 5, 4, 39.99);
