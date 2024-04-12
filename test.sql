CREATE DATABASE IF NOT EXISTS DBTtestRun1;

CREATE SCHEMA IF NOT EXISTS schemaTestRun;

CREATE TASK IF NOT EXISTS run;

-- Create a warehouse to run the task
CREATE WAREHOUSE AIKOTEST_WH;

-- Create or replace the source table if it does not exist
CREATE OR REPLACE TABLE schemaTestRun.Source_tabletest (
    column1_task VARCHAR,
    column2_one INT,
    column3_time DATE);

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

