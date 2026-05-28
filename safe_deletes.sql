SELECT COUNT(*) 
FROM student_import_raw 
WHERE import_id = 'TMP_90812';

DELETE FROM student_import_raw
WHERE import_id = 'TMP_90812';

SELECT COUNT(*) 
FROM test_results 
WHERE test_result_id = 'RES_EMPTY_01';

DELETE FROM test_results
WHERE test_result_id = 'RES_EMPTY_01';
