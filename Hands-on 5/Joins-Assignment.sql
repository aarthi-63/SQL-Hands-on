-- Assignment 5
-- JOINS

use Employee

select * from emp
select * from emp_sal

--details of delhi employees
select e.eid,name,city,doj,dept,desi,salary
from emp e 
inner join emp_sal s
on e.eid=s.eid
where city='delhi'

--employee details whose salary details are not available

select * from emp e
full outer join emp_sal s
on e.eid=s.eid
where salary is null
