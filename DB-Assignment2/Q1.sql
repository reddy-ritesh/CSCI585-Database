--Programiz SQL Editor
--https://www.programiz.com/sql/online-compiler/

CREATE TABLE Employee (
  id INT PRIMARY KEY, 
  name TEXT,
  office_number INT,
  floor_number INT,
  phone_number TEXT,
  email_address TEXT
);

CREATE TABLE Meeting (
  meeting_id INT PRIMARY KEY,
  employee_id INT,
  room_number INT,
  floor_number INT,
  meeting_start_time INT,
  FOREIGN KEY (employee_id) REFERENCES Employee(id)
);

CREATE TABLE Notification (
  notification_id INT PRIMARY KEY,
  employee_id INT,
  notification_date DATE,
  notification_type TEXT,
  FOREIGN KEY (employee_id) REFERENCES Employee(id)
);

CREATE TABLE Symptom (
  row_id INT PRIMARY KEY,
  employee_id INT,
  date_reported DATE,
  symptom_id INT,
  FOREIGN KEY (employee_id) REFERENCES Employee(id)
);

CREATE TABLE Scan (
  scan_id INT PRIMARY KEY,
  scan_date DATE,
  scan_time INT,
  employee_id INT,
  temperature REAL,
  FOREIGN KEY (employee_id) REFERENCES Employee(id)
);

CREATE TABLE Test (
  test_id INT PRIMARY KEY,
  location TEXT,
  test_date DATE,
  test_time INT,
  employee_id INT,
  test_result TEXT,
  FOREIGN KEY (employee_id) REFERENCES Employee(id)
);

CREATE TABLE CASES (
  CASE_ID INT PRIMARY KEY,
  EMPLOYEE_ID INT REFERENCES EMPLOYEE(ID),
  CASE_DATE DATE NOT NULL,
  RESOLUTION TEXT NOT NULL
);

CREATE TABLE HEALTHSTATUS (
  ROW_ID INT PRIMARY KEY,
  EMPLOYEE_ID INT REFERENCES EMPLOYEE(ID),
  REPORT_DATE DATE,
  STATUS TEXT
);


INSERT INTO EMPLOYEE (ID, NAME, OFFICE_NUMBER, FLOOR_NUMBER, PHONE_NUMBER, EMAIL_ADDRESS) 
VALUES 
  (1, 'John Doe', 101, 1, '123-456-7890', 'john.doe@example.com'),
  (2, 'Jane Doe', 102, 2, '234-567-8901', 'jane.doe@example.com'),
  (3, 'Alice Johnson', 103, 1, '345-678-9012', 'alice.johnson@example.com'),
  (4, 'Bob Williams', 104, 2, '456-789-0123', 'bob.williams@example.com'),
  (5, 'Charlie Brown', 105, 3, '567-890-1234', 'charlie.brown@example.com'),
  (6, 'Diana Smith', 106, 4, '678-901-2345', 'diana.smith@example.com'),
  (7, 'Edward Jones', 107, 5, '789-012-3456', 'edward.jones@example.com'),
  (8, 'Fiona Davis', 108, 6, '890-123-4567', 'fiona.davis@example.com'),
  (9, 'George Rodriguez', 109, 7, '901-234-5678', 'george.rodriguez@example.com'),
  (10, 'Hannah Martin', 110, 8, '012-345-6789', 'hannah.martin@example.com'),
  (11, 'Ivan Taylor', 111, 9, '123-456-7809', 'ivan.taylor@example.com'),
  (12, 'Jack Wilson', 112, 10, '234-567-8900', 'jack.wilson@example.com'),
  (13, 'Kelly Garcia', 113, 1, '321-654-0987', 'kelly.garcia@example.com'),
  (14, 'Larry Johnson', 114, 2, '432-765-0987', 'larry.johnson@example.com'),
  (15, 'Lucas Lee', 115, 3, '543-876-0987', 'lucas.lee@example.com'),
  (16, 'Maria Perez', 116, 4, '654-987-0987', 'maria.perez@example.com'),
  (17, 'Mark Young', 117, 5, '765-098-7654', 'mark.young@example.com'),
  (18, 'Nancy Walker', 118, 6, '876-109-8765', 'nancy.walker@example.com'),
  (19, 'Oliver Hall', 119, 7, '987-210-9876', 'oliver.hall@example.com'),
  (20, 'Patricia Allen', 120, 8, '098-321-0987', 'patricia.allen@example.com'),
  (21, 'Paul Moore', 121, 1, '209-432-1098', 'paul.moore@example.com'),
  (22, 'Rachel Scott', 122, 2, '210-543-2109', 'rachel.scott@example.com'),
  (23, 'Ralph King', 123, 3, '321-654-3210', 'ralph.king@example.com'),
  (24, 'Rebecca Wright', 124, 4, '432-765-4321', 'rebecca.wright@example.com'),
  (25, 'Robert Lopez', 125, 5, '543-876-5432', 'robert.lopez@example.com'),
  (26, 'Sarah Hill', 126, 6, '654-987-6543', 'sarah.hill@example.com'),
  (27, 'Steven Nelson', 127, 7, '765-098-7654', 'steven.nelson@example.com'),
  (28, 'Susan Adams', 128, 8, '876-109-8765', 'susan.adams@example.com'),
  (29, 'Thomas Baker', 129, 1, '987-210-9876', 'thomas.baker@example.com'),
  (30, 'Victoria Gonzalez', 130, 2, '098-321-0987', 'victoria.gonzalez@example.com'),
  (31, 'William Green', 131, 3, '209-432-2098', 'william.green@example.com'),
  (32, 'Zoe Carter', 132, 4, '210-543-3210', 'zoe.carter@example.com');


INSERT INTO MEETING (MEETING_ID, EMPLOYEE_ID, ROOM_NUMBER, FLOOR_NUMBER, MEETING_START_TIME) 
VALUES 
  (1, 1, 201, 2, 10), 
  (2, 2, 202, 3, 11),
  (3, 3, 203, 4, 12),
  (4, 4, 204, 5, 13),
  (5, 5, 205, 6, 14),
  (6, 6, 206, 7, 15),
  (7, 7, 207, 8, 16),
  (8, 8, 208, 9, 10),
  (9, 9, 209, 10, 11),
  (10, 10, 210, 2, 12),
  (11, 11, 211, 3, 13),
  (12, 12, 212, 4, 14),
  (13, 13, 213, 5, 15),
  (14, 14, 214, 6, 16),
  (15, 15, 215, 7, 10),
  (16, 16, 216, 8, 11),
  (17, 17, 217, 9, 12),
  (18, 18, 218, 10, 13),
  (19, 19, 219, 2, 14),
  (20, 20, 220, 3, 15),
  (21, 21, 221, 4, 16),
  (22, 22, 222, 5, 10),
  (23, 23, 223, 6, 11),
  (24, 24, 224, 7, 12),
  (25, 25, 225, 8, 13),
  (26, 26, 226, 9, 14),
  (27, 27, 227, 10, 15),
  (28, 28, 228, 2, 16),
  (29, 29, 229, 3, 10),
  (30, 30, 230, 4, 11),
  (31, 31, 231, 5, 12),
  (32, 32, 232, 6, 13);


INSERT INTO NOTIFICATION (NOTIFICATION_ID, EMPLOYEE_ID, NOTIFICATION_DATE, NOTIFICATION_TYPE) 
VALUES 
  (1, 1, '2023-01-01', 'MANDATORY'),
  (2, 2, '2023-01-02', 'OPTIONAL'),
  (3, 3, '2023-01-03', 'MANDATORY'),
  (4, 4, '2023-01-04', 'OPTIONAL'),
  (5, 5, '2023-01-05', 'MANDATORY'),
  (6, 6, '2023-01-06', 'OPTIONAL'),
  (7, 7, '2023-01-07', 'MANDATORY'),
  (8, 8, '2023-01-08', 'OPTIONAL'),
  (9, 9, '2023-01-09', 'MANDATORY'),
  (10, 10, '2023-01-10', 'OPTIONAL'),
  (11, 11, '2023-01-11', 'MANDATORY'),
  (12, 12, '2023-01-12', 'OPTIONAL'),
  (13, 13, '2023-01-13', 'MANDATORY'),
  (14, 14, '2023-01-14', 'OPTIONAL'),
  (15, 15, '2023-01-15', 'MANDATORY'),
  (16, 16, '2023-01-16', 'OPTIONAL'),
  (17, 17, '2023-01-17', 'MANDATORY'),
  (18, 18, '2023-01-18', 'OPTIONAL'),
  (19, 19, '2023-01-19', 'MANDATORY'),
  (20, 20, '2023-01-20', 'OPTIONAL'),
  (21, 21, '2023-01-21', 'MANDATORY'),
  (22, 22, '2023-01-22', 'OPTIONAL'),
  (23, 23, '2023-01-23', 'MANDATORY'),
  (24, 24, '2023-01-24', 'OPTIONAL'),
  (25, 25, '2023-01-25', 'MANDATORY'),
  (26, 26, '2023-01-26', 'OPTIONAL'),
  (27, 27, '2023-01-27', 'MANDATORY'),
  (28, 28, '2023-01-28', 'OPTIONAL'),
  (29, 29, '2023-01-29', 'MANDATORY'),
  (30, 30, '2023-01-30', 'OPTIONAL'),
  (31, 31, '2023-01-31', 'MANDATORY'),
  (32, 32, '2023-02-01', 'OPTIONAL');



INSERT INTO SYMPTOM (ROW_ID, EMPLOYEE_ID, DATE_REPORTED, SYMPTOM_ID) 
VALUES 
  (1, 1, '2023-09-27', 1),
  (2, 2, '2023-09-28', 2),
  (3, 3, '2023-09-29', 3),
  (4, 4, '2023-09-30', 4),
  (5, 5, '2023-10-01', 5),
  (6, 6, '2023-10-02', 1),
  (7, 7, '2023-10-03', 2),
  (8, 8, '2023-10-04', 3),
  (9, 9, '2023-10-05', 4),
  (10, 10, '2023-10-06', 5),
  (11, 11, '2023-10-07', 1),
  (12, 12, '2023-10-08', 2),
  (13, 13, '2023-10-09', 3),
  (14, 14, '2023-10-10', 4),
  (15, 15, '2023-10-11', 5),
  (16, 16, '2023-10-12', 1),
  (17, 17, '2023-10-13', 2),
  (18, 18, '2023-10-14', 3),
  (19, 19, '2023-10-15', 4),
  (20, 20, '2023-10-16', 5),
  (21, 21, '2023-10-17', 1),
  (22, 22, '2023-10-18', 2),
  (23, 23, '2023-10-19', 3),
  (24, 24, '2023-10-20', 4),
  (25, 25, '2023-10-21', 5),
  (26, 26, '2023-10-22', 1),
  (27, 27, '2023-10-23', 2),
  (28, 28, '2023-10-24', 3),
  (29, 29, '2023-10-25', 4),
  (30, 30, '2023-10-26', 5),
  (31, 31, '2023-10-27', 1),
  (32, 32, '2023-10-28', 2);



INSERT INTO SCAN (SCAN_ID, SCAN_DATE, SCAN_TIME, EMPLOYEE_ID, TEMPERATURE) 
VALUES 
  (1, '2023-09-27', 10, 1, 98.6),
  (2, '2023-09-28', 11, 2, 98.7),
  (3, '2023-09-29', 12, 3, 99.1),
  (4, '2023-09-30', 13, 4, 99.5),
  (5, '2023-10-01', 14, 5, 98.2),
  (6, '2023-10-02', 15, 6, 98.4),
  (7, '2023-10-03', 16, 7, 98.8),
  (8, '2023-10-04', 17, 8, 98.0),
  (9, '2023-10-05', 18, 9, 99.0),
  (10, '2023-10-06', 19, 10, 97.8),
  (11, '2023-10-07', 20, 11, 98.6),
  (12, '2023-10-08', 21, 12, 98.7),
  (13, '2023-10-09', 22, 13, 99.1),
  (14, '2023-10-10', 23, 14, 99.5),
  (15, '2023-10-11', 0, 15, 98.2),
  (16, '2023-10-12', 1, 16, 98.4),
  (17, '2023-10-13', 2, 17, 98.8),
  (18, '2023-10-14', 3, 18, 98.0),
  (19, '2023-10-15', 4, 19, 99.0),
  (20, '2023-10-16', 5, 20, 97.8),
  (21, '2023-10-17', 6, 21, 98.6),
  (22, '2023-10-18', 7, 22, 98.7),
  (23, '2023-10-19', 8, 23, 99.1),
  (24, '2023-10-20', 9, 24, 99.5),
  (25, '2023-10-21', 10, 25, 98.2),
  (26, '2023-10-22', 11, 26, 98.4),
  (27, '2023-10-23', 12, 27, 98.8),
  (28, '2023-10-24', 13, 28, 98.0),
  (29, '2023-10-25', 14, 29, 99.0),
  (30, '2023-10-26', 15, 30, 97.8),
  (31, '2023-10-27', 16, 31, 98.6),
  (32, '2023-10-28', 17, 32, 98.7);


INSERT INTO TEST (TEST_ID, LOCATION, TEST_DATE, TEST_TIME, EMPLOYEE_ID, TEST_RESULT) 
VALUES 
  (1, 'CLINIC', '2023-09-27', 10, 1, 'NEGATIVE'),
  (2, 'CLINIC', '2023-09-28', 12, 2, 'POSITIVE'),
  (3, 'HOSPITAL', '2023-09-29', 14, 3, 'NEGATIVE'),
  (4, 'CLINIC', '2023-09-30', 16, 4, 'NEGATIVE'),
  (5, 'COMPANY', '2023-10-01', 18, 5, 'NEGATIVE'),
  (6, 'HOSPITAL', '2023-10-02', 9, 6, 'POSITIVE'),
  (7, 'COMPANY', '2023-10-03', 11, 7, 'NEGATIVE'),
  (8, 'CLINIC', '2023-10-04', 13, 8, 'NEGATIVE'),
  (9, 'HOSPITAL', '2023-10-05', 15, 9, 'POSITIVE'),
  (10, 'COMPANY', '2023-10-06', 17, 10, 'NEGATIVE'),
  (11, 'CLINIC', '2023-10-07', 10, 11, 'POSITIVE'),
  (12, 'HOSPITAL', '2023-10-08', 12, 12, 'NEGATIVE'),
  (13, 'COMPANY', '2023-10-09', 14, 13, 'NEGATIVE'),
  (14, 'CLINIC', '2023-10-10', 16, 14, 'POSITIVE'),
  (15, 'HOSPITAL', '2023-10-11', 18, 15, 'NEGATIVE'),
  (16, 'COMPANY', '2023-10-12', 10, 16, 'POSITIVE'),
  (17, 'CLINIC', '2023-10-13', 12, 17, 'NEGATIVE'),
  (18, 'HOSPITAL', '2023-10-14', 14, 18, 'POSITIVE'),
  (19, 'COMPANY', '2023-10-15', 16, 19, 'NEGATIVE'),
  (20, 'CLINIC', '2023-10-16', 18, 20, 'POSITIVE'),
  (21, 'HOSPITAL', '2023-10-17', 10, 21, 'NEGATIVE'),
  (22, 'COMPANY', '2023-10-18', 12, 22, 'POSITIVE'),
  (23, 'CLINIC', '2023-10-19', 14, 23, 'NEGATIVE'),
  (24, 'HOSPITAL', '2023-10-20', 15, 24, 'POSITIVE'),
  (25, 'COMPANY', '2023-10-21', 16, 25, 'NEGATIVE'),
  (26, 'CLINIC', '2023-10-22', 9, 26, 'POSITIVE'),
  (27, 'HOSPITAL', '2023-10-23', 10, 27, 'NEGATIVE'),
  (28, 'COMPANY', '2023-10-24', 11, 28, 'POSITIVE'),
  (29, 'CLINIC', '2023-10-25', 12, 29, 'NEGATIVE'),
  (30, 'HOSPITAL', '2023-10-26', 13, 30, 'POSITIVE'),
  (31, 'COMPANY', '2023-10-27', 14, 31, 'NEGATIVE'),
  (32, 'CLINIC', '2023-10-28', 15, 32, 'POSITIVE');

INSERT INTO CASES (CASE_ID, EMPLOYEE_ID, CASE_DATE, RESOLUTION) 
VALUES 
  (1, 2, '2023-09-28', 'BACK TO WORK'),
  (2, 6, '2023-10-02', 'BACK TO WORK'),
  (3, 9, '2023-10-05', 'LEFT THE COMPANY'),
  (4, 11, '2023-10-07', 'BACK TO WORK'),
  (5, 14, '2023-10-02', 'DECEASED'),
  (6, 16, '2023-10-04', 'BACK TO WORK'),
  (7, 18, '2023-10-06', 'BACK TO WORK'),
  (8, 20, '2023-09-27', 'LEFT THE COMPANY'),
  (9, 22, '2023-09-29', 'BACK TO WORK'),
  (10, 24, '2023-10-01', 'DECEASED'),
  (11, 26, '2023-10-03', 'BACK TO WORK'),
  (12, 28, '2023-10-05', 'LEFT THE COMPANY'),
  (13, 30, '2023-10-07', 'BACK TO WORK'),
  (14, 32, '2023-10-03', 'DECEASED');


INSERT INTO HEALTHSTATUS (ROW_ID, EMPLOYEE_ID, REPORT_DATE, STATUS) 
VALUES 
(1, 1, '2023-09-27', 'WELL'),
(2, 2, '2023-09-28', 'SICK'),
(3, 3, '2023-09-29', 'WELL'),
(4, 4, '2023-09-30', 'HOSPITALIZED'),
(5, 5, '2023-10-01', 'WELL'),
(6, 6, '2023-10-02', 'SICK'),
(7, 7, '2023-10-03', 'WELL'),
(8, 8, '2023-10-04', 'HOSPITALIZED'),
(9, 9, '2023-10-05', 'WELL'),
(10, 10, '2023-10-06', 'SICK'),
(11, 11, '2023-10-07', 'WELL'),
(12, 12, '2023-10-02', 'HOSPITALIZED'),
(13, 13, '2023-10-03', 'WELL'),
(14, 14, '2023-10-04', 'SICK'),
(15, 15, '2023-10-05', 'WELL'),
(16, 16, '2023-10-06', 'HOSPITALIZED'),
(17, 17, '2023-10-07', 'WELL'),
(18, 18, '2023-09-30', 'SICK'),
(19, 19, '2023-10-01', 'WELL'),
(20, 20, '2023-10-02', 'HOSPITALIZED'),
(21, 21, '2023-10-03', 'WELL'),
(22, 22, '2023-10-04', 'SICK'),
(23, 23, '2023-10-05', 'WELL'),
(24, 24, '2023-10-06', 'HOSPITALIZED'),
(25, 25, '2023-10-07', 'WELL'),
(26, 26, '2023-09-28', 'SICK'),
(27, 27, '2023-09-29', 'WELL'),
(28, 28, '2023-09-30', 'HOSPITALIZED'),
(29, 29, '2023-10-01', 'WELL'),
(30, 30, '2023-10-02', 'SICK'),
(31, 31, '2023-10-03', 'WELL'),
(32, 32, '2023-10-04', 'HOSPITALIZED');



