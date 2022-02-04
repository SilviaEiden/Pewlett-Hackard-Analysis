-- MODULE 7 CHALLENGE START (22)steps
--Deliverable 1
--Code to create retirement_titles table
SELECT emp_no, first_name, last_name
FROM employees;

SELECT title, from_date, to_date
FROM titles;

SELECT 	emp.emp_no,
    	emp.first_name,
    	emp.last_name,
		titles.title,
		titles.from_date,
		titles.to_date
INTO retirement_titles
FROM employees as emp
LEFT JOIN titles
ON (emp.emp_no = titles.emp_no)
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp.emp_no ASC;

SELECT * FROM retirement_titles;

SELECT COUNT (emp_no)
FROM retirement_titles;

--Code to create unique_titles table
-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON 	(emp_no) emp_no,
					first_name,
					last_name,
					title
INTO unique_titles
FROM retirement_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

SELECT COUNT (emp_no)
FROM unique_titles;

--Code to create retiring_titles table
SELECT 	COUNT 	(title),
    			title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT * FROM retiring_titles;

SELECT COUNT (title)
FROM retiring_titles;

--Deliverable 2
--Code to create mentorship_eligibility table
SELECT 	emp_no,
		first_name,
		last_name,
		birth_date
FROM employees;

SELECT 	from_date,
		to_date
FROM dept_emp;

SELECT title
FROM titles;

SELECT DISTINCT ON 	(emp.emp_no) emp.emp_no,
					emp.first_name,
					emp.last_name,
					emp.birth_date,
					de.from_date,
					de.to_date,
					titles.title
INTO mentorship_eligibility
FROM employees as emp
LEFT JOIN dept_emp as de 
ON (emp.emp_no = de.emp_no)
LEFT JOIN titles
ON (emp.emp_no = titles.emp_no)
WHERE (de.to_date = ('9999-01-01'))
AND (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;

SELECT * FROM mentorship_eligibility;

SELECT COUNT (emp_no)
FROM mentorship_eligibility;

