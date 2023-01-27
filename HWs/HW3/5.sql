SELECT dept_name, sum(salary) AS sum_salary
FROM instructor
GROUP BY dept_name;

SELECT name 
FROM instructor
WHERE dept_name = 'PHYSICS' AND salary BETWEEN 45000 AND 100000
ORDER BY name ASC;

SELECT dept_name
FROM instructor
GROUP BY dept_name
HAVING sum(salary) > 120000;

SELECT title 
FROM course
WHERE title LIKE 'CS-1%';
