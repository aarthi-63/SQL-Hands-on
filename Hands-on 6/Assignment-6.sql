-- ASSIGNMENT -6
-- SQL Function

use employee

select * from emp
select * from emp_sal

-- 1. Department wise team size and average salary

select dept,count(eid) as 'Team Size',avg(salary) as 'Average Salary'
from emp_sal
group by dept


-- 2. Managers Count in the company

select count(eid) as 'Manager Count'
from emp_sal
where desi like '%manager%'


--3. Maximum and minimum salary of Associate

select min(salary) as 'Minimum Salary',max(salary) as 'Maximum Salary'
from emp_sal
where desi='associate'


--4. dept wise team size and average salary of delhi employee

select dept,count(eid) as 'Team Size',avg(salary) as 'Average Salary'
from emp_sal
where eid in (select eid from emp where city='delhi')
group by dept


--5. Generate official emailid

select eid,name,
upper(concat(left(name,1),left(right(name,len(name)-CHARINDEX(' ',name)),1),right(eid,3),'@Learnbay.co')) as 'OfficialeEmail'
from emp


-- 6. Employee details whose age>=40

select name,city,phone,email
from emp
where
DATEDIFF(yy,dob,getdate())>=40


-- 7. Emp details who have completed 5 years in company

select eid,name,doj
from emp
where DATEDIFF(yy,doj,getdate())=5
 

 --8. details of the managers having birthday in the current month

 select * from emp
 where eid in (select eid from emp_sal where desi like '%manager%')
 and
 month(dob)=month(getdate())

 --9. employee details getting maximum salary
select top 1 * from emp_sal order by salary desc


--10. Employee who has longest name

select eid,name
from emp
where len(name)=(select max(len(name)) from emp)


