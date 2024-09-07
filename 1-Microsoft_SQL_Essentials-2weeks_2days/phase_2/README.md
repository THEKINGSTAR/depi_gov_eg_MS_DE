# PROJECT - SQL ESSENTIAL - PHASE 2 - AUTOMATE YOUR WORK - STORED PROCEDURES

This document serves as a guide for Phase 2 of the SQL Essential project, focusing on automating database tasks using stored procedures.

## Project Overview

The objective of this phase is to create a set of stored procedures that encapsulate essential database management functionalities. These procedures will streamline database operations and improve maintainability.

## Scripts Breakdown
The provided SQL scripts outlines the functionalities of each stored procedure:

- CreateTables:

    - Creates the essential database tables (Employees, Departments, Projects, Assignments).

- CreateConstraintsAndRelationships:

    - Defines primary keys for all tables.
    - Establishes foreign keys to enforce data integrity between tables.
    - Implements any necessary unique or check constraints.

- InsertDataFromAnotherDatabase:

    - Transfers data from an external database (SourceDB) using SELECT INTO statements.
    - Ensures data integrity during the transfer process.

- PerformQueryTasks:

    - Serves as a template for executing various query operations (filtering, ordering, aggregation).
    - Consider including specific examples to showcase different queries.

- CreateViews:

    - Creates the EmployeeProjectAssignments view, providing consolidated information about employee project assignments.
    - The view includes EmployeeName (concatenated from first and last names), DepartmentName, ProjectName, Role, and AssignmentDuration.
    - Joins tables to retrieve the necessary data.

- RunAllSetupProcedures:

    - Executes the CreateTables and CreateConstraintsAndRelationships procedures in the correct order.
    - Consider adding flexibility for conditional execution of procedures based on parameters.

- Additional Considerations:

    - Data Validation: Enforce data integrity by implementing validation checks within stored procedures (constraints or custom logic).
    - Performance Optimization: Profile queries and explore techniques like indexing, query optimization, and stored procedure optimization for improved performance.
    - Security: Implement appropriate security measures (role-based access control) to safeguard sensitive data.

- Next Steps
    - Review the provided SQL script for each stored procedure.
    - Develop the individual stored procedures based on the outlined functionalities.
    - Create the separate script to execute all procedures sequentially.
    - Implement the EmployeeProjectAssignments view script.

## Files

- `CreateTables.sql`: A script for creating tables.
- `CreateConstraintsAndRelationships.sql`: A script for creating constraints and relationships.
- `InsertDataFromSourceDB.sql`: A script to insert data from another database (in this case: SourceDB).
- `QueryTasks.sql`: Performing specific query tasks.
- `CreateViews.sql`: A script to create specific views
- `RunAllProcedures.sql`: A script to run all setup procedures.

- `SeparateScriptToRunAllProcedures.sql`: A separate script to execute all stored procedures sequentially.

- `EmployeeProjectAssignmentView.sql`: A script for the EmployeeProjectAssignments view.
- `PHASE2.pdf`: Provides a detailed overview of the project, including group responsibilities and timelines.
- `SourceDB.zip`: Contains SourceDB creation script and random population with data.
- `PHASE2_Documentation.pdf`: Documentation explaining the implemented approach and any encountered challenges.
- `phase_2.zip`: A zipped package contains all scripts of stored procedures, documentations and more

 