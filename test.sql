-- Create a SQL query that you want to run
CREATE OR REPLACE TABLE dbttest1.your_table_name AS
SELECT *
FROM SNOWFLAKE.dbttest1.your_source_table;


CREATE OR REPLACE TABLE schemaTestRun.Table_test AS
SELECT *
FROM DBTtestRun1.schemaTestRun.SOURCE_TABLETEST;


CREATE TASK mytask
  WAREHOUSE = AIKOTEST_WH  
  SCHEDULE = '5 MINUTE'
AS
INSERT INTO TABLE_TEST VALUES( EMPLOYEE_SEQUENCE.NEXTVAL,'F_NAME','L_NAME','101');

