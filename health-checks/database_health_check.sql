-- Oracle database health overview
SET LINESIZE 200
SET PAGESIZE 100
COLUMN host_name FORMAT A30
COLUMN instance_name FORMAT A15
COLUMN status FORMAT A12
COLUMN database_status FORMAT A18

SELECT instance_name, host_name, version, status, database_status,
       startup_time
FROM v$instance;

SELECT name, open_mode, database_role, log_mode, flashback_on
FROM v$database;

SELECT ROUND((SYSDATE - startup_time) * 24, 2) AS uptime_hours
FROM v$instance;
