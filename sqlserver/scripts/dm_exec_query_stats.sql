-- /opt/mssql-tools/bin/sqlcmd -y 0 -S localhost -U SA -P 'Strong!Password' -d sakila -i dm_exec_query_stats.sql | tr -d '\n' | jq .[] -c

SET NOCOUNT ON;
 
SELECT SUBSTRING(qt.TEXT, (qs.statement_start_offset/2)+1, 
((CASE qs.statement_end_offset 
WHEN -1 THEN DATALENGTH(qt.TEXT) 
ELSE qs.statement_end_offset 
END - qs.statement_start_offset)/2)+1) query, 
qs.execution_count, 
qs.total_logical_reads, qs.last_logical_reads, 
qs.total_logical_writes, qs.last_logical_writes, 
qs.total_worker_time, 
qs.last_worker_time, 
qs.total_elapsed_time, 
qs.last_elapsed_time, 
qs.last_execution_time 
FROM sys.dm_exec_query_stats qs 
CROSS APPLY sys.dm_exec_sql_text(qs.sql_handle) qt 
CROSS APPLY sys.dm_exec_query_plan(qs.plan_handle) qp 
-- ORDER BY qs.total_logical_reads DESC -- logical reads 
-- ORDER BY qs.total_logical_writes DESC -- logical writes 
-- ORDER BY qs.total_worker_time DESC -- CPU time 
FOR JSON AUTO;
