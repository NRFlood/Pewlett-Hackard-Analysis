-- Number of people retiring by title
SELECT ce.emp_no,
	ce.first_name,
  	ce.last_name,
  	t.title,
  	t.from_date,
  	t.to_date
INTO retirement_titles
FROM employees AS ce
  INNER JOIN titles AS t
    ON (ce.emp_no = t.emp_no)
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY ce.emp_no;

SELECT * FROM retirement_titles

-- Remove duplicate rows from retirement_titles table
SELECT DISTINCT ON (emp_no) emp_no, 
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirement_titles
WHERE to_date = ('9999-01-01')
ORDER BY emp_no ASC;

SELECT * FROM unique_titles

-- Count the number of employees by title
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_titles

-- Potential employee mentorship program mentors
SELECT DISTINCT ON (e.emp_no) e.emp_no,
  	e.first_name,
  	e.last_name,
  	e.birth_date,
  	de.from_date,
  	de.to_date,
  	t.title
INTO mentorship
FROM employees as e
INNER JOIN dept_emp as de
  ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
  ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

SELECT * FROM mentorship