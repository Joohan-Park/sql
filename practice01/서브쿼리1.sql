--subquery

select * from employees;

--문) 이름(first_name)이  Lex 사원보다 월급이 많은 직원들 이름과 월급

select salary from employees where first_name = 'Lex';


select first_name, 
	   salary 
	from employees 
	where salary > (select salary from employees where first_name = 'Lex');
	
--single row subquery
select first_name, 
	   salary 
	from employees 
	where salary > (select salary from employees where first_name = 'Lex');
	
select first_name, 
	   salary 
	from employees 
	where salary = (select salary from employees where first_name = 'Lex');
	
select first_name, 
	   salary 
	from employees 
	where salary < (select salary from employees where first_name = 'Lex');
	
select first_name, 
	   salary 
	from employees 
	where salary <> (select salary from employees where first_name = 'Lex');
	
--전체 직원의 평균 연봉 보다 더 많이 받는 직원의 이름과 연봉
select avg(salary) from employees;

select first_name, salary from employees
	where salary>(select avg(salary) from employees);