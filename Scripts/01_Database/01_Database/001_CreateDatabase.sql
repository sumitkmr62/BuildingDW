/******************************************************************************
Project      : BuildingDW
Script       : 001_CreateDatabase.sql
Author       : Sumit
Book         : Building a Data Warehouse with Examples in SQL Server
SQL Server   : 2022

Purpose
-------
Creates the BuildingDW database.

******************************************************************************/

USE master;
GO

--===========================================
--DROP DATABASE (Development Only)
--===========================================

IF DB_ID('BuildingDW') IS NOT NULL
BEGIN
	ALTER DATABASE BuildingDW
	SET SINGLE_USER
	WITH ROLLBACK IMMEDIATE;

	DROP DATABASE BuildingDW;
END;
GO

--===========================================
--CREATE DATABASE
--===========================================

CREATE DATABASE BuildingDW
ON PRIMARY
(
	NAME = N'BuildingDW_Data',
	FILENAME = 'E:\SQLServerProjects\BuildingDW\DatabaseFiles\BuildingDW.mdf',
	SIZE = 32MB,
	FILEGROWTH = 16MB
)
LOG ON
(
	NAME = N'BuildingDW_Log',
	FILENAME = 'E:\SQLServerProjects\BuildingDW\DatabaseFiles\BuildingDW_log.ldf',
	SIZE = 32MB,
	FILEGROWTH = 16MB
);
GO

IF DB_ID(N'BuildingDW') IS NOT NULL
BEGIN
	PRINT 'Database creation failed.';
END
ELSE
BEGIN
	RAISERROR ('Database Creation failed.', 16, 1);
END;
GO



















