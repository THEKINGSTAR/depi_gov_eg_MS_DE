USE CompanyDB
GO

-- -- Projects table creation
CREATE TABLE Staff.Projects (
    ProjectID INT PRIMARY KEY,
    ProjectName VARCHAR(50) NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE,
    Budget MONEY CHECK (Budget >= 0)
);

-- Assignments table creations
CREATE TABLE Staff.Assignments(
    AssignmentID INT PRIMARY KEY,
    EmployeeID INT NOT NULL,
    ProjectID INT NOT NULL, 
    Role VARCHAR(50),
    AssignmentDate DATE,

);


-- Example of populating tables with data

/*

-- Insert data into Projects
INSERT INTO Projects VALUES (1, 'Project X', '2023-04-01', '2023-12-31', 450000);
INSERT INTO Projects VALUES (2, 'Project Y', '2023-03-01', '2023-10-30', 320000);
	
-- Insert data into Assignments
INSERT INTO Assignments VALUES (1, 2, 1, 'Analyst', '2023-04-01');
INSERT INTO Assignments VALUES (2, 1, 2, 'Engineer', '2023-07-01');

*/
