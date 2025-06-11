
-- creating the database
create database Employee

use Employee

--creating the employee table
create table EMP(
	EID char(5),
	Name varchar(30),
	Addr varchar(50),
	City varchar(20),
	phone varchar(10),
	Email varchar(50),
	Dob date,
	Doj date)

-- inserting records into table
insert into EMP
values('E1001','RAMESH GUPTA','SECTOR 7,Rohini','DELHI','9999002727','RK@YAHOO.CO.IN','1990-09-01','2012-03-15'),
	('E1002','Sandeep Sharma','SECTOR 2,PALAM','PUNE','9567890010','SAM1@YAHOO.COM','1995-09-15','2012-03-15'),
	('E1003','Rajesh Sharma','Sector 11,Dwarka','DELHI','9999001001','RSharma56@gmail.com','2001-03-16','2012-04-01'),
	('E1004','Yogeshwar Sharma','Sector 11,Dwarka','DELHI','8899001001','YSharma@gmail.com','1989-09-25','2012-05-10'),
	('E1005','Manoj Kumar','B320,Janakpuri','DELHI','9999912399','mKumar@gmail.com','1985-07-01','2012-11-07'),
	('E1006','Rohit Gupta','A32/620 Main Road,Sector 56','PUNE','8899001123','rgupta@gmail.com','1992-03-31','2012-05-10'),
	('E1007','Kapil Sharma','Jay Maa Apartments Flat 32,Sector 72','PUNE','9999001099','kSharma@gmail.com','1987-09-28','2012-05-10'),
	('E1008','Archna Sharma','5C Karanpur,NP Road','PUNE','9899249700','ASharma@gmail.com','1985-05-10','2013-01-01'),
	('E1009','Ranjeeta Goyal','SECTOR 7,Rajpur Road','DEHRADUN','9999002700','rgoyal@gmail.com','1989-12-31','2013-02-10'),
	('E1010','Komal Singh','Sector 64,Old Gurgaon Road','PUNE','7285912349','ksing@gmail.com','1990-03-31','2013-05-10')

-- creating emp_sal table
create table EMP_SAL(
	eid char(5),
	dept varchar(20),
	desi varchar(20),
	salary int)

---- inserting records into table
insert into EMP_SAL
values('E1001','OPS','Director','480000'),
	('E1002','OPS','VP','245000'),
	('E1003','ADMIN','SR MANAGER','270240'),
	('E1004','MIS','Manager','35346'),
	('E1005','HR','Associate','397026'),
	('E1006','OPS','VP','96500'),
	('E1007','HR','MANAGER','19035')

-- select query to view the table
select * from emp
select * from emp_sal

-- increasing the salary of all managers by 10%
update emp_sal 
set salary=salary+(salary*0.1)
where desi like '%manager'