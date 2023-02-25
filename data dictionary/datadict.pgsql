
WITH 

vars AS (
  SELECT 
    'public'     AS v_SchemaName
  , 'NO'         AS v_TablesOnly 
), baseTbl AS (
  SELECT table_schema AS SchemaName, table_catalog ,table_type, table_name, table_schema
  FROM INFORMATION_SCHEMA.TABLES
  WHERE TABLE_SCHEMA = (SELECT v_SchemaName FROM vars) 
    AND (    (TABLE_TYPE = 'BASE TABLE')
	     OR  ((SELECT v_TablesOnly FROM vars) = 'NO')  
	    )
)

, metadata
AS (
	SELECT
	  bt.SchemaName     AS schema_nm
	, bt.table_name     AS field_name
	, CASE WHEN bt.TABLE_TYPE = 'BASE TABLE' THEN 'TBL'
	       WHEN bt.TABLE_TYPE = 'VIEW'  THEN 'VW'
	       ELSE 'UK'
	  END AS obj_type
	, tut.ordinal_position   AS ord_pos
	, tut.column_name        AS column_nm 
    , CONCAT(COALESCE(tut.data_type, 'unknown'), 
      CASE WHEN tut.data_type IN('varchar','char')        THEN CONCAT('(', CAST(tut.CHARACTER_MAXIMUM_LENGTH AS varchar(10)), ')')
	       WHEN tut.data_type IN('date','time')           THEN CONCAT('(3)')
	       WHEN tut.data_type = 'datetime'                THEN CONCAT('(8)')
	       WHEN tut.data_type = 'timestamp'               THEN CONCAT('(4)')
	       WHEN tut.data_type in('bigint','integer','smallint') THEN CONCAT('(', CAST(tut.NUMERIC_PRECISION AS varchar(10)), ')')
	       WHEN tut.data_type = 'decimal'                 THEN CONCAT('(', CAST(tut.NUMERIC_PRECISION AS varchar(10)), ',', CAST(tut.NUMERIC_SCALE AS varchar(10)), ')')
	       WHEN tut.CHARACTER_MAXIMUM_LENGTH IS NOT NULL  THEN CONCAT('(', CAST(tut.CHARACTER_MAXIMUM_LENGTH AS varchar(10)), ')')
		   WHEN tut.DATETIME_PRECISION IS NOT NULL        THEN CONCAT('(', CAST(tut.DATETIME_PRECISION AS varchar(10)), ')')
	       WHEN tut.NUMERIC_PRECISION IS NOT NULL
		    AND tut.NUMERIC_SCALE     IS NULL             THEN CONCAT('(', CAST(tut.NUMERIC_PRECISION AS varchar(10)), ')')
	       WHEN tut.NUMERIC_PRECISION IS NOT NULL
	        AND tut.NUMERIC_SCALE     IS NOT NULL         THEN CONCAT('(', CAST(tut.NUMERIC_PRECISION AS varchar(10)), ',', CAST(tut.NUMERIC_SCALE AS varchar(10)), ')')
		   ELSE ''
    END ) AS data_type 
  , CASE WHEN lower(tut.IS_NULLABLE) = 'yes' THEN 'no' ELSE 'yes' END AS nullable
  FROM       INFORMATION_SCHEMA.COLUMNS tut
  INNER JOIN baseTbl                    bt  ON bt.table_catalog = tut.TABLE_CATALOG AND bt.table_name = tut.table_name
)

, meta_for_keys
AS (
  SELECT schema_nm, field_name, column_nm
  , STRING_AGG(is_key, ',' ORDER BY is_key) AS is_key
  FROM (
    SELECT cons.TABLE_SCHEMA AS schema_nm
    , cons.TABLE_NAME        AS field_name
    , kcu.COLUMN_NAME        AS column_nm
    , CASE WHEN cons.constraint_type = 'PRIMARY KEY' THEN 'PK'
           WHEN cons.constraint_type = 'UNIQUE'      THEN 'UK'
           WHEN cons.constraint_type = 'FOREIGN KEY' THEN 'FK'
	       ELSE 'X'
      END AS is_key
    FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS      cons 
    INNER JOIN INFORMATION_SCHEMA.KEY_COLUMN_USAGE kcu 
       ON cons.TABLE_SCHEMA = kcu.TABLE_SCHEMA  
      AND cons.TABLE_NAME = kcu.TABLE_NAME
  	  AND cons.CONSTRAINT_NAME = kcu.CONSTRAINT_NAME
    WHERE cons.table_schema = (SELECT v_SchemaName FROM vars) 
      AND cons.table_name IN(SELECT DISTINCT table_name FROM baseTbl)
      AND cons.constraint_type IN('PRIMARY KEY','FOREIGN KEY','UNIQUE') 
    GROUP BY cons.TABLE_SCHEMA, cons.TABLE_NAME, kcu.COLUMN_NAME, cons.constraint_type
  ) t
  GROUP BY schema_nm, field_name, column_nm
)

, col_comm
AS (
	SELECT c.TABLE_SCHEMA AS schema_nm
	, c.TABLE_NAME        AS field_name
	, c.COLUMN_NAME       AS column_nm
	, pgd.DESCRIPTION     AS column_descr
	FROM pg_catalog.pg_statio_all_tables   AS st
	INNER JOIN pg_catalog.PG_DESCRIPTION   AS pgd ON pgd.objoid = st.relid
	INNER JOIN INFORMATION_SCHEMA.COLUMNS  AS c   ON pgd.objsubid = c.ordinal_position
	                                             AND c.table_schema = st.schemaname
	                                             AND c.table_name = st.relname
	WHERE c.table_schema = (SELECT v_SchemaName FROM vars) 
	  AND c.table_name IN(SELECT DISTINCT table_name FROM baseTbl)
)

SELECT md.field_name AS tbl_name
, COALESCE(pk.is_key, ' ') AS constraint
, md.COLUMN_NM, md.data_type, md.NULLABLE AS required, c.column_descr description 
FROM      metadata      md
LEFT JOIN meta_for_keys pk ON pk.SCHEMA_NM = md.SCHEMA_NM AND pk.field_name = md.field_name AND pk.COLUMN_NM = md.COLUMN_NM
LEFT JOIN col_comm      c  ON c.SCHEMA_NM  = md.SCHEMA_NM AND c.field_name  = md.field_name AND c.COLUMN_NM  = md.COLUMN_NM
ORDER BY md.SCHEMA_NM, md.field_name, md.ORD_POS
-- based on https://raw.githubusercontent.com/DataResearchLabs/sql_scripts/main/postgresql/data_dictionary/data_dict_dump.sql