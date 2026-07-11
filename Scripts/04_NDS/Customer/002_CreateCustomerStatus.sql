/******************************************************************************
Project      : BuildingDW
Database     : BuildingDW
Schema       : NDS
Layer        : Normalized Data Store (NDS)
Module       : Customer

Script       : 002_CreateCustomerStatus.sql
Object       : NDS.CustomerStatus
Type         : Attribute (Lookup)

Version      : 1.0.0
Status       : Book-Derived

Author       : Sumit Kumar
Created On   : 11-Jul-2026

Purpose
-------
Creates the CustomerStatus lookup table.

Source
------
Book         : Building a Data Warehouse with Examples in SQL Server
Chapter      : Customer NDS Model
Evidence     : Schema Diagram, Customer Entity Relationship
SQL Version  : SQL Server 2022

Derivation
----------
The book identifies CustomerStatus as an attribute table referenced by
Customer. The physical DDL is not published; therefore, this implementation
follows the author's NDS modelling pattern and the project's SQL Server 2022
standards.

Notes
-----
This script creates the table only.
Foreign Keys, Indexes and Verification are created separately.
******************************************************************************/

USE BuildingDW;
GO

/******************************************************************************
DROP TABLE
******************************************************************************/

DROP TABLE IF EXISTS NDS.CustomerStatus;
GO

/******************************************************************************
CREATE TABLE
******************************************************************************/

CREATE TABLE NDS.CustomerStatus
(
    --PRIMARY KEY
    CustomerStatusKey INT IDENTITY(1,1) NOT NULL,

    --BUSINESS COLUMN
    CustomerStatus VARCHAR(10) NOT NULL,

    --AUDIT COLUMNS
    CreateTimeStamp DATETIME2(0) NULL
        CONSTRAINT DF_CustomerStatus_CreateTimeStamp
        DEFAULT (SYSDATETIME()),
    UpdateTimeStamp DATETIME2(0) NULL
        CONSTRAINT DF_CustomerStatus_UpdateTimeStamp
        DEFAULT (SYSDATETIME()),

    --CONSTRAINTS
    CONSTRAINT PK_CustomerStatus 
        PRIMARY KEY CLUSTERED (CustomerStatusKey)
);
GO

















