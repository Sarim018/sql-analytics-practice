use parks_and_recreation;

-- Create a list of all first names from:
-- employee_demographics
-- employee_salary
-- Remove duplicates.
select
first_name
from employee_demographics
union
select
first_name
from employee_salary;
;

-- Create a combined list of all first names from both tables, but this time keep duplicates.
select
first_name
from employee_demographics
union all
select
first_name
from employee_salary;
;

-- Create a list showing: first_name source_table
-- Where: Employees from demographics → label as 'Demographics' Employees from salary → label as 'Salary'
select
first_name, 'demographics' as source_table
from employee_demographics
union
select 
first_name, 'salary' as Source_table
from employee_salary;

-- Create a list of: employee_id first_name
-- From: employee_demographics where age > 40 employee_salary where salary > 70000
-- Combine both results.
select
employee_id, first_name
from employee_demographics
where age > 40
union
select
employee_id, first_name
from employee_salary
where salary > 70000;

-- Create a combined list of: name type
-- Where: employee first names → type = 'Employee' department names → type = 'Department'
select
first_name as name, 'employee' as type
from employee_demographics
union
select
department_name as name, 'department' as type
from parks_departments;

-- Question:
-- Create a list of senior employees based on two different criteria:
-- 1. Employees whose age is greater than 50 (from employee_demographics)
-- 2. Employees whose salary is greater than 80,000 (from employee_salary)
-- Combine both lists into one result.
-- Display: employee_id, first_name
select
employee_id, first_name
from employee_demographics
where age > 50
union
select
employee_id, first_name
from employee_salary
where salary > 80000;

-- Question:
-- Create a combined list of employee first names from both employee_demographics and employee_salary.
-- Add a column named source indicating whether the record came from:
-- 'Demographics Table' or 'Salary Table'
-- Display: first_name, source
select
first_name as name, 'demographics' as source
from employee_demographics
union
select
first_name as name, 'salary' as source
from employee_salary;

-- Question:
-- Create a report of:
-- 1. Employees earning more than 70,000 (label as 'High Earner')
-- 2. Employees earning less than 40,000 (label as 'Low Earner')
-- Combine both result sets into one output.
-- Display: first_name, salary, category
select
first_name, salary, 'High Earner' as category
from employee_salary
where salary > 70000
union
select
first_name, salary, 'Low Earner' as category
from employee_salary
where salary < 40000;

-- Question:
-- Create a combined directory that includes:
-- 1. Employee first names (from employee_demographics)
-- 2. Department names (from parks_department)
-- Label employees as 'Employee' and departments as 'Department'
-- Display: name, type
select
first_name, 'Employee' as type
from employee_demographics
union
select
department_name, 'Department' as type
from parks_departments;

-- Question:
-- Create a list of employees who meet either of the following conditions:
-- 1. Age greater than 45
-- 2. Salary greater than 75,000
-- Combine both result sets into a single output without removing duplicates.
-- Display: employee_id, first_name
select
employee_id, first_name
from employee_demographics
where age > 45
union all
select
employee_id, first_name
from employee_salary
where salary > 75000;

-- Question:
-- Create a report showing:
-- 1. Employees older than 50 along with their department name
-- 2. Employees earning more than 80,000 along with their department name
--
-- Combine both result sets into one output.
--
-- Display: employee_id, first_name, department_name

select
d.employee_id,
d.first_name,
p.department_name
from employee_demographics d
inner join employee_salary s
on d.employee_id = s.employee_id
inner join parks_departments p 
on s.dept_id = p.department_id
where age > 50
union
select
s.employee_id,
s.first_name,
p.department_name
from employee_salary s 
inner join parks_departments p
on s.dept_id = p.department_id
where salary > 80000

