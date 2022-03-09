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


---------------Stored Procedure for Insert new record--------------------------------

Create procedure InsertEmp
(
	@name varchar(50),
	@salary decimal,
	@startdate date,
	@gender varchar(10),
	@phone varchar(50),
	@basicpay decimal,
	@deduction decimal, 
	@taxablepay decimal,
	@incometax decimal,
	@netpay decimal,
	@dept_id int,
	@city_id int
)
As 
Begin
Try
INSERT into employee_payroll values(@name,@salary,@startdate,@gender,@phone,@basicpay,@deduction,@taxablepay,@incometax,@netpay,@dept_id,@city_id)
End Try
Begin catch 
Select 
 ERROR_NUMBER() AS ErrorNumber,
ERROR_MESSAGE() AS ErrorMessage;
End Catch

Exec InsertEmp @name = 'Ajay',@salary = 20000,@startdate = '2022-01-01',@gender = 'M',@phone = '7898654565',@basicpay = 10000,@deduction = 2000,@taxablepay = 1000,@incometax = 500,@netpay = 500,@dept_id = 3,@city_id =4;



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


---------------------------------------------------------------------------------------------------------------------