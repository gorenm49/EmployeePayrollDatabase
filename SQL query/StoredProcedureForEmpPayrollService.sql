---------------Stored Procedure for Display Employee payroll data--------------------------------

Create procedure ShowEmpdata
As 
Begin
Try
Select * from employee_payroll;
End Try
Begin catch 
Select 
 ERROR_NUMBER() AS ErrorNumber,
ERROR_MESSAGE() AS ErrorMessage;
End Catch


Exec ShowEmpdata 

Create procedure ShowEmpdataInPerticularDateRange
(
	@startdate1 date,
	@startdate2 date
)
As 
Begin
Try
SELECT * FROM employee_payroll where startDate between CAST(@startdate1 AS DATE) AND CAST(@startdate2 AS DATE)
End Try
Begin catch 
Select 
 ERROR_NUMBER() AS ErrorNumber,
ERROR_MESSAGE() AS ErrorMessage;
End Catch

Exec ShowEmpdataInPerticularDateRange @startdate1 = '2018-05-25', @startdate2 = '2020-07-17'

Alter procedure ShowSumOfSalaryGroupByGender
(
	@gender varchar(10)
)
As 
Begin Try
SELECT SUM(salary) FROM employee_payroll where gender = @gender Group by gender
End Try
Begin catch 
Select 
 ERROR_NUMBER() AS ErrorNumber,
ERROR_MESSAGE() AS ErrorMessage;
End Catch

Exec ShowSumOfSalaryGroupByGender @gender = 'F'

---------------Stored Procedure for Insert new record--------------------------------

Create procedure InsertEmpData
(
	@name varchar(50),
	@salary decimal,
	@startdate date,
	@gender varchar(10),
	@phone varchar(50),
	@address varchar(50),
	@basicpay decimal,
	@deduction decimal, 
	@taxablepay decimal,
	@incometax decimal,
	@netpay decimal
)
As 
Begin
Try
INSERT into employee_payroll values(@name,@salary,@startdate,@gender,@phone,@address,@basicpay,@deduction,@taxablepay,@incometax,@netpay)
End Try
Begin catch 
Select 
 ERROR_NUMBER() AS ErrorNumber,
ERROR_MESSAGE() AS ErrorMessage;
End Catch

Exec InsertEmpData @name = 'Ajay',@salary = 20000,@startdate = '2022-01-01',@gender = 'M',@phone = '7898654565',@address='Nanded', @basicpay = 10000,@deduction = 2000,@taxablepay = 1000,@incometax = 500,@netpay = 500;


-----------

Create procedure InsertEmp_1
(
	@Name varchar(50),
	@Salary decimal,
	@StartDate date,
	@Gender varchar(10),
	@Phonenumber varchar(50),
	@bisicpay decimal,
	@Address varchar(50), 
	@Department varchar(50)
	
)
As 
Begin
Try
INSERT into Payroll_Service_DB values(@Name,@Salary,@StartDate,@Gender,@Phonenumber,@Address,@Department,@bisicpay)
End Try
Begin catch 
Select 
 ERROR_NUMBER() AS ErrorNumber,
ERROR_MESSAGE() AS ErrorMessage;
End Catch

Exec InsertEmp_1 @Name = 'Ajay',@Salary = 20000,@StartDate = '2022-01-01',@Gender = 'M',@Phonenumber = '7898654565',@Address = 'Akola',@Department = 'Sales',@bisicpay = 11000;

---------------Stored Procedure for Delete Emp record by Name--------------------------------


Create procedure DeleteEmpByName
(
	@name varchar(50)
)
As 
Begin
Try
DELETE FROM employee_payroll where name = @name
End Try
Begin catch 
Select 
 ERROR_NUMBER() AS ErrorNumber,
ERROR_MESSAGE() AS ErrorMessage;
End Catch


Exec DeleteEmpByName @name = 'Ajay' 


--------------------Delete emp by id--------------

Create procedure DeleteEmpByid
(
	@id int
)
As 
Begin
Try
DELETE FROM employee_payroll where id = @id
End Try
Begin catch 
Select 
 ERROR_NUMBER() AS ErrorNumber,
ERROR_MESSAGE() AS ErrorMessage;
End Catch


Exec DeleteEmpByid @id = 10 



---------------Stored Procedure for Display Employee payroll data by Name--------------------------------


Create procedure ShowEmpDataByName
(
	@name varchar(20)
)
As 
Begin
Try
Select * from employee_payroll where name = @name;
End Try
Begin catch 
Select 
 ERROR_NUMBER() AS ErrorNumber,
ERROR_MESSAGE() AS ErrorMessage;
End Catch


Exec ShowEmpDataByName @name = 'Pallavi'



---------------Stored Procedure for Display Employee payroll data By emp Id--------------------------------

Create procedure ShowEmpDataById
(
	@id int 
)
As 
Begin
Try
Select * from employee_payroll where id = @id;
End Try
Begin catch 
Select 
 ERROR_NUMBER() AS ErrorNumber,
ERROR_MESSAGE() AS ErrorMessage;
End Catch


Exec ShowEmpDataById @id = 4



---------------Stored Procedure to Update Employee Contact data by ID--------------------------------

Create procedure UpdateEMPphoneNumberById
(
	@id int,
	@phone varchar(50)
)
As 
Begin
Try
UPDATE employee_payroll set phone = @phone where id = @id
End Try
Begin catch 
Select 
 ERROR_NUMBER() AS ErrorNumber,
ERROR_MESSAGE() AS ErrorMessage;
End Catch


Exec UpdateEMPphoneNumberById @id = 1, @phone = 9765974565

-----------------------------------------

Create procedure UpdateEMPBasicPayByEmpName
(
	@name varchar(50),
	@basicpay decimal
)
As 
Begin Try
UPDATE employee_payroll set basic_pay = @basicpay where name = @name
End Try
Begin catch 
Select 
 ERROR_NUMBER() AS ErrorNumber,
ERROR_MESSAGE() AS ErrorMessage;
End Catch

Exec UpdateEMPBasicPayByEmpName @name = 'Hitesh', @basicpay = 25000


----------------------------------

Create procedure UpdateEmployeeData
(
	@id int,
	@name varchar(50),
	@salary decimal,
	@startdate date,
	@gender varchar(10),
	@phone varchar(50),
	@address varchar(50),
	@basicpay decimal,
	@deduction decimal, 
	@taxablepay decimal,
	@incometax decimal,
	@netpay decimal

)
As 
Begin
Try
UPDATE employee_payroll set name = @name,salary = @salary,startdate = @startdate,gender = @gender, phone = @phone, address = @address, basic_pay = @basicpay, deduction = @deduction, taxable_pay = @taxablepay, income_tax = @incometax, net_pay = @netpay where id = @id
End Try
Begin catch 
Select 
 ERROR_NUMBER() AS ErrorNumber,
ERROR_MESSAGE() AS ErrorMessage;
End Catch

EXEC UpdateEmployeeData @id =7, @name = 'Adarsh', @salary = 45420,@startdate ='2021-02-02',@gender = 'M', @phone = '8978659845', @address = 'Aurangabad', @basicpay = 40000, @deduction = 1000, @taxablepay = 1200, @incometax =500, @netpay=  44000

---------------------------------------------------------------------------------------------------------------------