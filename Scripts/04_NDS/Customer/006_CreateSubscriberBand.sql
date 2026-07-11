/******************************************************************************
Project      : BuildingDW
Database     : BuildingDW
Schema       : NDS
Layer        : Normalized Data Store (NDS)
Module       : Customer

Script       : 006_CreateSubscriberBand.sql
Object       : NDS.SubscriberBand
Type         : Attribute (Lookup)

Version      : 1.0.0
Status       : Book-Derived

Author       : Sumit Kumar
Created On   : 11-Jul-2026

Purpose
-------
Creates the SubscriberBand lookup table.

Source
------
Book         : Building a Data Warehouse with Examples in SQL Server
Chapter      : Customer NDS Model
Evidence     : Schema Diagram, Customer Entity Relationship
SQL Version  : SQL Server 2022

Derivation
----------
The book identifies SubscriberBand as an attribute table referenced by
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

DROP TABLE IF EXISTS NDS.SubscriberBand;
GO

CREATE TABLE NDS.SubscriberBand
(
	--PRIMARY KEY
	SubscriberBandKey INT IDENTITY(1,1) NOT NULL,

	--BUSINESS COLUMN
	SubscriberBand VARCHAR(3) NOT NULL,

	--AUDIT COLUMNS
	CreatedTimestamp DATETIME2(0) NOT NULL
		CONSTRAINT DF_SubscriberBand_CreatedTimestamp
		DEFAULT (SYSDATETIME()),

	UpdatedTimestamp DATETIME2(0) NOT NULL
		CONSTRAINT DF_SubscriberBand_UpdatedTimestamp
		DEFAULT (SYSDATETIME()),

	--CONSTRAINTS
	CONSTRAINT PK_SubscriberBand PRIMARY KEY
		CLUSTERED (SubscriberBandKey)
);
GO

PRINT 'Successfully created table: NDS.SubscriberBand.';
GO