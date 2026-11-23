-- ============================================================================
-- Name: Aphrodis Senga
-- Student ID: 20251SEN137
-- Group: Group I
-- Project: SmartHerd
-- File: database/setup/02_create_user.sql
-- ============================================================================
--pluggable database creation

CREATE PLUGGABLE DATABASE i_20251sen137_aphrodis_herd_db
  ADMIN USER aphrodis_admin IDENTIFIED BY aphrodis
  FILE_NAME_CONVERT = (
    'C:\USERS\LENOVO\DOWNLOADS\ORADATA\ORCL\PDBSEED\',
    'C:\USERS\LENOVO\DOWNLOADS\ORADATA\ORCL\I_20251SEN137_APHRODIS_HERD_DB\'
  );

ALTER PLUGGABLE DATABASE i_20251sen137_aphrodis_herd_db OPEN READ WRITE;

ALTER PLUGGABLE DATABASE i_20251sen137_aphrodis_herd_db SAVE STATE;

SHOW PDBS;
