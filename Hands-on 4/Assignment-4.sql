use Employee

-- EMP Table

--city wise cout of employees in desc order
select city,count(eid) as 'Employee Count' from emp
group by city
order by count(eid) desc

-- employee details who doesn't have yahoo domain account
select * from emp
where email not like '%@yahoo%'

-- emp_sal table

--Designation wise total cost and employee count in desc order of total cost
select DESI,sum(salary) as 'Total Cost',count(eid) as 'Employee Count'
from emp_sal
group by desi
order by sum(salary) desc
