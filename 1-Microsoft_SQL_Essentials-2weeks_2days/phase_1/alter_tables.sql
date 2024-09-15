USE CompanyDB;

GO

ALTER TABLE Staff.Assignments
ADD CONSTRAINT FK_PROJECT
FOREIGN KEY (ProjectID) REFERENCES Staff.Projects(ProjectID);

ALTER TABLE Staff.Assignments
ADD CONSTRAINT FK_EMPLOYEE
FOREIGN KEY (EmployeeID) REFERENCES Staff.Employees(EmployeeID);


-- In case of populating with data 
-- (refered in create_tables.sql)

/*

-- Additional updates for data consistency if needed
UPDATE Staff.Assignments SET ProjectID = 1 WHERE AssignmentID = 1;
UPDATE Staff.Assignments SET ProjectID = 2 WHERE AssignmentID = 2; 

*/