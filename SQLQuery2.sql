--GROUP 3 SQL ASSIGNMENT
-- HOSPITAL DB NAMED AMRIT
CREATE DATABASE Amrit;
GO

USE Amrit;
GO


-- DEPARTMENTS TABLE
CREATE TABLE Departments (
    dept_id INT IDENTITY(1,1) PRIMARY KEY,
    dept_name NVARCHAR(50) NOT NULL
);

INSERT INTO Departments (dept_name) VALUES
(N'Cardiology'), (N'Neurology'), (N'Pediatrics'), (N'Emergency'), 
(N'Radiology'), (N'Surgery'), (N'Oncology'), (N'Pharmacy');
GO


-- EMPLOYEES TABLE
CREATE TABLE Employees (
    emp_id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    role NVARCHAR(50),
    department_id INT,
    basic_pay DECIMAL(10,2),
    overtime_hours INT,
    time_in TIME,
    time_out TIME,
    FOREIGN KEY (department_id) REFERENCES Departments(dept_id)
);

-- Inserting employees
INSERT INTO Employees (name, role, department_id, basic_pay, overtime_hours, time_in, time_out) VALUES
(N'Alice Johnson', N'Doctor', 1, 8000.00, 5, '08:00:00', '17:00:00'),
(N'Bob Smith', N'Nurse', 2, 4000.00, 2, '09:00:00', '18:00:00'),
(N'Charlie Davis', N'Surgeon', 6, 10000.00, 6, '07:30:00', '16:30:00'),
(N'Diana Ross', N'Receptionist', 4, 3000.00, 1, '08:30:00', '17:30:00'),
(N'Evan Lee', N'Technician', 5, 4500.00, 3, '08:00:00', '17:00:00'),
(N'Fiona Adams', N'Pharmacist', 8, 5000.00, 4, '09:00:00', '18:00:00'),
(N'George Clark', N'Doctor', 3, 7500.00, 5, '08:00:00', '17:00:00'),
(N'Hannah White', N'Nurse', 1, 4000.00, 2, '09:00:00', '18:00:00'),
(N'Ian Brown', N'Surgeon', 6, 9500.00, 5, '07:00:00', '16:00:00'),
(N'Julia Green', N'Receptionist', 4, 3000.00, 1, '08:30:00', '17:30:00'),
(N'Kevin Black', N'Doctor', 2, 8000.00, 3, '08:00:00', '17:00:00'),
(N'Laura Young', N'Nurse', 3, 4200.00, 4, '09:00:00', '18:00:00'),
(N'Michael Scott', N'Technician', 5, 4600.00, 2, '08:00:00', '17:00:00'),
(N'Nina King', N'Pharmacist', 8, 5200.00, 3, '09:00:00', '18:00:00'),
(N'Oliver Hill', N'Doctor', 1, 7800.00, 6, '08:00:00', '17:00:00'),
(N'Paula Baker', N'Nurse', 6, 4100.00, 2, '09:00:00', '18:00:00'),
(N'Quentin Price', N'Surgeon', 6, 9900.00, 5, '07:00:00', '16:00:00'),
(N'Rachel Scott', N'Receptionist', 4, 3100.00, 1, '08:30:00', '17:30:00'),
(N'Steve Turner', N'Doctor', 2, 8100.00, 4, '08:00:00', '17:00:00'),
(N'Tina Bell', N'Nurse', 3, 4300.00, 3, '09:00:00', '18:00:00');
GO


-- PATIENTS TABLE
CREATE TABLE Patients (
    patient_id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    age INT,
    gender NVARCHAR(10),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

-- Inserting patients
INSERT INTO Patients (name, age, gender, dept_id) VALUES
(N'Patient1',45,N'Male',1),(N'Patient2',30,N'Female',2),(N'Patient3',12,N'Male',3),
(N'Patient4',67,N'Female',1),(N'Patient5',25,N'Male',4),(N'Patient6',55,N'Female',5),
(N'Patient7',33,N'Male',6),(N'Patient8',41,N'Female',7),(N'Patient9',22,N'Male',8),
(N'Patient10',29,N'Female',2),(N'Patient11',60,N'Male',3),(N'Patient12',38,N'Female',1),
(N'Patient13',48,N'Male',5),(N'Patient14',50,N'Female',6),(N'Patient15',31,N'Male',4),
(N'Patient16',26,N'Female',7),(N'Patient17',37,N'Male',8),(N'Patient18',44,N'Female',3),
(N'Patient19',52,N'Male',2),(N'Patient20',28,N'Female',1),(N'Patient21',46,N'Male',2),
(N'Patient22',33,N'Female',3),(N'Patient23',39,N'Male',4),(N'Patient24',62,N'Female',5),
(N'Patient25',27,N'Male',6),(N'Patient26',35,N'Female',7),(N'Patient27',41,N'Male',8),
(N'Patient28',49,N'Female',1),(N'Patient29',55,N'Male',2),(N'Patient30',21,N'Female',3),
(N'Patient31',42,N'Male',4),(N'Patient32',36,N'Female',5),(N'Patient33',34,N'Male',6),
(N'Patient34',29,N'Female',7),(N'Patient35',31,N'Male',8),(N'Patient36',40,N'Female',1),
(N'Patient37',47,N'Male',2),(N'Patient38',50,N'Female',3),(N'Patient39',30,N'Male',4),
(N'Patient40',26,N'Female',5),(N'Patient41',33,N'Male',6),(N'Patient42',28,N'Female',7),
(N'Patient43',44,N'Male',8),(N'Patient44',36,N'Female',1),(N'Patient45',55,N'Male',2),
(N'Patient46',39,N'Female',3),(N'Patient47',29,N'Male',4),(N'Patient48',31,N'Female',5),
(N'Patient49',37,N'Male',6),(N'Patient50',45,N'Female',7),(N'Patient51',41,N'Male',8),
(N'Patient52',27,N'Female',1),(N'Patient53',35,N'Male',2),(N'Patient54',38,N'Female',3),
(N'Patient55',48,N'Male',4),(N'Patient56',32,N'Female',5),(N'Patient57',34,N'Male',6),
(N'Patient58',29,N'Female',7),(N'Patient59',40,N'Male',8),(N'Patient60',25,N'Female',1);
GO



-- MEDICATIONS TABLE

CREATE TABLE Medications (
    med_id INT IDENTITY(1,1) PRIMARY KEY,
    patient_id INT,
    med_name NVARCHAR(50),
    dosage NVARCHAR(50),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

-- Inserting medications 
INSERT INTO Medications (patient_id, med_name, dosage) VALUES
(1,N'Paracetamol',N'500mg'),(2,N'Ibuprofen',N'200mg'),(3,N'Amoxicillin',N'250mg'),
(4,N'Metformin',N'500mg'),(5,N'Aspirin',N'100mg'),(6,N'Lisinopril',N'10mg'),
(7,N'Omeprazole',N'20mg'),(8,N'Atorvastatin',N'10mg'),(9,N'Azithromycin',N'500mg'),
(10,N'Captopril',N'25mg');
GO





-- show all tables
SELECT * 
FROM sys.tables;

SELECT * 
FROM Employees;

SELECT * 
FROM Patients;

SELECT * 
FROM Departments;



SELECT* FROM Employees
order by department_id Asc 
--  WHERE overtime_hours =2 and department_id =1

SELECT * 
FROM Medications;


SELECT 'SELECT * FROM ' + name + ';'
FROM sys.tables;




--where
SELECT e.name, e.role, d.dept_name
FROM Employees e
Join Departments d ON e.department_id= d.dept_id
Where d.dept_name= N'Cardiology';


--and
SELECT e.name, e.role, e.overtime_hours
FROM Employees e
join Departments d ON e.department_id = dept_id
Where d.dept_name = N'Cardiology' AND e.overtime_hours >3;


--or
SELECT e.name, e.role, d.dept_name
FROM Employees e
join Departments d ON e.department_id = dept_id
Where d.dept_name= N'Cardiology' OR d.dept_name= N'Neurology';


-- distinct
SELECT DISTINCT d.dept_name
FROM Patients p
Join Departments d ON p.dept_id= d.dept_id;




--in 

SELECT name, age, dept_id
From Patients
Where dept_id IN (1,2,3);

--between

SELECT name,age
From Patients
Where age BETWEEN 18 AND 35;

--Sorting
SELECT name, age
FROM Patients
ORDER BY age ASC; 

SELECT name, role, basic_pay
From Employees 
ORDER BY basic_pay DESC;

--limiting
SELECT TOP 5 name, role, basic_pay
From Employees
ORDER BY basic_pay DESC;


--offset 
SELECT patient_id, name, age
FROM Patients 
ORDER BY patient_id ASC
OFFSET 5 ROWS
FETCH NEXT 3 ROWS ONLY;