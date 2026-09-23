# Oracle DBA Scripts

A practical collection of Oracle Database administration scripts for health monitoring, storage management, session troubleshooting, performance analysis, security reviews, and routine maintenance.

> **Portfolio note:** These scripts are intended for lab, training, and DBA portfolio use. Review and test all statements before running them in production.

## Repository Structure

- `health-checks/` — database status and operational health
- `storage/` — tablespace and datafile utilization
- `sessions/` — active sessions and blocking diagnostics
- `performance/` — SQL performance and wait-event analysis
- `security/` — users, roles, and account reviews
- `maintenance/` — invalid objects and routine maintenance

## Included Scripts

| Script | Purpose |
|---|---|
| `health-checks/database_health_check.sql` | Instance, database, uptime, and archive mode overview |
| `storage/tablespace_usage.sql` | Monitor permanent tablespace utilization |
| `sessions/blocking_sessions.sql` | Identify blocking and blocked sessions |
| `performance/top_sql_by_elapsed_time.sql` | Find SQL consuming the most elapsed time |
| `security/user_account_status.sql` | Review database users and account status |
| `maintenance/invalid_objects.sql` | Find invalid database objects |

## Usage

Connect with SQL*Plus, SQLcl, or another Oracle client using an appropriately privileged account and run a script:

```sql
@storage/tablespace_usage.sql
```

Some dynamic performance views require catalog privileges or equivalent permissions.

## DBA Areas Demonstrated

Oracle architecture • SQL/PLSQL • Performance tuning • Storage administration • Session troubleshooting • Security • Production monitoring

## Disclaimer

Use these examples only after validating them for your Oracle version and environment. Never store production credentials, connection strings, customer data, or proprietary employer information in a public repository.
