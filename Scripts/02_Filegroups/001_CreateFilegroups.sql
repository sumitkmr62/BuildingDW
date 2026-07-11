/******************************************************************************
Project      : BuildingDW
Script       : 001_CreateFilegroups.sql
Author       : Sumit
Book         : Building a Data Warehouse with Examples in SQL Server
SQL Server   : 2022

Purpose
-------
Creates the logical filegroups for the BuildingDW database.

******************************************************************************/

USE master;

/*****************************************************************************
VALIDATE DATABASE
*****************************************************************************/

IF DB_ID(N'BuildingDW') IS NULL
BEGIN
	RAISERROR('Database BuildingDW is does not exist.', 16, 1)
	RETURN;
END;
GO

USE BuildingDW;
GO

/******************************************************************************
NDS FILEGROUP
******************************************************************************/

ALTER DATABASE BuildingDW 
ADD FILEGROUP FG_NDS;
GO

/******************************************************************************
DDS FILEGROUP
******************************************************************************/

ALTER DATABASE BuildingDW
ADD FILEGROUP FG_DDS;
GO

/******************************************************************************
INDEX FILEGROUP
******************************************************************************/

ALTER DATABASE BuildingDW
ADD FILEGROUP FG_INDEX;
GO

/******************************************************************************
ETL FILEGROUP
******************************************************************************/

ALTER DATABASE BuildingDW
ADD FILEGROUP FG_ETL;
GO

/******************************************************************************
ARCHIVE FILEGROUP
******************************************************************************/

ALTER DATABASE BuildingDW
ADD FILEGROUP FG_ARCHIVE;
GO

PRINT 'All filegroups created successfully.'






























