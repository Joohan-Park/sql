-- 숫자 -> 문자열

select employee_id, salary from employees;

select employee_id, to_char(salary,'99999') from employees; --빈자리는 space로 채움

select employee_id, to_char(salary,'09999') from employees; --빈자리를 0으로 채움

select employee_id, to_char(salary,'99,999') from employees;

select to_char(3.14158921,'9.99') from dual;

select to_char(3.14158921,'99.9999') from dual;

select employee_id, to_char(salary,'FM99999') from employees;

select employee_id, to_char(salary,'$99999') from employees;

select employee_id, to_char(salary,'L99999') from employees;

select employee_id, to_char(salary,'99999MI') from employees;

select to_char(-12345,'99999MI') from dual;
select to_char(-12345,'s99999') from dual;
select to_char(12345,'s99999') from dual;
select to_char(0,'s99999') from dual;

select to_char(-12345,'99999PR') from dual;

select to_char(3999,'RN') from dual;

select to_char(3999,'rn') from dual;

select to_char(1234,'xxx') from dual;

