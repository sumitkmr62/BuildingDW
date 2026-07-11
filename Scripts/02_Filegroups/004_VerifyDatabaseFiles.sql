/******************************************************************************
Project      : BuildingDW
Script       : 004_VerifyDatabaseFiles.sql

Purpose
-------
Verifies all physical database files.

******************************************************************************/

USE BuildingDW;
GO

SELECT 
	file_id,
	name,
	type_desc,
	physical_name,
	size / 128.0 AS SizeMB,
	growth / 128.0 AS GrowthMB,
	CASE
	WHEN
		type_desc = 'LOG' THEN 'LOG'
	ELSE
		FILEGROUP_NAME(data_space_id)
	END
FROM SYS.DATABASE_FILES
ORDER BY file_id;
