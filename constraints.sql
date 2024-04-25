-- Employees Table Constraints
ALTER TABLE Employees
ADD CONSTRAINT CK_Employees_HireDate CHECK (HireDate <= GETDATE());

ALTER TABLE Employees
ADD CONSTRAINT DF_Employees_TerminationDate DEFAULT NULL FOR TerminationDate;

-- Departments Table Constraints
ALTER TABLE Departments
ADD CONSTRAINT CK_Departments_DepartmentName CHECK (DepartmentName <> '');

-- Positions Table Constraints
ALTER TABLE Positions
ADD CONSTRAINT CK_Positions_BaseSalary CHECK (BaseSalary > 0);

-- EmployeeDetails Table Constraints
ALTER TABLE EmployeeDetails
ADD CONSTRAINT CK_EmployeeDetails_StartDate CHECK (StartDate <= GETDATE());

ALTER TABLE EmployeeDetails
ADD CONSTRAINT CK_EmployeeDetails_EndDate CHECK (EndDate IS NULL OR EndDate > StartDate);

ALTER TABLE EmployeeDetails
ADD CONSTRAINT DF_EmployeeDetails_EndDate DEFAULT NULL FOR EndDate;
