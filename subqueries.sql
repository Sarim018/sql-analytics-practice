-- Find employees whose salary is greater than the average salary.
select
first_name
from employee_salary
where salary > (select avg(salary)
from employee_salary);

-- Employees older than average age
select
first_name, age
from employee_demographics
where age > (select avg(age)
from employee_demographics);

-- Employees working in Finance department
select
first_name
from employee_salary
where dept_id = (select department_id from parks_departments
				where department_name = 'Finance' );

-- Employees earning the highest salary
select
first_name
from employee_salary
where salary = (select max(salary)
from employee_salary);

-- Departments with at least one employee earning more than 80,000
select
department_name
from parks_departments
where department_id in (select dept_id
						from employee_salary
                        where salary > 80000
                        );
                        
-- Employees earning more than their department's average salary
select
first_name,
salary,
dept_id
from employee_salary s
where salary > (select avg(salary) 
				from employee_salary
                where dept_id = s.dept_id
                );
            
-- Departments where average salary is above company average
select
department_name
from parks_departments
where department_id in 
					(select dept_id
                    from employee_salary
                    group by dept_id
                    having avg(salary) > 
                    (select avg(salary)
                    from employee_salary
                    ));
                    
-- Employees earning less than minimum salary of department id 2
select
first_name,
salary
from employee_salary
where salary < (select min(salary)
				from employee_salary
                where dept_id = 2
                );
                
-- Employees working in departments with more than 2 employees
select
first_name
from employee_salary
where dept_id in 
			(select dept_id
            from employee_salary
            group by dept_id
            having count(*) > 2
            );
