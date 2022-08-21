-- I want to make sure all my info has imported properly form the csv files.
-- Reason I'm doing Select * for all Tables.

Select *
From departments

Select *
From titles

Select *
From employees

Select *
From salaries

Select *
From dept_manager

Select *
From dept_emp

-- I will now answer questions from challenge nine.
Select employees.emp_no As employee_number, last_name, first_name, sex, salaries.salaries
From employees
Join salaries On employees.emp_no = salaries.emp_no




Select first_name, last_name, hire_date
From employees
Where hire_date > '1986-1-1' ::date AND hire_date < '1987-1-1' ::date




Select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
From dept_manager
Join employees
On dept_manager.emp_no = employees.emp_no
Join departments
On dept_manager.dept_no = departments.dept_no


Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees 
Join dept_emp
On employees.emp_no = dept_emp.emp_no
Join departments
On dept_emp.dept_no = departments.dept_no



Select first_name, last_name, sex
From employees
Where first_name LIKE 'Hercules'
And last_name LIKE 'B%';



Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
Join dept_emp
On employees.emp_no = dept_emp.emp_no
Join departments
On dept_emp.dept_no = departments.dept_no
Where departments.dept_name ='Sales'


Select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
From employees
Join dept_emp
On employees.emp_no = dept_emp.emp_no
Join departments
On dept_emp.dept_no = departments.dept_no
Where departments.dept_name ='Sales'
Or departments.dept_name = 'Development'



Select last_name, count(last_name) As "employee count"
From employees
Group By last_name
Order By "employee count" DESC






