--집게

select avg(salary) from employees order by avg(salary) desc ;

select department_id, avg(salary) from employees group by department_id order by department_id asc;

select department_id, avg(salary), max(salary), min(salary) 
  from employees 
  group by department_id 
  order by department_id asc;
  
select department_id, avg(salary) 
	from employees
	group by department_id
	having avg(salary)>5000
	order by department_id asc;
