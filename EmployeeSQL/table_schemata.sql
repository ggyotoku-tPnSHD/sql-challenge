CREATE TABLE employees
  (
     emp_no     INT,
     emp_title  VARCHAR,
     birth_date DATE,
     first_name VARCHAR,
     last_name  VARCHAR,
     sex        VARCHAR,
     hire_date  DATE,
     PRIMARY KEY(emp_no),
     FOREIGN KEY (emp_title) REFERENCES titles(title_id)
  );

CREATE TABLE salaries
  (
     emp_no INT,
     salary INT,
     PRIMARY KEY (emp_no),
     FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
  );

CREATE TABLE titles
  (
     title_id VARCHAR,
     title    VARCHAR,
     PRIMARY KEY(title_id)
  );

CREATE TABLE departments
  (
     dept_no   VARCHAR,
     dept_name VARCHAR,
     PRIMARY KEY (dept_no)
  );

CREATE TABLE dept_manager
  (
     dept_no VARCHAR,
     emp_no  INT,
     FOREIGN KEY (emp_no, dept_no) REFERENCES dept_emp(emp_no, dept_no)
  );

CREATE TABLE dept_emp
  (
     emp_no  INT,
     dept_no VARCHAR,
     FOREIGN KEY (emp_no) REFERENCES salaries(emp_no),
     FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
     PRIMARY KEY (emp_no, dept_no)
  );