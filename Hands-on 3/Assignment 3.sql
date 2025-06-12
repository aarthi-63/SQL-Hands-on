-- Assignment -2

use employee

--using constraint to update the existing table
-- EMP TABLE

-- primary key-constraint for eid column
alter table emp
add constraint eid_primary primary key(eid)

-- not null constraint
alter table emp
alter column name varchar(30) not null;

--check constraint
alter table emp
add constraint emp_addr_check check (addr!='Uttam Nagar')

alter table emp
add constraint emp_city_check check (city in ('DEL','GGN','FBD','NOIDA'))

alter table emp
add constraint emp_mail_chk check(email like '%@gmail.com' or email like '%@yahoo.com')


alter table emp
add constraint dob_check_const check (DOB>='1980-01-04')

-- unique constraint
alter table emp
add constraint emp_ph_unique unique (phone)



-- EMP_SAL TABLE

-- Foreign key constraint
alter table emp_sal
add constraint foreign_eid foreign key (eid) references emp(eid)



-- default constraint
alter table emp_sal
add constraint default_dept_const default 'TEMP' for dept

-- check constraint
alter table emp_sal
add constraint dept_check_const check (dept in ('HR','MIS','OPS','IT','ADMIN','TEMP'))

alter table emp_sal
add constraint desi_check_const check (desi in ('ASSO','MGR','VP','DIR'))

alter table emp_sal
add constraint salary_check_const check (salary>=20000)

