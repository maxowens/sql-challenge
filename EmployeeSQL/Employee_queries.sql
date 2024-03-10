-- Employee SQL Queries

-- Query 1

SELECT 
e.emp_no,
e.last_name,
e.first_name,
e.sex,
s.salary
FROM employees e JOIN salaries s ON e.emp_no = s.emp_no;


-- Query 2

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date < '1987-01-01';


-- Query 3

SELECT 
    d.dept_no,
    d.dept_name,
    dm.emp_no AS manager_emp_no,
    e.last_name AS manager_last_name,
    e.first_name AS manager_first_name
FROM 
    departments d
JOIN 
    dept_manager dm ON d.dept_no = dm.dept_no
JOIN 
    employees e ON dm.emp_no = e.emp_no;



-- Query 4

SELECT 
    e.emp_no,
    e.last_name,
    e.first_name,
    de.dept_no,
    d.dept_name
FROM 
    employees e
JOIN 
    dept_emp de ON e.emp_no = de.emp_no
JOIN 
    departments d ON de.dept_no = d.dept_no;



-- Query 5

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';



-- Query 6

SELECT 
    e.emp_no,
    e.last_name,
    e.first_name
FROM 
    employees e
JOIN 
    dept_emp de ON e.emp_no = de.emp_no
JOIN 
    departments d ON de.dept_no = d.dept_no
WHERE 
    d.dept_name = 'Sales';



-- Query 7

SELECT 
    e.emp_no,
    e.last_name,
    e.first_name,
    d.dept_name
FROM 
    employees e
JOIN 
    dept_emp de ON e.emp_no = de.emp_no
JOIN 
    departments d ON de.dept_no = d.dept_no
WHERE 
    d.dept_name IN ('Sales', 'Development');



-- Query 8

SELECT 
    last_name,
    COUNT(*) AS frequency
FROM 
    employees
GROUP BY 
    last_name
ORDER BY 
    frequency DESC;










