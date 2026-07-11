/******************************************************************************
Project      : BuildingDW
Script       : 002_VerifySchemas.sql

Purpose
-------
Verifies application schemas.

******************************************************************************/

USE BuildingDW;
GO

SELECT 
	schema_id, 
	name, 
	principal_id 
FROM SYS.SCHEMAS 
ORDER BY name;
GO

select * from sys.schemas;