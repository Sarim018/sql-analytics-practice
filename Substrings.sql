use parks_and_recreation;
-- Question:
-- Display all employee first names in uppercase.
-- Output: first_name_upper
select 
Upper(first_name) as first_name_upper
from employee_demographics;

-- Question:
-- Combine first_name and last_name to create a full_name column.
-- Output: full_name
select
concat(first_name,' ',last_name) as full_name
from employee_demographics;

-- Question:
-- Show each employee's first name along with the number of characters in the name.
-- Output: first_name, name_length
select
first_name, length(first_name)
from employee_demographics;

-- Question:
-- Display the first 3 characters of each employee's first name.
-- Output: first_name, short_name
select
first_name, substring(first_name, 1, 3) as short_name
from employee_demographics;

-- Question:
-- Extract the year from the birth_date column.
-- Output: first_name, birth_year
select 
first_name, substring(birth_date, 1, 4) as birth_year
from employee_demographics;

-- Question:
-- Replace all occurrences of letter 'a' with '@' in employee first names.
-- Output: modified_name
select
replace(first_name,'a','@') as modified_name
from employee_demographics;

-- Question:
-- Display employees whose first name starts with letter 'A'.
select
first_name
from employee_demographics
where first_name like 'a%';

-- Question:
-- Show the last 2 characters of each employee's first name.
-- Output: first_name, last_two_letters
select
first_name, right(first_name, 2) as last_two_letters
from employee_demographics;

-- Question:
-- Find the position of letter 'e' in each employee's first name.
-- Output: first_name, position_of_e
select
first_name, locate('e', first_name)
from employee_demographics
where first_name like '%e%';

-- Question:
-- Create an employee code using:
-- First 2 letters of first_name + employee_id
SELECT 
CONCAT(LEFT(first_name,2), employee_id) AS employee_code
FROM employee_demographics;

