--Create titles table
CREATE TABLE titles (
    title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(100) NOT NULL
);

--Create employees table
CREATE TABLE employees (
    emp_no INTEGER PRIMARY KEY,
    emp_title_id VARCHAR(10) REFERENCES titles(title_id) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex CHAR(1) NOT NULL,
    hire_date DATE NOT NULL
);


--Create salaries table
CREATE TABLE salaries (
    emp_no INTEGER REFERENCES employees(emp_no) NOT NULL,
    salary INTEGER NOT NULL,
    PRIMARY KEY (emp_no)
);


--Create departments table
CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL
);


--Create dept_manager table
CREATE TABLE dept_manager (
    dept_no VARCHAR(10) REFERENCES departments(dept_no) NOT NULL,
    emp_no INTEGER REFERENCES employees(emp_no) NOT NULL,
    PRIMARY KEY (dept_no, emp_no)
);


--Create dept_emp table
CREATE TABLE dept_emp (
    emp_no INTEGER REFERENCES employees(emp_no) NOT NULL,
    dept_no VARCHAR(10) REFERENCES departments(dept_no) NOT NULL,
    PRIMARY KEY (emp_no, dept_no)
);


