-- NULL 관련 함수

select nvl(null, 0 ) from dual;

select nvl(1,0) from dual;

select employee_id, nvl2(commission_pct, salary+commission_pct*salary ,salary) as "이번달 지급 월급" from employees order by nvl2(commission_pct, salary+commission_pct*salary ,salary) desc;

select nvl2(1, 10, 0) from dual;--null이 면 0 null이 아니면 10

select nullif(5, 3+2) from dual; --수식 이같으면 null 같지 않으면 앞에 숫자

select coalesce(null, null, 3,4,5) from dual;

select coalesce(1, null, 3,4,5) from dual;

select employee_id, nvl(to_char(manager_id),'매너저 없음') from employees;

