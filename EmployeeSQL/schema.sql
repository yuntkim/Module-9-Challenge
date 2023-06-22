-- create departments table
CREATE TABLE departments (
    dept_no VARCHAR(10) PRIMARY KEY,
    dept_name VARCHAR(30) NOT NULL
);

-- create department employees table
CREATE TABLE dept_emp (
    emp_no VARCHAR(10) REFERENCES employees(emp_no),
    dept_no VARCHAR(10) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);

-- create department managers table
CREATE TABLE dept_manager (
    dept_no VARCHAR(10) REFERENCES departments(dept_no),
    emp_no VARCHAR(10) REFERENCES employees(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);

-- create employees table
CREATE TABLE employees (
    emp_no VARCHAR(10) PRIMARY KEY,
    emp_title_id VARCHAR(10) REFERENCES titles(title_id),
    birth_date DATE,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    sex VARCHAR(10),
    hire_date DATE
);

-- create salaries table
CREATE TABLE salaries (
    emp_no VARCHAR(10) REFERENCES employees(emp_no),
    salary INTEGER,
    PRIMARY KEY (emp_no, salary)
);

-- create titles table
CREATE TABLE titles (
    title_id VARCHAR(10) PRIMARY KEY,
    title VARCHAR(50)
);