SELECT student_id, email 
FROM students 
WHERE email = 'ashlesh_raut_invalid';

UPDATE students
SET email = 'ashlesh.raut@codejudge.edu'
WHERE student_id = 'STU001' 
  AND email = 'ashlesh_raut_invalid';

SELECT student_id, email 
FROM students 
WHERE student_id = 'STU001';

SELECT problem_id, max_score 
FROM problems 
WHERE problem_id = 'PROB042';

UPDATE problems
SET max_score = 100
WHERE problem_id = 'PROB042' 
  AND max_score <= 0;

SELECT problem_id, max_score 
FROM problems 
WHERE problem_id = 'PROB042';

SELECT enrollment_id, status 
FROM enrollments 
WHERE enrollment_id = 'ENR991';

UPDATE enrollments
SET status = 'active'
WHERE enrollment_id = 'ENR991' 
  AND status = 'pending';

SELECT enrollment_id, status 
FROM enrollments 
WHERE enrollment_id = 'ENR991';

SELECT request_id, status 
FROM regrade_requests 
WHERE request_id = 'REQ007';

UPDATE regrade_requests
SET status = 'resolved'
WHERE request_id = 'REQ007' 
  AND status = 'pending_review';

SELECT request_id, status 
FROM regrade_requests 
WHERE request_id = 'REQ007';
