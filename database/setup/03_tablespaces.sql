-- ============================================================================
-- Name: Aphrodis Senga
-- Student ID: 20251SEN137
-- Group: Group I
-- Project: SmartHerd
-- File: database/setup/03_tablespaces.sql
-- ============================================================================

ALTER SESSION SET CONTAINER = i_20251sen137_aphrodis_herd_db;

CREATE TABLESPACE smartherd_data
  DATAFILE 'C:\USERS\LENOVO\DOWNLOADS\ORADATA\ORCL\I_20251SEN137_APHRODIS_HERD_DB\smartherd_data01.dbf'
  SIZE 100M
  AUTOEXTEND ON NEXT 10M MAXSIZE 1G;

CREATE TABLESPACE smartherd_idx
  DATAFILE 'C:\USERS\LENOVO\DOWNLOADS\ORADATA\ORCL\I_20251SEN137_APHRODIS_HERD_DB\smartherd_idx01.dbf'
  SIZE 50M
  AUTOEXTEND ON NEXT 10M MAXSIZE 500M;

CREATE TEMPORARY TABLESPACE smartherd_temp
  TEMPFILE 'C:\USERS\LENOVO\DOWNLOADS\ORADATA\ORCL\I_20251SEN137_APHRODIS_HERD_DB\smartherd_temp01.dbf'
  SIZE 50M
  AUTOEXTEND ON NEXT 10M MAXSIZE 500M;

ALTER USER aphrodis_admin
  DEFAULT TABLESPACE smartherd_data
  TEMPORARY TABLESPACE smartherd_temp;

ALTER USER aphrodis_admin QUOTA UNLIMITED ON smartherd_data;
ALTER USER aphrodis_admin QUOTA UNLIMITED ON smartherd_idx;

SELECT tablespace_name, contents, status
FROM dba_tablespaces
WHERE tablespace_name IN ('SMARTHERD_DATA', 'SMARTHERD_IDX', 'SMARTHERD_TEMP');

SELECT username, default_tablespace, temporary_tablespace
FROM dba_users
WHERE username = 'APHRODIS_ADMIN';