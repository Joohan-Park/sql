
--inner join(equi-join)
select e.employee_id,e.department_id,e.FIRST_NAME,d.DEPARTMENT_NAME
	from employees e, departments d
	where e.department_id=d.department_id and e.salary > 5000 and e.salary<8000;
	

 --outer join
select count(*)
 from employees a, 
      departments b
 where a.DEPARTMENT_ID (+)= b.DEPARTMENT_ID;
 
select count(*)
 from employees a, 
      departments b
 where a.DEPARTMENT_ID = b.DEPARTMENT_ID;
 
select nvl(a.First_name,'소속 사원이 없음'), b.DEPARTMENT_NAME
 from employees a, 
      departments b
 where a.DEPARTMENT_ID (+)= b.DEPARTMENT_ID;

--self join
select emp.FIRST_NAME as 고용자, man.FIRST_NAME as 매니저
 from employees emp, employees man 
 where emp.MANAGER_ID = man.EMPLOYEE_ID;
 
select emp.FIRST_NAME as 고용자, nvl(man.FIRST_NAME, '사장') as 매니저
 from employees emp, employees man 
 where  man.EMPLOYEE_ID (+)= emp.MANAGER_ID ; 
 
select count(*) from employees;
	

