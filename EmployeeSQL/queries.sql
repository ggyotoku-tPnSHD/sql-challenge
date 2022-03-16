-- List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.
SELECT e.emp_no,
       e.last_name,
       e.first_name,
       e.sex,
       s.salary
FROM   salaries AS s
       INNER JOIN employees AS e
               ON e.emp_no = s.emp_no;

-- List first name, last name, 
-- and hire date for employees who were hired in 1986.
SELECT first_name,
       last_name,
       hire_date
FROM   employees
WHERE  Extract(year FROM hire_date) > 1986
ORDER  BY hire_date ASC;

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, 
-- last name, first name.
SELECT d.dept_no,
	   s.dept_name,
	   d.emp_no,
       e.first_name,
       e.last_name
FROM   dept_manager AS d
       JOIN employees AS e
         ON d.emp_no = e.emp_no
	   JOIN departments as s
	     ON s.dept_no = d.dept_no;
		 
-- List the department of each employee with the following information: employee number, last name, first name, and department name.


SELECT e.emp_no,
	   e.last_name,
	   e.first_name,
	   s.dept_name
FROM   employees as e 
	   JOIN dept_emp as d
	     ON e.emp_no = d.emp_no
	   JOIN departments as s
	     ON d.dept_no = s.dept_no;
		 

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name,
       last_name,
	   sex
FROM   employees
WHERE  first_name = 'Hercules' and last_name LIKE 'B%';


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no,
	   e.last_name,
	   e.first_name,
	   d.dept_name
FROM   employees as e
JOIN   dept_emp as p
	   ON p.emp_no = e.emp_no
JOIN   departments as d
	   ON p.dept_no = d.dept_no
WHERE  d.dept_name = 'Sales';


	   
-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name,count(last_name)
FROM   employees
GROUP BY last_name
ORDER BY count(last_name) DESC;











