--문제 1 끝

SELECT MAX (salary) AS "최고임금",
       MIN (salary) AS "최저임금",
       MAX (salary) - MIN (salary) AS "최고임금-최저임금"
  FROM employees;

--문제 2

SELECT TO_CHAR (MAX (hire_date), 'yyyy"년" mm"월" dd"일"') FROM employees;

--문제 3

  SELECT AVG (salary),
         MAX (salary),
         MIN (salary),
         department_id
    FROM employees
GROUP BY department_id
ORDER BY AVG (salary) DESC, MAX (salary) DESC, MIN (salary) DESC;

--문제 4

  SELECT AVG (salary),
         MAX (salary),
         MIN (salary),
         job_id
    FROM employees
GROUP BY job_id
ORDER BY AVG (salary) DESC, MAX (salary) DESC, MIN (salary) DESC;

--문제 5번

SELECT TO_CHAR (MIN (hire_date), 'yyyy"년" mm"월" dd"일"') FROM employees;

SELECT * FROM employees;

 /*
select to_char(start_date,'yyyy"년" mm"월" dd"일"'), end_date-start_date as 근속일 
	from job_history
	--having max(end_date-start_date);
	order by end_date-start_date desc;
*/


SELECT TO_CHAR (MIN (hire_date), 'yyyy"년" mm"월" dd"일"') FROM employees;


--job_history;

--문제 6번

  SELECT department_id,
         AVG (salary),
         MIN (salary),
         AVG (salary) - MIN (salary)
    FROM employees
GROUP BY department_id
  HAVING (AVG (salary) - MIN (salary)) < 2000
ORDER BY AVG (salary) - MIN (salary) DESC;


--문제 7번

  SELECT job_id, (MAX (salary) - MIN (salary))
    FROM employees
GROUP BY job_id
ORDER BY MAX (salary) - MIN (salary) DESC;

SELECT job_title
  FROM jobs
 WHERE job_id = 'SA_REP';



SELECT b.job_title, a.diff AS "최고연봉-최소연봉"
  FROM (  SELECT JOB_ID, (MAX (salary) - MIN (salary)) AS diff
            FROM employees
        GROUP BY job_id) a,
       jobs b
 WHERE     a.job_id = b.job_id
       AND diff =
              (SELECT MAX (diff)
                 FROM (  SELECT job_id, (MAX (salary) - MIN (salary)) AS diff
                           FROM employees
                       GROUP BY job_id));

--서브쿼리1

  SELECT JOB_ID, (MAX (salary) - MIN (salary)) AS diff
    FROM employees
GROUP BY job_id;

--서브쿼리2

  SELECT job_id, (MAX (salary) - MIN (salary)) AS diff
    FROM employees
GROUP BY job_id;