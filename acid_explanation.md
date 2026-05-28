# ACID Properties Transactional Analysis

This document explains how ACID parameters protect data integrity using our **Scenario 3 Score Correction Workflow** as a case study.

## 1. Atomicity ("All-or-Nothing")
Atomicity guarantees that a transaction is treated as a single unit of work. Either all database updates succeed, or the entire transaction is discarded.
* **Application Case:** If the system updates the `max_score` in the `problems` table, but a server crash prevents writing to the `operation_requests` log, **Atomicity** forces a full rollback. This prevents partial writes from corrupting your audit trails.

## 2. Consistency
Consistency ensures that a transaction can only transition the database from one valid state to another, maintaining all schema constraints, rules, and triggers.
* **Application Case:** If an operation violates a `FOREIGN KEY` or a `CHECK` constraint (such as setting a score below zero), the database engine rejects the entire block. This keeps your relational data clean and trustworthy.

## 3. Isolation
Isolation ensures that concurrent transactions execute independently without bleeding uncommitted data into one another.
* **Application Case:** While our administrative score adjustment transaction is running, a student submitting code for that exact problem will not see the uncommitted change until our transaction finishes with an explicit `COMMIT`. This prevents race conditions and dirty reads.

## 4. Durability
Durability guarantees that once a transaction commits, its changes are permanently written to non-volatile storage, surviving even a sudden system crash or power failure.
* **Application Case:** The moment the database returns a successful completion message for `COMMIT`, the new score and log rows are safely committed to disk storage. They are guaranteed to be present when the system reboots.
