SELECT * FROM SYS.DATABASES WHERE NAME = 'BuildingDW';

SELECT 
	database_id,
	DB_NAME(database_id) AS DatabaseName,
	name AS LogicalFileName,
	physical_name
FROM SYS.master_files WHERE database_id = 13;
GO


