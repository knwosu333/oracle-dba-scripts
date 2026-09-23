-- Identify blocked sessions and their blockers
SET LINESIZE 220
COLUMN username FORMAT A20
COLUMN event FORMAT A35

SELECT sid, serial#, username, status, event,
       blocking_instance, blocking_session,
       seconds_in_wait
FROM v$session
WHERE blocking_session IS NOT NULL
ORDER BY seconds_in_wait DESC;
