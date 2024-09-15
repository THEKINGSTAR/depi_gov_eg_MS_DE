# TASK 01 - TSQL 01

## Overview

The purpose of this task is to analyze from a specific view the requested columns and its order

The requested view is:

![alt text](./TASK%2001%20-%20TSQL%20Q1/res/T-SQL%20Q1.png)

## Setup

1- Open SQL Server Management Studio (SSMS) or Azure Data Studio

For SSMS:

- Connect to your local directory where the AdventureWorks database is located.

For Azure Data Studio:

- Create a new connection and in [Recent] tab look for the connection in your recent connections

In case you haven't connected to the database before, create a new connection and provide the following:

    Connection type: Microsoft SQL Server

    Input type: Parameters 

    Server: localhost\SQLExpress

    Authentication type: Windows Authentication

    Database: adventureworks

    Encrypt: Mandatory

    Trust server certificate: True

    Server group: <Default>

    Name (Optional): AdventureWorks (Recommended)

Note: the connection will be saved based on [Name] Section you provide, however you can leave it empty.

2- Create a New Query

- Ensure that [adventureworks] is selected before running your query.

## Solution

From the provided view, we can define the following:

- Requested Columns: ID, FirstName, MID NAME, LastName, CompanyName (Some of them can be aliased)

- Expected Table(s): [SalesLT.Customer] (contains customer information)

You can verify this by looking up in the [Connections] tab:

        Tables -> [The_table_you_want_to_lookup_at] -> Columns

In this case, we look up at **SalesLT.Customer**.

- Aliased Columns:
    
    - CustomerID -> ID

    - MiddleName -> [MID NAME] (since it’s spaced)

- Customer Data:

    - All customers’ first names are ‘John’ with differences in middle name and last name.

- Ordering:
    - The provided view is ordered by the [MID NAME] column in descending order (Z - A), with NULL values taking precedence in ascending order.

With these informations, we can write our query:

    SELECT CustomerID AS ID,
            FirstName,
            MiddleName AS [MID NAME],
            LastName,
            CompanyName
    FROM SalesLT.Customer
    WHERE FirstName = 'John'
    ORDER BY [MID NAME] DESC;

This query will produce the requested view as described above.
