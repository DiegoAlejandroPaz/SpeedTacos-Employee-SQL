
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(20),
    HireDate DATE NOT NULL,
    TerminationDate DATE
);


CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL,
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);


CREATE TABLE Positions (
    PositionID INT PRIMARY KEY,
    PositionTitle VARCHAR(100) NOT NULL,
    BaseSalary DECIMAL(10, 2) NOT NULL
);


CREATE TABLE EmployeeDetails (
    EmployeeID INT NOT NULL,
    DepartmentID INT NOT NULL,
    PositionID INT NOT NULL,
    Salary DECIMAL(10, 2) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE,
    PRIMARY KEY (EmployeeID, DepartmentID, PositionID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    FOREIGN KEY (PositionID) REFERENCES Positions(PositionID)
);
