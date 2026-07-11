/******************************************************************************
Project      : BuildingDW
Script       : 002_ConfigureDatabase.sql
Author       : Sumit
Book         : Building a Data Warehouse with Examples in SQL Server
SQL Server   : 2022

Purpose
-------
Configures the BuildingDW database after creation.

******************************************************************************/

USE master;
GO

IF DB_ID(N'BuildingDW') IS NULL
BEGIN
	RAISERROR('Database BuildingDW does not exists.', 16, 1);
END;
GO

/******************************************************************************
RECOVERY MODEL
******************************************************************************/

ALTER DATABASE BuildingDW 
SET RECOVERY SIMPLE;
GO

/******************************************************************************
AUTO CLOSE
******************************************************************************/

ALTER DATABASE BuildingDW 
SET AUTO_CLOSE OFF;
GO

/******************************************************************************
AUTO SHRINK
******************************************************************************/

ALTER DATABASE BuildingDW 
SET AUTO_SHRINK OFF;
GO

/******************************************************************************
PAGE VERIFICATION
******************************************************************************/

ALTER DATABASE BuildingDW 
SET PAGE_VERIFY CHECKSUM;
GO

/******************************************************************************
ANSI NULL DEFAULTS
******************************************************************************/

ALTER DATABASE BuildingDW 
SET ANSI_NULL_DEFAULT OFF;
GO

/******************************************************************************
ANSI NULLs
******************************************************************************/

ALTER DATABASE BuildingDW
SET ANSI_NULLS ON;
GO

/******************************************************************************
ANSI WARNINGS
******************************************************************************/

ALTER DATABASE BuildingDW 
SET ANSI_WARNINGS ON;
GO

/******************************************************************************
ARITHMETIC ABORT
******************************************************************************/

ALTER DATABASE BuildingDW 
SET ARITHABORT ON;
GO

/******************************************************************************
QUOTED IDENTIFIER
******************************************************************************/

ALTER DATABASE BuildingDW 
SET QUOTED_IDENTIFIER ON;
GO

/******************************************************************************
NUMRIC ROUND ABORT
******************************************************************************/

ALTER DATABASE BuildingDW 
SET NUMERIC_ROUNDABORT OFF;
GO

/******************************************************************************
CONCATENATE NULL YIELDS NULL
******************************************************************************/

ALTER DATABASE BuildingDW 
SET CONCAT_NULL_YIELDS_NULL ON;
GO

PRINT 'Database configurations completed successfully.'
GO
























































