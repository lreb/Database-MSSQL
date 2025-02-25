-- =============================================
-- Author:		Luis Raul Espinoza Barboza
-- Create date: 2021-11-04
-- Description:	Retrieve tables with specific FK
-- =============================================
-- Set table name
DECLARE @tableName VARCHAR(30) = 'Metadata'

SELECT 
   OBJECT_NAME(f.parent_object_id) TableName,
   COL_NAME(fc.parent_object_id,fc.parent_column_id) ColName
FROM 
   sys.foreign_keys AS f
INNER JOIN 
   sys.foreign_key_columns AS fc 
      ON f.OBJECT_ID = fc.constraint_object_id
INNER JOIN 
   sys.tables t 
      ON t.OBJECT_ID = fc.referenced_object_id
WHERE 
   OBJECT_NAME (f.referenced_object_id) = @tableName;
