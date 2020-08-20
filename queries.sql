-- Salary by employee
SELECT  emp.emp_no,
        emp.last_name,
        emp.first_name,
        emp.sex,
        sal.salary
FROM employees as emp
    LEFT JOIN salaries as sal
    ON (emp.emp_no = sal.emp_no)
ORDER BY emp.emp_no;

--employee hire date all of 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1/01/1986' AND '12/31/1986';

SELECT emp.first_name, emp.last_name,dept_m.dept_no, dept_m.emp_no, dept.dept_name 

--employee department names
FROM dept_manager AS dept_m
INNER JOIN departments AS dept
ON (dept_m.dept_no = dept.dept_no)
INNER JOIN employees AS emp
ON (dept_m.emp_no = emp.emp_no);


--Department name for every employee
SELECT emp.first_name, emp.last_name, emp.emp_no, dept.dept_name 

FROM employees as emp
INNER JOIN dept_emp
ON (emp.emp_no = dept_emp.emp_no)
INNER JOIN departments AS dept
ON (dept_emp.dept_no = dept.dept_no)
ORDER BY emp.emp_no;

--First name Hercules and last name starts with B
SELECT emp.first_name, emp.last_name

FROM employees as emp
WHERE (emp.first_name = 'Hercules' AND emp.last_name LIKE 'B%');

--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.

SELECT emp.first_name, emp.last_name, emp.emp_no, dept.dept_name 

FROM employees as emp
INNER JOIN dept_emp
ON (emp.emp_no = dept_emp.emp_no)
INNER JOIN departments AS dept
ON (dept_emp.dept_no = dept.dept_no)
WHERE dept.dept_name = 'Sales'
ORDER BY emp.emp_no;

--Department name for every employee
SELECT emp.first_name, emp.last_name, emp.emp_no, dept.dept_name 

--employee department names
FROM employees as emp
INNER JOIN dept_emp
ON (emp.emp_no = dept_emp.emp_no)
INNER JOIN departments AS dept
ON (dept_emp.dept_no = dept.dept_no)
WHERE dept.dept_name = 'Sales'
ORDER BY emp.emp_no;

--In descending order, list the frequency count of employee last names, i.e., 
--how many employees share each last name.

SELECT last_name,
COUNT(last_name) AS "frequency count"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;
