# Database Reliability Incident Note
**Classification:** Critical Production Recovery Log

## 1. What Went Wrong
An engineer accidentally executed a bulk `UPDATE` statement targeting user records on the live database platform without providing a filtering `WHERE` clause:
```sql
-- INCIDENT CODE ERRORS
UPDATE students SET status = 'deactivated';
