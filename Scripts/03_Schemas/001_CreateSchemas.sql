/******************************************************************************
Project      : BuildingDW
Script       : 001_CreateSchemas.sql
Author       : Sumit
Book         : Building a Data Warehouse with Examples in SQL Server
SQL Server   : 2022

Purpose
-------
Creates application schemas for the BuildingDW database.

******************************************************************************/

/*****************************************************************************
DATABASE VALIDATION
*****************************************************************************/

USE master;
GO

IF DB_ID(N'BuildingDW') IS NULL
BEGIN
	RAISERROR('Database BuildingDW does not exist.', 16, 1);
END;
GO

USE BuildingDW;
GO

/*****************************************************************************
CREATE NDS SCHEMA
*****************************************************************************/

IF SCHEMA_ID(N'NDS') IS NULL
BEGIN
	EXEC('CREATE SCHEMA NDS');
END;
GO

/*****************************************************************************
CREATE DDS SCHEMA
*****************************************************************************/

IF SCHEMA_ID(N'DDS') IS NULL
BEGIN
	EXEC('CREATE SCHEMA DDS');
END;
GO

/*****************************************************************************
CREATE STAGE SCHEMA
*****************************************************************************/

IF SCHEMA_ID(N'Stage') IS NULL
BEGIN
	EXEC ('CREATE SCHEMA Stage');
END;
GO

/*****************************************************************************
CREATE ETL SCHEMA
*****************************************************************************/

IF SCHEMA_ID(N'ETL') IS NULL
BEGIN
	EXEC('CREATE SCHEMA ETL')
END;
GO

/*****************************************************************************
CREATE REFERENCE SCHEMA
*****************************************************************************/

IF SCHEMA_ID(N'Reference') IS NULL
BEGIN
	EXEC('CREATE SCHEMA Reference')
END;
GO

/*****************************************************************************
CREATE SECURITY SCHEMA
*****************************************************************************/

IF SCHEMA_ID(N'Security') IS NULL
BEGIN
	EXEC('CREATE SCHEMA Security')
END;
GO

/*****************************************************************************
CREATE UTILITY SCHEMA
*****************************************************************************/

IF SCHEMA_ID(N'Utility') IS NULL
BEGIN
	EXEC('CREATE SCHEMA Utility')
END;
GO

PRINT 'Application schemas created successfully.'
GO








































































