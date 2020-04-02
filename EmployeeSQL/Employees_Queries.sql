--List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT E.emp_no, E.last_name, E.first_name, E.gender, S.salary
from "Employees" E
Join "Salaries" S
ON S.emp_no = E.emp_no;

--List employees who were hired in 1986.
SELECT E.emp_no, E.hire_date
FROM "Employees" E
WHERE E.hire_date BETWEEN '1986-01-01' AND '1986-12-01';

--List the manager of each department with: department number, 
--department name, the manager's employee number, last name, first name, 
--and start and end employment dates.
SELECT D.dept_no, D.dept_name, DM.emp_no, E.first_name, E.last_name, DM.from_date, DM.to_date
FROM "Departments" D
JOIN "Department_Manager" DM
ON D.dept_no = DM.dept_no
JOIN "Employees" E
ON E.emp_no = DM.emp_no;

--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT E.emp_no, E.first_name, E.last_name
FROM "Employees" E
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
SELECT E.emp_no, E.first_name, E.last_name, DE.dept_no, D.dept_name
FROM "Employees" E
JOIN "Department_Employee" DE
ON DE.emp_no = E.emp_no
JOIN "Departments" D
ON D.dept_no = DE.dept_no
WHERE D.dept_name LIKE 'Sales';

--List all employees in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.
SELECT E.emp_no, E.first_name, E.last_name, DE.dept_no, D.dept_name
FROM "Employees" E
JOIN "Department_Employee" DE
ON DE.emp_no = E.emp_no
JOIN "Departments" D
ON D.dept_no = DE.dept_no
WHERE D.dept_name LIKE 'Sales' OR D.dept_name LIKE 'Development';

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
SELECT last_name, COUNT (*) AS frequency 
FROM "Employees"
GROUP BY last_name
ORDER BY frequency DESC;




