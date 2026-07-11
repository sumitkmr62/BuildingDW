/******************************************************************************
Project      : BuildingDW
Database     : BuildingDW
Schema       : NDS
Layer        : Normalized Data Store (NDS)
Module       : Customer

Script       : 003_CreateOccupation.sql
Object       : NDS.Occupation
Type         : Attribute (Lookup)

Version      : 1.0.0
Status       : Book-Derived

Author       : Sumit Kumar
Created On   : 11-Jul-2026

Purpose
-------
Creates the Occupation lookup table.

Source
------
Book         : Building a Data Warehouse with Examples in SQL Server
Chapter      : Customer NDS Model
Evidence     : Schema Diagram, Customer Entity Relationship
SQL Version  : SQL Server 2022

Derivation
----------
The book identifies Occupation as an attribute table referenced by
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

DROP TABLE IF EXISTS NDS.Occupation;
GO

CREATE TABLE NDS.Occupation
(
	--PRIMARY KEY
	OccupationKey INT IDENTITY(1,1) NOT NULL,

	--BUSINESS COLUMN
	Occupation VARCHAR(50) NOT NULL,

	--AUDIT COLUMNS
	CreateTimeStamp DATETIME2(0) NOT NULL
		CONSTRAINT DF_Occupation_CreateTimeStamp
		DEFAULT (SYSDATETIME()),
	UpdateTimeStamp DATETIME2(0) NOT NULL
		CONSTRAINT DF_Occupation_UpdateTimeStamp
		DEFAULT (SYSDATETIME())
	CONSTRAINT PK_Occupation
	PRIMARY KEY CLUSTERED (OccupationKey)
);
GO

PRINT 'Successfully created table NDS.Occupation'
GO