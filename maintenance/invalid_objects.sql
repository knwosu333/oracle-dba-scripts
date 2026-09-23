-- Find invalid database objects
SET LINESIZE 200
COLUMN owner FORMAT A25
COLUMN object_name FORMAT A40
COLUMN object_type FORMAT A25

SELECT owner, object_name, object_type, status
FROM dba_objects
WHERE status = 'INVALID'
ORDER BY owner, object_type, object_name;
