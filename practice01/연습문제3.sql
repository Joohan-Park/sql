--연습문제3
 
--문제1
select a.employee_id as 사번, 
	   a.first_name as 이름, 
	   b.department_name as 부서명, 
	   a_2.first_name
	from employees a, 
		 employees a_2, 
		 departments b
	where a.DEPARTMENT_ID = b.DEPARTMENT_ID 
	AND   a.MANAGER_ID = a_2.EMPLOYEE_ID;
	
--문제2
select b.REGION_NAME as 지역이름, a.COUNTRY_NAME as 나라이름
	from countries a, regions b
	where a.REGION_ID = b.REGION_ID
	order by b.REGION_NAME desc, a.COUNTRY_NAME desc;
	
--문제3
select --a.FIRST_NAME as 이름,
	   a.DEPARTMENT_ID as 부서번호, 
	   a.DEPARTMENT_NAME as 부서이름,
	   b.FIRST_NAME as 메니저이름,
	   c.CITY as 위치한도시, 
	   d.COUNTRY_NAME as 나라의이름,
	   e.REGION_NAME as 지역이름
	from departments a,
		 employees b, 
	     locations c, 
	     countries d, 
	     regions e
	where a.MANAGER_ID = b.EMPLOYEE_ID
	and   a.LOCATION_ID = c.LOCATION_ID
	and   c.COUNTRY_ID = d.COUNTRY_ID
	and   d.REGION_ID = e.REGION_ID
	order by a.DEPARTMENT_ID;

select a.DEPARTMENT_ID
from departments a, employees b
where a.MANAGER_ID = b.EMPLOYEE_ID;
	
--문제4 임플로이랑 잡히스토리랑 걸어라  job이랑 job히스토리랑 걸어랑 public accountant
select a.EMPLOYEE_ID, a.FIRST_NAME
	from employees a, 
	     job_history b, 
	     jobs c
	where a.EMPLOYEE_ID = b.EMPLOYEE_ID
	and   b.JOB_ID = c.JOB_ID
	and   c.JOB_TITLE = 'Public Accountant';
	
--문제5 ORDER BY
select a.EMPLOYEE_ID, 
	   a.FIRST_NAME, 
	   a.LAST_NAME, 
	   b.DEPARTMENT_NAME 
	from employees a, 
		 departments b
 	where a.DEPARTMENT_ID = b.DEPARTMENT_ID
order by a.LAST_NAME;

--문제6
select emp.EMPLOYEE_ID as 사번, 
	   emp.LAST_NAME as 성, 
	   to_char(emp.HIRE_DATE,'YYYY-MM-DD') as 채용일
	from employees emp, employees man
	where emp.MANAGER_ID = man.EMPLOYEE_ID
	  and emp.HIRE_DATE < man.HIRE_DATE;





