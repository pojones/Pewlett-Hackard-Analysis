-- retrieve number of employees about to retire, grouped by job title
SELECT COUNT(emp_no) count, title
INTO retiring_titles
FROM unique_tables
GROUP BY title
ORDER BY unique_tables.count DESC;