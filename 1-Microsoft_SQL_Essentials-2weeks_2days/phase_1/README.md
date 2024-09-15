# PROJECT - SQL ESSENTIAL - PHASE 1 - CREATE DATABASE

## Overview

The goal is to create a company database with multiple interrelated tables.

Each group is responsible for creating specific tables and populating them with data.

Once all data is in place, groups will then establish relationships and constraints using ALTER and UPDATE statements.

This repo provide **GROUP 2** and its responsibilities of this project.

## Instructions for Use

- Review Project Details: Start by reading the `ASIGNMENT PROJECT - FINAL.pdf` to understand the scope and responsibilities.
- Create Tables: Execute the SQL scripts in `create_tables.sql` to set up your initial database structure.
- Populate Data: Insert data into your tables as per the instructions in the PDF. (A sample data is mentioned as a comment in `create_tables.sql` file)
- Modify and Link Data: Use `alter_tables.sql` to add constraints and link tables appropriately.
- Test Your Setup: Validate the data integrity and relationships as per the guidelines.


Note: Comments that are mentioned in scripts files will be explained in **Additional Information** Section.

## Additional Information

- `create_tables.sql`'s comment: A sample data to populate with in the created tables 
- `alter_tables.sql`'s comment: An **UPDATE** script to ensure Data Consistency of the sample data that is mentioned in `create_tables.sql`'s comment

(Note on `alter_tables.sql`'s comment: Updating the ProjectID in Assignments is more common and often logical in environments where projects and tasks are dynamic and subject to change based on operational needs or strategic decisions.)

## Task Plan Questions & Answers (Queries for Analysis)

Note 1: Questions are mentioned in **Task Plan** Section in `ASIGNMENT PROJECT - FINAL.pdf`

Note 2: Queries (Answers) are mentioned in **Task Plan Queries** in `PHASE1_Documentation.pdf`

- Query 1: Employee Details with Function Manipulation
    - (Details: Retrieves a list of employees where the first name is converted to uppercase, the last name is converted to lowercase, and the length of their position title is calculated. Additionally, including the department name by joining with the Departments table.)

- Query 2: Department Budget Summary
    - (Details: Lists all departments with the total salary expenditure rounded to the nearest thousand, and the number of employees in each department with ordering the results by total salary expenditure in descending order)

- Query 3: Project Assignments
    - (Details: Retrieves a list of projects along with the names of employees assigned to each project, and includes the role of the employee while ensuring the project names are in uppercase and employee names are concatenated as "FirstName LastName".)

- Query 4: Customer Order Analysis
    - (Details: Lists all customers who have placed orders, along with the total number of orders they have placed and the total amount spent while ensuring customer names are in lowercase.)

- Query 5: Product Details Extraction
    - (Details: Retrieves a list of products where the product name is truncated to the first 10 characters, and the product category is extracted from the first 2 characters of the product name including the total quantity ordered for each product.)

- Query 6: High Salary Employees in Specific Departments
    - (Details: Finds employees with salaries above the average salary of their respective departments including the employee's name, salary, and department name.)


## Evaluation

- Day 1-2: Design and creation of tables, initial data population.
- Day 3: Validation and preparation of ALTER and UPDATE scripts.
- Day 4: Execution of scripts, final testing, and validation.
- Day 5: Final presentation and review session online.

## Files

- `create_tables.sql` : Contains SQL commands to create initial tables.

- `alter_tables.sql` : Includes SQL commands for adding constraints and establishing relationships between tables.

- `group2_insert_data.sql`: A script to populate tables of all the database tables (after creating them) with a sample data.

- `ASIGNMENT PROJECT - FINAL.pdf`: Provides a detailed overview of the project, including group responsibilities and timelines.

- `PHASE1_Documentation.pdf`: A Documentation about our part in phase 1 and useful queries for analysis

