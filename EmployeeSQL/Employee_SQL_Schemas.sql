---------------------------------
----     Data Engineering     ---
---------------------------------

-- Create departments table:
CREATE TABLE departments (
    dept_no VARCHAR(255) NOT NULL,
    dept_name VARCHAR(255),
    PRIMARY KEY (dept_no)
);

-- Create titles table:
CREATE TABLE titles (
    title_id VARCHAR(255) NOT NULL,
    title VARCHAR(255),
    PRIMARY KEY (title_id)
);

-- Create employees table:
CREATE TABLE employees (
    emp_no INTEGER NOT NULL,
    emp_title_id VARCHAR(255) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    sex VARCHAR(1),
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);

-- Create salaries table:
CREATE TABLE salaries (
    emp_no INTEGER NOT NULL,
    salary INTEGER NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-- Create dept_emp table:
CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(255) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- Create dept_manager table:
CREATE TABLE dept_manager (
    dept_no VARCHAR(255) NOT NULL,
    emp_no INTEGER NOT NULL,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);

-- Select all records from departments table:
SELECT * FROM departments;

-- Select all records from titles table
SELECT * FROM titles;

-- Select all records from employees table
SELECT * FROM employees;

-- Select all records from salaries table
SELECT * FROM salaries;

-- Select all records from dept_emp table:
SELECT * FROM dept_emp;

-- Select all records from dept_manager table
SELECT * FROM dept_manager;