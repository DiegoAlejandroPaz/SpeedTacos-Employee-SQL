
INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate)
VALUES
(1001, 'Miguel', 'Garcia', 'miguel.garcia@speedtacos.com', '5551234567', '2020-02-15'),
(1002, 'Maria', 'Hernandez', 'maria.hernandez@speedtacos.com', '5557654321', '2019-06-01'),
(1003, 'Carlos', 'Ramirez', 'carlos.ramirez@speedtacos.com', '5559876543', '2021-09-01'),
(1004, 'Ana', 'Gonzalez', 'ana.gonzalez@speedtacos.com', '5553216549', '2018-04-01'),
(1005, 'Jorge', 'Perez', 'jorge.perez@speedtacos.com', '5554987612', '2022-01-15'),
(1006, 'Laura', 'Sanchez', 'laura.sanchez@speedtacos.com', '5551239876', '2017-10-01');


INSERT INTO Departments (DepartmentID, DepartmentName, ManagerID)
VALUES
(2001, 'Kitchen', 1001),
(2002, 'Front of House', 1004),
(2003, 'Operations', 1006);


INSERT INTO Positions (PositionID, PositionTitle, BaseSalary)
VALUES
(3001, 'Head Chef', 45000.00),
(3002, 'Sous Chef', 35000.00),
(3003, 'Line Cook', 28000.00),
(3004, 'Cashier', 25000.00),
(3005, 'Server', 22000.00),
(3006, 'Operations Manager', 50000.00);


INSERT INTO EmployeeDetails (EmployeeID, DepartmentID, PositionID, Salary, StartDate)
VALUES
(1001, 2001, 3001, 48000.00, '2020-02-15'),
(1002, 2001, 3002, 38000.00, '2019-06-01'),
(1003, 2001, 3003, 30000.00, '2021-09-01'),
(1004, 2002, 3004, 27000.00, '2018-04-01'),
(1005, 2002, 3005, 24000.00, '2022-01-15'),
(1006, 2003, 3006, 55000.00, '2017-10-01');