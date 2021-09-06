CREATE DATABASE employee_payroll;
Create database payroll_services;
use payroll_services;
CREATE TABLE employee_payroll
( Id int identity(1, 1) primary Key,
	Name varchar(50),
	Salary decimal(12,2)Not Null,
	Start datetime Not Null
);
select * from employee_payroll
exec sp_help employee_payroll
INSERT INTO employee_payroll (Name,Salary,Start) VALUES
 ('Rupali',100000.00,1997-12-05),
 ('Charvi',200000.00,1996-12-05),
 ('Hrudhaya',300000.00,1996-12-04);
 select * from employee_payroll
 select * from employee_payroll WHERE start BETWEEN CAST('1997-12-05' AS DATE) AND GETDATE();
 SELECT 'salary' FROM employee_payroll WHERE name = 'Rupali'
 ALTER TABLE employee_payroll ADD gender CHAR(1) ;
 select * from employee_payroll	
 update employee_payroll
 SET gender ='F' WHERE name = 'Rupali' or name = 'Charvi' or name = 'Hrudhaya';
update employee_payroll 
set salary = 300000.00 where name = 'Charvi';
select AVG(salary) as AVGSalary  from employee_payroll where gender='F'GROUP BY gender; 


			