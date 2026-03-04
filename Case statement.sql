-- Question:
-- Categorize employees into:
-- High Salary → salary > 70,000
-- Medium Salary → salary between 40,000 and 70,000
-- Low Salary → salary < 40,000
-- Display: first_name, salary, salary_category

select
first_name, salary,
case
	when salary > 70000 then 'high salary'
    when salary between 40000 and 70000 then 'medium salary'
    else 'low salary'
end as salary_category
from employee_salary;

-- Question:
-- Categorize employees based on age:
-- Young → age < 30
-- Mid Age → age between 30 and 50
-- Senior → age > 50
-- Display: first_name, age, age_group
select
first_name, age,
case
	when age < 30 then 'Young'
    when age between 30 and 50 then 'Mid Age'
    else 'Senior'
end as age_group
from employee_demographics;

-- Question:
-- Create a column that labels employees as:
-- 'Finance Department' if department_name = Finance
-- 'Other Department' otherwise
-- Display: first_name, department_name, department_label
select
d.first_name,
p.department_name,
case
	when department_name = 'Finance' then 'finance department'
    else 'other department'
end as department_label
from employee_salary s
join employee_demographics d
on s.employee_id = d.employee_id
join parks_departments p
on s.dept_id = p.department_id;

-- Question:
-- Create a column bonus_eligibility where:
-- Employees earning more than 60,000 → 'Eligible'
-- Others → 'Not Eligible'
select
concat(first_name,' ', last_name) as full_name, salary,
case
	when salary > 60000 then 'Eligible'
    else 'Not Eligible'
end as Bonus_eligiblity
from employee_salary;

-- Question:
-- Show departments and label them as:
-- 'Large Department' if employee count > 3
-- 'Small Department' otherwise
SELECT
    p.department_name,
    COUNT(s.employee_id) AS total_employees,
    CASE
        WHEN COUNT(s.employee_id) > 3 THEN 'Large Department'
        ELSE 'Small Department'
    END AS label
FROM parks_departments p
LEFT JOIN employee_salary s
    ON p.department_id = s.dept_id
GROUP BY p.department_name;

-- Question:
-- Categorize employees based on first letter of first_name:
-- A–M → 'First Half Alphabet'
-- N–Z → 'Second Half Alphabet'
select
first_name,
case
	when left(first_name, 1) between 'A' and 'M' then 'first half alphabet'
    else 'second half alphabet'
end as alphabet_group
from employee_demographics;

-- Question:
-- Create employee code using CASE:
-- If salary > 70,000 → prefix 'SR'
-- Otherwise → prefix 'JR'
-- Then attach employee_id
select
first_name,
salary,
concat(case 
		when salary > 70000 then 'SR'
        else 'JR'
        end, employee_id) as employee_code
        from employee_salary;
        


    


    
    