--Programiz SQL Editor
--https://www.programiz.com/sql/online-compiler/

SELECT e.floor_number, COUNT(*) as total_symptoms
FROM Symptom s
JOIN Employee e ON s.employee_id = e.id
GROUP BY e.floor_number
ORDER BY total_symptoms DESC
LIMIT 1;
