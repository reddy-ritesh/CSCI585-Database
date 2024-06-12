--Programiz SQL Editor
--https://www.programiz.com/sql/online-compiler/

-- For Number of Scans
SELECT COUNT(*) as total_scans
FROM Scan
WHERE scan_date BETWEEN '2023-10-01' AND '2023-10-07';

-- For Number of Tests
SELECT COUNT(*) as total_tests
FROM Test
WHERE test_date BETWEEN '2023-10-01' AND '2023-10-07';

-- For Number of Employees Reporting Symptoms
SELECT COUNT(DISTINCT employee_id) as total_employees_reported_symptoms
FROM Symptom
WHERE date_reported BETWEEN '2023-10-01' AND '2023-10-07';

-- For Number of Positive Cases
SELECT COUNT(*) as total_positive_cases
FROM Test
WHERE test_date BETWEEN '2023-10-01' AND '2023-10-07' AND test_result = 'Positive';
