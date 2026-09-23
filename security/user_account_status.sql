-- Review database user account status
SET LINESIZE 200
COLUMN username FORMAT A30
COLUMN account_status FORMAT A25
COLUMN profile FORMAT A25

SELECT username, account_status, profile,
       created, expiry_date, lock_date
FROM dba_users
ORDER BY account_status, username;
