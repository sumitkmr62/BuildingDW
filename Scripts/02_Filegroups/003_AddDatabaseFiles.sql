/******************************************************************************
Project      : BuildingDW
Script       : 003_AddDatabaseFiles.sql
Author       : Sumit
Book         : Building a Data Warehouse with Examples in SQL Server
SQL Server   : 2022

Purpose
-------
Adds secondary data files to the BuildingDW database.

******************************************************************************/

USE master;
GO

/******************************************************************************
VALIDATE DATABASE
******************************************************************************/

IF DB_ID(N'BuildingDW') IS NULL
BEGIN
	RAISERROR('Database BuildingDW does not exist.', 16, 1)
	RETURN;
END;
GO

/******************************************************************************
FG_NDS
******************************************************************************/


ALTER DATABASE BuildingDW
ADD FILE
(
	NAME = N'BuildingDW_NDS', 
	FILENAME = 'E:\SQLServerProjects\BuildingDW\DatabaseFiles\BuildingDW_NDS.ndf',
	SIZE = 64MB,
	FILEGROWTH = 16MB
)
TO FILEGROUP FG_NDS;
GO

/******************************************************************************
FG_DDS
******************************************************************************/

ALTER DATABASE BuildingDW
ADD FILE
(
	NAME = N'BuildingDW_DDS',
	FILENAME = 'E:\SQLServerProjects\BuildingDW\DatabaseFiles\BuildingDW_DDS.ndf',
	SIZE = 128MB,
	FILEGROWTH = 32MB
)
TO FILEGROUP FG_DDS;
GO

/******************************************************************************
FG_INDEX
******************************************************************************/

ALTER DATABASE BuildingDW
ADD FILE
(
	NAME = N'BuildingDW_INDEX',
	FILENAME = 'E:\SQLServerProjects\BuildingDW\DatabaseFiles\BuildingDW_INDEX.ndf',
	SIZE = 64MB,
	FILEGROWTH = 16MB
)
TO FILEGROUP FG_INDEX;
GO

/******************************************************************************
FG_ETL
******************************************************************************/

ALTER DATABASE BuildingDW
ADD FILE
(
	NAME = N'BuildingDW_ETL',
	FILENAME = N'E:\SQLServerProjects\BuildingDW\DatabaseFiles\BuildingDW_ETL.ndf',
	SIZE = 64MB,
	FILEGROWTH = 16MB
)
TO FILEGROUP FG_ETL;
GO

/******************************************************************************
FG_ARCHIVE
******************************************************************************/

ALTER DATABASE BuildingDW
ADD FILE
(
	NAME = N'BuildingDW_ARCHIVE',
	FILENAME = N'E:\SQLServerProjects\BuildingDW\DatabaseFiles\BuildingDW_ARCHIVE.ndf',
	SIZE = 32MB,
	FILEGROWTH = 16MB
)
TO FILEGROUP FG_ARCHIVE
GO

PRINT 'Secondary database files added successfully.';
GO




















































