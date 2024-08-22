/* Query 8. List the frequency counts, in descending order, of all the employees that share each last name.*/
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
