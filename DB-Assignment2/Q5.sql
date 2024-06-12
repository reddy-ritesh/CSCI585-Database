--Programiz SQL Editor
--https://www.programiz.com/sql/online-compiler/


--Which employees have consistently reported being healthy in the given period and have had no symptoms, no positive tests, and no cases?"

-- Base Employee List


WITH AllEmployees AS (
  SELECT id
  FROM Employee
),

-- Employees Reporting Symptoms
SymptomaticEmployees AS (
  SELECT DISTINCT employee_id
  FROM Symptom
  WHERE date_reported BETWEEN '2023-10-01' AND '2023-10-31'
),

-- Employees with Positive Test Results
PositiveTestEmployees AS (
  SELECT DISTINCT employee_id
  FROM Test
  WHERE test_date BETWEEN '2023-10-01' AND '2023-10-31' AND test_result = 'Positive'
),

-- Employees Registered as Cases
CaseEmployees AS (
  SELECT DISTINCT EMPLOYEE_ID
  FROM CASES
  WHERE CASE_DATE BETWEEN '2023-10-01' AND '2023-10-31'
)

-- Final Query using Table Division Concept
SELECT id AS Employee_ID
FROM AllEmployees
WHERE id NOT IN (SELECT employee_id FROM SymptomaticEmployees)
AND id NOT IN (SELECT employee_id FROM PositiveTestEmployees)
AND id NOT IN (SELECT EMPLOYEE_ID FROM CaseEmployees);
