
--Que1
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no;
----------------------------------------------------------------------

--Que2
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-----------------------------------------------------------------------

--Que3
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name, dept_manager.dept_no, dept_manager.from_date, dept_manager.to_date
FROM employees
INNER JOIN dept_manager
ON employees.emp_no = dept_manager.emp_no
INNER JOIN departments
ON departments.dept_no = dept_manager.dept_no
ORDER BY employees.emp_no;

-----------------------------------------------------------------------------------------
--Que4
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no
ORDER BY employees.emp_no;

---------------------------------------------------------------------------------------------
--Que5
SELECT first_name,last_name
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

---------------------------------------------------------------------------------------------------
--Que6

SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'
ORDER BY employees.emp_no;

---------------------------------------------------------------------------------------------------
--Que7

SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees
INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'
ORDER BY employees.emp_no;

--------------------------------------------------------------------------------------------------
--Que8

SELECT employees.last_name, COUNT(employees.last_name) AS lastname_count
FROM employees
GROUP BY employees.last_name
ORDER BY lastname_count DESC;

-----------------------------------------------------------------------------------------------------