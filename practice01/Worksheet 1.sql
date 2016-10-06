-- 문자열 함수

select lower('Database Managenemt System') from dual; -- 대문잦가 모두 소문자로 바뀜
select first_name, lower(first_name) from employees;
select upper('Database Management System') from dual;
select last_name, upper(last_name) from employees;

select initcap('Database Management System') from dual;

select concat (concat(first_name,' '),last_name) from employees;

select first_name || ' ' || last_name from employees;

select substr('Database Management System',2,4)from dual;

select length('Database Management System') from dual;

select instr(lower('Database Management System'),'sys') from dual;

select employee_id, LPAD(salary, 10, '*') from employees;
select employee_id, RPAD(salary, 10, '*') from employees;
select trim('*' from '****Data*base****') from dual;
select '---' || trim('*' from '****Data*base****') from dual;
select Ltrim('****Data*base****','*') from dual;
select Rtrim('****Data*base****','*') from dual;

select replace('Database Management System', 'System', 'Sys.')f from dual


