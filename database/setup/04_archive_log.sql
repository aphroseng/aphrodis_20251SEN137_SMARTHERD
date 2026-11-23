-- ============================================================================
-- Name: Aphrodis Senga
-- Student ID: 20251SEN137
-- Group: Group I
-- Project: SmartHerd
-- File: database/setup/04_archive_log.sql
-- ============================================================================

-- Archive logging is a CDB-level setting (requires SYSDBA & CDB restart/MOUNT,
-- affects all PDBs; run ARCHIVELOG changes only on your local machine).

ALTER SESSION SET CONTAINER = CDB$ROOT;

SELECT name AS db_name,
       log_mode,
       open_mode
FROM v$database;

-- Local machine only (in SQL*Plus as SYSDBA):
-- SHUTDOWN IMMEDIATE;
-- STARTUP MOUNT;
-- ALTER DATABASE ARCHIVELOG;
-- ALTER DATABASE OPEN;