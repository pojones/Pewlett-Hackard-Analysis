-- retrieve the emp_no, first_name, last_name, and title columns from retirement_titles
SELECT rt.emp_no, rt.first_name, rt.last_name, rt.title
FROM retirement_titles as rt;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_tables
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no;

SELECT * FROM unique_tables;