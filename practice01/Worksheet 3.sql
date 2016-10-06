-- date->string(문자열)

select employee_id, hire_date from employees;

select employee_id, 
	to_char(hire_date,'yyyy"년" MM"월" dd"일" am hh"시"mi"분"ss"초"') --am,pm 아무거나 써줘도 맞게 나옴 
	from employees;
	
select employee_id, 
	to_char(hire_date,'yyyy"년" MM"월" dd"일" hh24"시"mi"분"ss"초" day d ddd"일 지남"') --hh만 써주면 12시간 단위, 24써주면 24시간 단위 그이외 숫자 error 
	from employees;

select employee_id, 
	to_char(hire_date,'year:syear') 
	from employees;
	
select employee_id, 
	to_char(hire_date,'YYYY') 
	from employees;	