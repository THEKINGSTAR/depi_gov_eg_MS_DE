# TASK 02 - TSQL 02

## Overview

The purpose of this task is the same as the purpose of [Task 01 - TSQL Q1](./TASK%2001%20-%20TSQL%20Q1/README.md) but this time, the requested view contains more details to gain from other tables

Our objective is to maintain this view without using *JOIN*:

The top view is: 

![alt text](./TASK%2002%20-%20TSQL%20Q2/res/T-SQL_Q2_TOP_VIEW.png)

Although the bottom view is:

![alt text](./TASK%2002%20-%20TSQL%20Q2/res/T-SQL_Q2_BOTTOM_VIEW.png)

## Setup

You can see **Setup** Section in [Task 01/README.md ](./TASK%2001%20-%20TSQL%20Q1/README.md) to setup for this task.

## Solution & Analysis

From the provided view, we can define the following:

- Requested Columns: ID, FirstName, MID NAME, LastName, CompanyName, OrderQty (Some of them can be aliased)

- Expected Table(s): 
    - [SalesLT.Customer] (contains customer information), 
    - [SalesLT.SalesOrderDetail] (contains order details)

You can verify this by looking up in the [Connections] tab:

    Tables -> [The_table_you_want_to_lookup_at] -> Columns
    
In this case, we look up at **SalesLT.Customer** and **SalesLT.SalesOrderDetail**.

- Aliased Columns:
    
    - CustomerID -> ID

    - MiddleName -> [MID NAME] (since it’s spaced)

- Customer Data:

    - All customers’ first names are ‘John’ with differences in middle name and last name.

    - The number of returned records are 60 records meaning that: 

        - Data is repeated since it's only 20 records that holds all **John**'s as their first name.


- Testing Data Relations

    - By trying several queries to ensure understanding the relational database, here's a diagram of how the tables are related: 

    - For more information, refer to [adventureworks relational tables diagram] in **Visualization** section in [Task 00/README.md](./TASK%2000%20-%20DATA%20ENG%20INTRO%20-%20AZURE%20Data%20Studio%20INSTALL/README.md) 

    In order to get a relation of tables, it's specified by keys where:

        SalesLT.Customer --(CustomerID)--> SalesLT.SalesOrderID --(SalesOrderID)--> SalesLT.SalesOrderDetail
    
    However, We can try subqueries to ensure if we can retrieve records related to OrderQty:

      SELECT TOP (60)
             c.CustomerID AS ID,
             c.FirstName,
             c.MiddleName AS [MID NAME],
             c.LastName,
             c.CompanyName,
             sod.OrderQty
      FROM SalesLT.Customer AS c
      OUTER APPLY (
            SELECT sod.OrderQty
            FROM SalesLT.SalesOrderDetail AS sod
            WHERE sod.SalesOrderID IN (
                SELECT soh.SalesOrderID
                FROM SalesLT.SalesOrderHeader AS soh
                WHERE soh.CustomerID = c.CustomerID
            )
            AND sod.OrderQty >= 23
      ) AS sod
      WHERE c.FirstName = 'John'
      ORDER BY sod.OrderQty DESC;

    It returns that all **John**(s) OrderQty data is unknown (Since NULL Values are returned in all records).

    
    ---

    A possible approach is a query equivalent to **CROSS JOIN** (A Cartesian Product Approach to make combinations) since using **JOIN**(s) is not permitted in this task. 

    The query can be as shown below:

      SELECT TOP (60)
             c.CustomerID AS ID,
             c.FirstName,
             c.MiddleName AS [MID NAME],
             c.LastName,
             c.CompanyName,
             sod.OrderQty
      FROM SalesLT.Customer AS c,
           SalesLT.SalesOrderDetail AS sod
      WHERE c.FirstName = 'John'
      ORDER BY sod.OrderQty DESC;

    - The query returns **60 records** where the first name is **John**.
    - OrderQty records are ordered in descending order from **25** (maximum value) to **1** (minimum value) [A Cartesian Product Approach is used three times due to records limit (25 -> 23)].
    
    The query above will produce the requested view as described above.
