-- ============================================================================
-- Name: Aphrodis Senga
-- Student ID: 20251SEN137
-- Group: Group I
-- Project: SmartHerd
-- File: database/setup/05_verify.sql
-- ============================================================================


SELECT name AS db_name,
       log_mode,
       open_mode
FROM v$database;

ALTER SESSION SET CONTAINER = i_20251sen137_aphrodis_herd_db;

SELECT sys_context('USERENV', 'CON_NAME') AS current_pdb,
       sys_context('USERENV', 'SESSION_USER') AS session_user
FROM dual;

SELECT username,
       default_tablespace,
       temporary_tablespace
FROM user_users;

SELECT tablespace_name,
       status,
       contents
FROM user_tablespaces;