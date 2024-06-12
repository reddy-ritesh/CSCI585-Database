--Programiz SQL Editor
--https://www.programiz.com/sql/online-compiler/

CREATE TABLE SymptomsReference (
  symptom_id INT PRIMARY KEY,
  symptom_name TEXT
);



INSERT INTO SymptomsReference (symptom_id, symptom_name) VALUES (1, 'Fever');
INSERT INTO SymptomsReference (symptom_id, symptom_name) VALUES (2, 'Cough');
INSERT INTO SymptomsReference (symptom_id, symptom_name) VALUES (3, 'Shortness of Breath');
INSERT INTO SymptomsReference (symptom_id, symptom_name) VALUES (4, 'Fatigue');
INSERT INTO SymptomsReference (symptom_id, symptom_name) VALUES (5, 'Loss of Taste or Smell');
INSERT INTO SymptomsReference (symptom_id, symptom_name) VALUES (6, 'Body Aches');
INSERT INTO SymptomsReference (symptom_id, symptom_name) VALUES (7, 'Headache');
INSERT INTO SymptomsReference (symptom_id, symptom_name) VALUES (8, 'Sore Throat');
INSERT INTO SymptomsReference (symptom_id, symptom_name) VALUES (9, 'Chills');
INSERT INTO SymptomsReference (symptom_id, symptom_name) VALUES (10, 'Congestion or Runny Nose');




SELECT symptom_name, COUNT(*) as report_count
FROM Symptom
JOIN SymptomsReference ON Symptom.symptom_id = SymptomsReference.symptom_id
GROUP BY Symptom.symptom_id, symptom_name
ORDER BY report_count DESC
LIMIT 1;
