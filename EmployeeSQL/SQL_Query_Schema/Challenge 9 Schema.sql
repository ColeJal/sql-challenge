Drop Table If Exists departments CASCADE
Drop Table If Exists titles CASCADE
Drop Table If Exists employees CASCADE
Drop Table If Exists salaries CASCADE
Drop Table If Exists dept_manager CASCADE
Drop Table If Exists dept_emp CASCADE

-- I am creating my tables.

Create Table departments(
	dept_no VARCHAR(30) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(30) NOT NULL
);


Create Table titles(
	title_id VARCHAR(30) PRIMARY KEY,
	title VARCHAR(30)
);


Create Table employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex CHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY(emp_title_id) References titles(title_id)
);


Create Table Salaries(
	emp_no INT NOT NULL PRIMARY KEY,
	salaries INT,
	FOREIGN KEY(emp_no) References employees(emp_no)
);



Create Table dept_manager(
	dept_no VARCHAR(30) NOT NULL,
	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY(dept_no) References departments(dept_no)
);


Create Table dept_emp(
	emp_no INT,
	dept_no VARCHAR(30),
	PRIMARY KEY(emp_no, dept_no),
	FOREIGN KEY(emp_no) References employees(emp_no),
	FOREIGN KEY(dept_no) References departments(dept_no)
);








