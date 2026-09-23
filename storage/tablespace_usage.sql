-- Permanent tablespace utilization
SET LINESIZE 200
COLUMN tablespace_name FORMAT A30

WITH df AS (
  SELECT tablespace_name, SUM(bytes) bytes
  FROM dba_data_files
  GROUP BY tablespace_name
), fs AS (
  SELECT tablespace_name, SUM(bytes) bytes
  FROM dba_free_space
  GROUP BY tablespace_name
)
SELECT df.tablespace_name,
       ROUND(df.bytes/1024/1024/1024,2) AS total_gb,
       ROUND((df.bytes-NVL(fs.bytes,0))/1024/1024/1024,2) AS used_gb,
       ROUND(NVL(fs.bytes,0)/1024/1024/1024,2) AS free_gb,
       ROUND((df.bytes-NVL(fs.bytes,0))*100/df.bytes,2) AS pct_used
FROM df LEFT JOIN fs ON df.tablespace_name = fs.tablespace_name
ORDER BY pct_used DESC;
