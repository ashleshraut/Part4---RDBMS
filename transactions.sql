
BEGIN TRANSACTION;

INSERT INTO submissions (submission_id, student_id, problem_id, language, submitted_at)
VALUES ('SUB_2026_X', 'STU001', 'PROB005', 'Python', CURRENT_TIMESTAMP);

ROLLBACK;

BEGIN TRANSACTION;

UPDATE students 
SET email = 'new_verified_email@codejudge.com' 
WHERE student_id = 'STU001';

SAVEPOINT student_profile_saved;

INSERT INTO enrollments (enrollment_id, student_id, batch_id, status)
VALUES ('ENR_FAIL_99', 'STU001', 'NON_EXISTENT_BATCH', 'active');

ROLLBACK TO SAVEPOINT student_profile_saved;

COMMIT;


BEGIN TRANSACTION;

UPDATE problems
SET max_score = 150
WHERE problem_id = 'PROB010';

INSERT INTO operation_requests (request_id, operation_type, executed_by, log_time)
VALUES ('OP_REQ_55', 'SCORE_ADJUSTMENT', 'ADMIN_01', CURRENT_TIMESTAMP);

COMMIT;
