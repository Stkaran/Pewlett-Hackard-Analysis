-- Deliverable #1
-----------------

-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT e.emp_no,
       e.first_name,
       e.last_name,
-- Retrieve the title, from_date, and to_date columns from the Titles table.
       titles.title,
       titles.from_date,
       titles.to_date
-- Create a new table using the INTO clause.
INTO retirement_titles
FROM employees as e
-- Join both tables on the primary key.
INNER JOIN titles 
ON e.emp_no = titles.emp_no
-- Filter the data on birth_date to get employees born between 1952 and 1955.
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- Order by the employee number.
ORDER BY emp_no ASC;

--Retrieve  emp_no, first and last name, and title from Retirement Titles.
SELECT emp_no,
       first_name,
       last_name,
       title
FROM retirement_titles 

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) 
emp_no,
first_name,
last_name,
title
-- Create a Unique Titles table using the INTO clause.
INTO unique_titles
FROM retirement_titles
-- Sort by Ascend for emp_no and Descend for to_date
ORDER BY emp_no ASC, to_date DESC;

-- Retrieve the number of titles from the Unique Titles table.
SELECT COUNT(title),
    title
-- Create a Retiring Titles table to hold info.
INTO retiring_titles
FROM unique_titles
--Group the table by title
GROUP BY title
-- Sort the count column in descending order.
ORDER BY count DESC; 

-- Deliverable #2
-----------------

-- Retrieve the emp_no, first_name, last_name, and birth_date from Employees.
SELECT DISTINCT ON (emp_no)
       e.emp_no,
       e.first_name,
       e.last_name,
       e.birth_date,
-- Retrieve the from_date and to_date from Department Employee.
       de.from_date,
       de.to_date,
-- Retrieve the title column from Titles.
       titles.title
-- Create a new table using the INTO clause.
INTO mentorship_eligibility
-- Join employee table with Dept_emp and Titles
FROM employees as e
INNER JOIN dept_emp as de
ON e.emp_no = de.emp_no
INNER JOIN titles as titles
ON e.emp_no = titles.emp_no
-- Filter for current employees and hire date between 1/1/65 and 12/31/65
WHERE (de.to_date = '9999-01-01')
    AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no ASC;

