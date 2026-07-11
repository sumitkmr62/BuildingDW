/******************************************************************************
Project      : BuildingDW
Database     : BuildingDW
Schema       : NDS
Layer        : Normalized Data Store (NDS)
Module       : Customer

Script       : 005_CreateSubscriberClass.sql
Object       : NDS.SubscriberClass
Type         : Attribute (Lookup)

Version      : 1.0.0
Status       : Book-Derived

Author       : Sumit Kumar
Created On   : 11-Jul-2026

Purpose
-------
Creates the SubscriberClass lookup table.

Source
------
Book         : Building a Data Warehouse with Examples in SQL Server
Chapter      : Customer NDS Model
Evidence     : Schema Diagram, Customer Entity Relationship
SQL Version  : SQL Server 2022

Derivation
----------
The book identifies SubscriberClass as an attribute table referenced by
Customer. The physical DDL is not published; therefore, this implementation
follows the author's NDS modelling pattern and the project's SQL Server 2022
standards.

Notes
-----
This script creates the table only.
Foreign Keys, Indexes and Verification are created separately.
****************************************************************************/

USE BuildingDW;
GO

DROP TABLE IF EXISTS NDS.SubscriberClass
GO

CREATE TABLE NDS.SubscriberClass
(
	--PRIMARY KEY
	SubscriberClassKey INT IDENTITY(1,1) NOT NULL,

	--BUSINESS COLUMN
	SubscriberClass VARCHAR(3) NOT NULL,

	--AUDIT COLUMNS
	CreatedTimeStamp DATETIME2(0) NOT NULL
		CONSTRAINT DF_SubscriberCLass_CreatedTimeStamp 
		DEFAULT (SYSDATETIME()),
	UpdatedTimeStamp DATETIME2(0) NOT NULL
		CONSTRAINT DF_SubscriberClass_UpdatedTimeStamp
		DEFAULT (SYSDATETIME()),

	--CONSTRAINTS
	CONSTRAINT PK_SubscriberClass PRIMARY KEY
		CLUSTERED (SubscriberClassKey)
);
GO

PRINT 'Successfully created table SubscriberClass';
GO