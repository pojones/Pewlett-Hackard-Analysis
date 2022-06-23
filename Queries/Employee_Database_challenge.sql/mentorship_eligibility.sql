SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date,
        de.from_date, de.to_date,
        ti.title
INTO mentorship_eligibility
FROM employees as e
INNER JOIN dept_employee as de
    ON (e.emp_no = de.emp_no)
LEFT JOIN titles as ti
    ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01') 
    AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;