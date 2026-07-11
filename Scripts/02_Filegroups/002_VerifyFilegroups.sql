/******************************************************************************
Project      : BuildingDW
Script       : 002_VerifyFilegroups.sql

Purpose
-------
Verifies the filegroups created in BuildingDW.

******************************************************************************/

USE BuildingDW;
GO

SELECT 
	name AS FileGroupName,
	data_space_id,
	type_desc,
	is_default
FROM SYS.FILEGROUPS 