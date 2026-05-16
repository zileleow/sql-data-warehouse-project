/*
=============================================================
Create Database and Schemas
=============================================================
Sciprt Purpose: 
  This script creates the database 'Data_Warehouse' after checking if it already exists. If the database exists, it is dropped and recreated. Else, the database will
  be created. Afterwards, the three schemas 'gold', 'silver' and bronze will be created within the database.

WARNING⚠️:
  Running the script will drop the existing database 'Data_Warehouse' if it already exists and all data will be permenantly deleted. Please proceed with caution and
  check before running this script.
*/

USE MASTER;
GO

-- Drop and recreate the "Data_Warehouse" database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Data_Warehhouse')
BEGIN
  ALTER DATABASE Data_Warehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE Data_Warehouse
END;
GO

--Create the "Data_Warehouse" database again
CREATE DATABASE Data_Warehouse;
GO

USE Data_Warehouse;
GO

-- Create the schemas
CREATE SCHEMA bronze; 
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold; 
