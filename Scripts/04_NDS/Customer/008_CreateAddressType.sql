/******************************************************************************
Project      : BuildingDW
Database     : BuildingDW
Schema       : NDS
Layer        : Normalized Data Store (NDS)
Module       : Customer

Script       : 008_CreateAddressType.sql
Object       : NDS.AddressType
Type         : Attribute (Lookup)

Version      : 1.0.0
Status       : Book-Derived

Author       : Sumit Kumar
Created On   : 12-Jul-2026

Purpose
-------
Creates the AddressType lookup table.

Source
------
Book         : Building a Data Warehouse with Examples in SQL Server
Chapter      : Customer NDS Model
Evidence     : Schema Diagram, Customer Entity Relationship
SQL Version  : SQL Server 2022

Derivation
----------
The book identifies AddressType as an attribute table referenced by
Address. The physical DDL is not published; therefore, this implementation
follows the author's NDS modelling pattern and the project's SQL Server 2022
standards.

Notes
-----
This script creates the table only.
Foreign Keys, Indexes and Verification are created separately.
******************************************************************************/

USE BuildingDW;
GO

DROP TABLE IF EXISTS NDS.AddressType;
GO

CREATE TABLE NDS.AddressType
(
	--PRIMARY KEY
	AddressTypeKey INT IDENTITY(1,1) NOT NULL,

	--BUSINESS COLUMNS
	AddressType VARCHAR(30) NOT NULL,

	--AUDIT COLUMNS
	CreatedTimestamp DATETIME2(0) NOT NULL
		CONSTRAINT DF_AddressType_CreatedTimestamp
		DEFAULT(SYSDATETIME()),

	UpdatedTimestamp DATETIME2(0) NOT NULL
		CONSTRAINT DF_AdressType_UpdatedTimestamp
		DEFAULT(SYSDATETIME()),

	--CONSTRAINTS
	CONSTRAINT PK_AddressType
		PRIMARY KEY CLUSTERED (AddressTypeKey)
);
GO

PRINT 'Successfully created table: NDS.AddressType.';
GO