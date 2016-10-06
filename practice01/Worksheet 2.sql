-- Date

select employee_id, hire_date from employees;

select value from nls_session_parameters where parameter = 'NLS_DATE_FORMAT';

select add_months(to_date('15/10/5','RR/MM/DD'),2) from dual;

select add_months('15/10/5',2) from dual; --sysdate타입과 포맷을 맞춰 줘야함.
select add_months('2016,10,05',2) from dual; --포맷팅 해줌.....근데 안될수도 있으니 쓰지말자자자자자 포맷 맞춰서 쓰장
select add_months(sysdate, 2) from dual;
select last_day(sysdate) from dual;

select months_between(add_months(sysdate,2),sysdate) from dual;

select employee_id, job_id, round(months_between(end_date, start_date)) from job_history;

select next_day('01-sep-95','friday') from dual;

-- 1-> sun, 2, 3, 4, 5, 6, 7->sat
select next_day('16/10/05',3) from dual;