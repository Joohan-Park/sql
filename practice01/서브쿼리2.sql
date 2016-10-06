--multi row subquery

select * from employees;


-- 문제) jop_id가 'IT_PROG' 직원들이 받는 연봉보다 많이 받는 직원을 출력
--> All 모두가 크던지 작다., <All
select salary from employees where job_id = 'IT_PROG';

select first_name, salary
	from employees
	where salary > All(select salary from employees where job_id = 'IT_PROG');
	
-- 문제) job_id가 'IT_PROG' 직원들이 받는 연봉과 같은 연봉을 받는 직원
-- <any,  =any, >any
select first_name,salary from employees where salary in(select salary from employees where job_id = 'IT_PROG');

select first_name,salary from employees where salary = any(select salary from employees where job_id = 'IT_PROG');

-- exists
--select first_name, salary from employees
--where exists( select salary from employees where job_i = 'IT_PROG')


