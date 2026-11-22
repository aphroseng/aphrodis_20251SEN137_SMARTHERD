
CONNECT / AS SYSDBA

CREATE PLUGGABLE DATABASE i_20251sen137_aphrodis_herd_db
  ADMIN USER aphrodis_admin IDENTIFIED BY aphrodis
  FILE_NAME_CONVERT = ('/u01/app/oracle/oradata/ORCL/pdbseed/', '/u01/app/oracle/oradata/ORCL/i_20251sen137_aphrodis_herd_db/');

ALTER PLUGGABLE DATABASE i_20251sen137_aphrodis_herd_db OPEN READ WRITE;

ALTER PLUGGABLE DATABASE i_20251sen137_aphrodis_herd_db SAVE STATE;

SHOW PDBS;
