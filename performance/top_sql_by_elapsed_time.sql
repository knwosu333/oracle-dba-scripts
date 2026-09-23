-- Top SQL statements by cumulative elapsed time
SET LINESIZE 220
COLUMN sql_text FORMAT A90

SELECT * FROM (
  SELECT sql_id,
         executions,
         ROUND(elapsed_time/1000000,2) AS elapsed_seconds,
         ROUND(CASE WHEN executions > 0
              THEN elapsed_time/1000000/executions END,4) AS avg_elapsed_seconds,
         SUBSTR(sql_text,1,90) AS sql_text
  FROM v$sql
  WHERE executions > 0
  ORDER BY elapsed_time DESC
)
WHERE ROWNUM <= 20;
