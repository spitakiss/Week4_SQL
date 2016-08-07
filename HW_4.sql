DROP TABLE IF EXISTS employees;

CREATE TABLE Employees (
emp_id INT PRIMARY KEY,
emp_name VARCHAR (30) NOT NULL,
job_title VARCHAR (30) NOT NULL,
pay_grade INT NOT NULL,
mgr_id INT NULL);

INSERT INTO Employees VALUES(1, 'John M','CEO', 5, NULL);
INSERT INTO Employees VALUES(2, 'Bethany B', 'VP of Compliance',4, 1);
INSERT INTO Employees VALUES (3, 'Monica G','Compliance Analyst',1, 6);
INSERT INTO Employees VALUES (4, 'Linda E','Risk Analyst',1, 9);
INSERT INTO Employees VALUES (5, 'Tool B','VP of Risk',4, 1);
INSERT INTO Employees VALUES (6, 'Cherie S', 'Compliance Manager', 2, 2);
INSERT INTO Employees VALUES (7, 'Andy D', 'Risk Analyst',1, 9);
INSERT INTO Employees VALUES (8, 'Scott S', 'Director of Risk',3, 5);
INSERT INTO Employees VALUES (9, 'Jenny W','Risk Manager',2, 8);

SELECT  Subordinates.emp_name AS subordinate, Subordinates.job_title, Subordinates.pay_grade, Managers.emp_name AS manager
FROM Employees AS Subordinates
LEFT JOIN Employees AS Managers
ON Subordinates.mgr_id = Managers.emp_id
ORDER BY Subordinates.pay_grade DESC;

