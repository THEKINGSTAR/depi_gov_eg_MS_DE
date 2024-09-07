# TASK 00 - DATA ENG INTRO - AZURE Data Studio INSTALL

## Overview 

The purpose of this task is to ensure that MS SQL, MS Azure, and SSMS are installed, and that they are working on your machine. Additionally, it aims to provide you with data.

## Setup

Follow steps using this lab:
[Lab Environment Setup](https://microsoftlearning.github.io/dp-080-Transact-SQL/Instructions/Labs/00-setup.html)

You can use either Azure or SSMS in this task.

Note: It is recommended to install SQL Server Management Studio (SSMS) version 20.2 or higher for optimal performance and access to the latest features. (Required for feature tasks)


## Visualization

Refer to **adventureworks relational tables** from the following diagram:


![alt text](/TASK%2000%20-%20DATA%20ENG%20INTRO%20-%20AZURE%20Data%20Studio%20INSTALL/res/adventureworks_tables.png)


After following the lab instructions:
    
- Ensure that you are connected to **adventureworks** database to perform the following query:

        USE AdventureWorks;

        SELECT * FROM SalesLT.Customer;

Note that you don't need [**USE AdventureWorks;**] if the **adventureworks** database is selected.

![alt text](/TASK%2000%20-%20DATA%20ENG%20INTRO%20-%20AZURE%20Data%20Studio%20INSTALL/res/00%20-%20DATA_ENG%20INTRO%20-%20AZURE%20INSTALL.png)

## Files

- `adventureworkslt.sql` : SQL script file to create **adventureworks** database on your machine.
