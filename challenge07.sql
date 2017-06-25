SELECT 	employeeNumber, CONCAT(firstName, ' ',  lastname) AS 'employeeName', email, 
	SUM(od.quantityOrdered*od.priceEach) AS 'totalSales'
	FROM employees e
	JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber 
	JOIN orders o ON c.customerNumber = o.customerNumber
	JOIN orderdetails od ON o.orderNumber = od.orderNumber
	WHERE officeCode IN (SELECT officeCode FROM offices WHERE country = 'USA')
	GROUP BY e.employeeNumber
	ORDER BY totalSales DESC
	LIMIT 3
;
