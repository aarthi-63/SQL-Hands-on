-- Assignment 5
-- VIEW

use Employee

select * from emp
select * from emp_sal

--1. creating view emp_sal_details
create view emp_sal_details
as
select e.eid,name,doj,dept,desi,
salary as 'Basic',0.15*salary as 'HRA',0.09*salary as 'PF'
from emp e
inner join emp_sal s
on e.eid=s.eid


-- calculate net salary,gross salary from view
select *,basic+hra+pf as 'NET',(basic+hra+pf)-pf as 'GROSS'  from emp_sal_details

--2. creating view-managers joined in 2019
create view managers_details
as
select e.eid,name,doj,desi,dept
from emp e
inner join emp_sal s
on e.eid=s.eid
where desi like '%manager' and year(doj)='2019'

select * from managers_details