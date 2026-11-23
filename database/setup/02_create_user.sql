-- ============================================================================
-- Name: Aphrodis Senga
-- Student ID: 20251SEN137
-- Group: Group I
-- Project: SmartHerd
-- File: database/setup/02_create_user.sql
-- ============================================================================

ALTER SESSION SET CONTAINER = i_20251sen137_aphrodis_herd_db;

CREATE USER aphrodis_admin IDENTIFIED BY aphrodis;

GRANT DBA TO aphrodis_admin;

SELECT username, account_status
FROM dba_users
WHERE username = 'APHRODIS_ADMIN';

SELECT sys_context('USERENV', 'CON_NAME') AS current_container
FROM dual;