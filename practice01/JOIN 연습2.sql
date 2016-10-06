-- ansi join sql문 (1999 syntax)

-- natural join 테이블의 칼럼이름이 같은 경우에만....
	select a.FIRST_NAME, b.DEPARTMENT_NAME
		from employees a
natural join departments b;

	select count(*)
		from employees a
natural join departments b;

select count(*)
	from employees a, departments b
	where a.department_id = b.department_id
and a.manager_id = b.manager_id;

--inner join 표준 sql문
select a.FIRST_NAME, b.DEPARTMENT_NAME
	from employees a
	join departments b
using(department_id);
--inner join 표준 sql문
select a.FIRST_NAME, b.DEPARTMENT_NAME
	from employees a
	join departments b
	  on a.DEPARTMENT_ID = b.DEPARTMENT_ID;
	  
--outer join 표준 sql문
--right조인
select count(*)
 from employees a 
 right outer join departments b
 			   on a.DEPARTMENT_ID = b.DEPARTMENT_ID;
--left조인	   
select count(*)
 from departments b
 left outer join employees a
 			   on a.DEPARTMENT_ID = b.DEPARTMENT_ID;
 