--------------------------------UC1-Ability to create a payrollservice database--------------------------

CREATE DATABASE Payroll_Service_DB

USE Payroll_Service_DB;

-----------------UC2-Ability to create a employee payroll table in the payroll service database to manage employee payrolls--------------------------

CREATE TABLE employee_payroll
(
	id int primary KEY IDENTITY(1,1),
	name varchar(50),
	salary decimal,
	startDate date
);

-----------------UC3-Ability to create employee payroll data in the payroll service database as part of CRUD Operation--------------------------

INSERT into employee_payroll (name, salary, startDate) values ('Hitesh',45000,'2019-04-15')

INSERT into employee_payroll (name, salary, startDate) values ('Pankaj',41000,'2018-05-25')

INSERT into employee_payroll (name, salary, startDate) values ('Mayur',15000,'2020-07-17')

INSERT into employee_payroll (name, salary, startDate) values ('Mahesh',25000,'2018-06-04')

INSERT into employee_payroll (name, salary, startDate) values ('Asmita',49000,'2019-02-19')

INSERT into employee_payroll (name, salary, startDate) values ('Arjun',60000,'2019-11-23')

INSERT into employee_payroll (name, salary, startDate) values ('Amar',50000,'2020-07-05')

INSERT into employee_payroll (name, salary, startDate) values ('Pallavi',19000,'2021-08-01')

INSERT into employee_payroll (name, salary, startDate) values ('Arohi',12000,'2022-02-15')

INSERT into employee_payroll (name, salary, startDate) values ('Hitesh',45000,'2019-04-15')

-------------------UC4-Ability to retrive All date from Table--------------------------------------------

SELECT * from employee_payroll

--------------------------UC5-Ability to retrive salary data for perticular emplopyee---------------------------

SELECT salary FROM employee_payroll where name = 'Mayur'

SELECT salary FROM employee_payroll where startDate between CAST('2018-05-25' AS DATE) AND GETDATE()

SELECT * FROM employee_payroll where startDate between CAST('2018-05-25' AS DATE) AND GETDATE()

SELECT salary FROM employee_payroll where startDate between CAST('2018-05-25' AS DATE) AND CAST('2020-07-17' AS DATE)

SELECT * FROM employee_payroll where startDate between CAST('2018-05-25' AS DATE) AND CAST('2020-07-17' AS DATE)

SELECT salary FROM employee_payroll where startDate between CAST('2021-08-01' AS DATE) AND GETDATE()

----------------------------UC6-Ability to add Gender to Employee Payroll Table and Update the Rows to reflect the correct Employee Gender-----------------

ALTER TABLE employee_payroll ADD gender varchar(10)

UPDATE employee_payroll set gender = 'M' where id =1 

UPDATE employee_payroll set gender = 'M' where id =2

UPDATE employee_payroll set gender = 'M' where id =3

UPDATE employee_payroll set gender = 'M' where id =4 

UPDATE employee_payroll set gender = 'F' where name = 'Asmita' 

UPDATE employee_payroll set gender = 'M' where id =6 

UPDATE employee_payroll set gender = 'M' where name = 'Amar'

UPDATE employee_payroll set gender = 'F' where name = 'Pallavi'

UPDATE employee_payroll set gender = 'F' where name = 'Arohi'

UPDATE employee_payroll set gender = 'M' where name = 'Hitesh'

----------------------------UC7-Ability to find sum, average, min, max and number of male and female employees----------------

SELECT SUM(salary) From employee_payroll;

SELECT SUM(salary) From employee_payroll where gender = 'F'

SELECT SUM(salary) From employee_payroll where gender = 'M'

SELECT AVG(salary) From employee_payroll where gender = 'M'

SELECT SUM(salary) From employee_payroll 

SELECT MIN(salary) From employee_payroll where gender = 'M'

SELECT MIN(salary) From employee_payroll where gender = 'F'

SELECT MAX(salary) From employee_payroll where gender = 'M'

SELECT COUNT(*) From employee_payroll where gender = 'M'

SELECT COUNT(salary) From employee_payroll where gender = 'F'

SELECT SUM(salary) FROM employee_payroll where gender = 'M' Group by gender


--------------UC8-Ability to extend employee_payroll data to store employee information like employee phone, address and department-----------

ALTER TABLE employee_payroll add phone varchar(50), address varchar(50), department varchar(50)

UPDATE employee_payroll set phone = '7898654565', address = 'Pune', department ='sales' where id =1

UPDATE employee_payroll set phone = '8898654565', address = 'Mumbai', department ='Marketing' where id =2

UPDATE employee_payroll set phone = '7854565986', address = 'Nashik', department ='HR' where id =3

UPDATE employee_payroll set phone = '7545658986', address = 'Nashik', department ='Marketing' where id =4

UPDATE employee_payroll set phone = '8654565789', address = 'Pune', department ='HR' where id =5

UPDATE employee_payroll set phone = '8986545657', address = 'Mumbai', department ='sales' where id =6

UPDATE employee_payroll set phone = '8654565789', address = 'Aurangabad', department ='sales' where id =7

UPDATE employee_payroll set phone = '7898654789', address = 'Pune', department ='Marketing' where id =8

UPDATE employee_payroll set phone = '7898654565', address = 'Aurangabad', department ='sales' where id =9

UPDATE employee_payroll set phone = '9865478565', address = 'Pune', department ='Marketing' where id =10

---------------UC9-Ability to extend employee_payroll table to have Basic Pay, Deductions, Taxable Pay, Income Tax, Net Pay---------

ALTER TABLE employee_payroll add basic_pay decimal, deduction decimal, taxable_pay decimal, income_tax decimal, net_pay decimal 

UPDATE employee_payroll set basic_pay =30400, deduction=1000,taxable_pay=5000,income_tax=600,net_pay=41000 where id = 1
UPDATE employee_payroll set basic_pay =29000, deduction=1000,taxable_pay=1000,income_tax=600,net_pay=40000 where id = 2
UPDATE employee_payroll set basic_pay =13000, deduction=1000,taxable_pay=2000,income_tax=600,net_pay=13500 where id = 3
UPDATE employee_payroll set basic_pay =23000, deduction=2000,taxable_pay=1000,income_tax=600,net_pay=22500 where id = 4
UPDATE employee_payroll set basic_pay =46000, deduction=1000,taxable_pay=2000,income_tax=600,net_pay=47000 where id = 5
UPDATE employee_payroll set basic_pay =55000, deduction=1000,taxable_pay=2000,income_tax=600,net_pay=55000 where id = 6
UPDATE employee_payroll set basic_pay =44000, deduction=2000,taxable_pay=1000,income_tax=600,net_pay=47000 where id = 7
UPDATE employee_payroll set basic_pay =15000, deduction=1000,taxable_pay=2000,income_tax=600,net_pay=17000 where id = 8
UPDATE employee_payroll set basic_pay =8000, deduction=1000,taxable_pay=2000,income_tax=600,net_pay=11000 where id = 9
UPDATE employee_payroll set basic_pay =41000, deduction=2000,taxable_pay=3000,income_tax=600,net_pay=40000 where id = 10

SELECT * from employee_payroll


-------------------UC10-Ability to make Hitesh as part of Sales and Marketing Department------------------

SELECT * from employee_payroll where name = 'Hitesh'

-------------------------UC-11 ER Represenntation----------------------------------------------------------------------------------------------

CREATE TABLE department
(
	dept_id int PRIMARY KEY IDENTITY(1,1),
	dept_name varchar(30),
);

SELECT * from department

INSERT into department values ('sales')
INSERT into department values ('HR')
INSERT into department values ('Marketing')
INSERT into department values ('Other')


ALTER TABLE employee_payroll DROP column department


CREATE TABLE employee_payroll_service
(
	service_id int PRIMARY KEY IDENTITY(1,1),
	id int FOREIGN KEY REFERENCES employee_payroll(id),
	dept_id int FOREIGN KEY REFERENCES department(dept_id)
);

SELECT * from employee_payroll
SELECT * from department
SELECT * from employee_payroll_service

INSERT into employee_payroll_service values (1,2)
INSERT into employee_payroll_service values (2,3)
INSERT into employee_payroll_service values (3,1)
INSERT into employee_payroll_service values (4,4)
INSERT into employee_payroll_service values (5,2)
INSERT into employee_payroll_service values (6,2)
INSERT into employee_payroll_service values (7,4)
INSERT into employee_payroll_service values (8,3)
INSERT into employee_payroll_service values (9,3)
INSERT into employee_payroll_service values (10,1)


SELECT employee_payroll.name, employee_payroll.salary,employee_payroll_service.dept_id FROM employee_payroll INNER JOIN employee_payroll_service on employee_payroll_service.id = employee_payroll.id

SELECT * FROM employee_payroll INNER JOIN employee_payroll_service on employee_payroll_service.id = employee_payroll.id

SELECT * FROM department INNER JOIN employee_payroll_service on employee_payroll_service.dept_id = department.dept_id

SELECT * FROM department LEFT JOIN employee_payroll_service on employee_payroll_service.dept_id = department.dept_id



--------------------------------------UC12- checked!! all UCs are working fine---------------------------------------------

SELECT * FROM employee_payroll

SELECT salary FROM employee_payroll where name = 'Mayur'

SELECT salary FROM employee_payroll where startDate between CAST('2018-05-25' AS DATE) AND GETDATE()

SELECT AVG(salary) From employee_payroll where gender = 'M'

SELECT SUM(salary) From employee_payroll 

SELECT MIN(salary) From employee_payroll where gender = 'M'

SELECT MAX(salary) From employee_payroll where gender = 'M'

SELECT COUNT(*) From employee_payroll where gender = 'M'


------------------------------------------------------------------------------------------------------------------------
