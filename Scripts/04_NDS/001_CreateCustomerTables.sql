/******************************************************************************
Project      : BuildingDW
Layer        : Normalized Data Store (NDS)
Module       : Customer
Script       : 001_CreateCustomerType.sql

Purpose      : Creates the Customer Type lookup table.

Author       : Sumit Kumar
Created On   : 11-Jul-2026

Description  :
    - Based on "Building a Data Warehouse with Examples in SQL Server"
    - Creates the customer_type lookup table.
    - Customer table will reference this table via customer_type_key.
******************************************************************************/

USE BuildingDW;
GO

/*****************************************************************************
DROP TABLE IF EXISTS
*****************************************************************************/

DROP TABLE IF EXISTS nds.CustomerType;
GO

/*****************************************************************************
CREATE TABLE
*****************************************************************************/

CREATE TABLE nds.CustomerType
(
    CustomerTypeKey INT IDENTITY(1,1) NOT NULL,
    
    CustomerTypeCode VARCHAR(20) NOT NULL,
    
    CustomerTypeName VARCHAR(100) NOT NULL,
    
    Description VARCHAR(255) NOT NULL,
    
    CreateTimeStamp DATETIME2(0) NOT NULL
        CONSTRAINT DF_CustomerType_CreateTimeStamp
        DEFAULT(SYSDATETIME()),

    UpdateTimeStamp DATETIME2(0) NOT NULL
        CONSTRAINT DF_CustomerType_UpdateTimeStamp
        DEFAULT(SYSDATETIME()),

    CONSTRAINT PK_CustomerType
        PRIMARY KEY CLUSTERED (CustomerTypeKey)
);
GO

/*****************************************************************************
VERIFICATION
*****************************************************************************/


PRINT 'CustomerType table created successfully.'
GO

















