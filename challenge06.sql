SELECT orderNumber, orderDate, shippedDate, customerNumber FROM orders
	WHERE customerNumber IN(
		SELECT customerNumber FROM customers WHERE salesRepEmployeeNumber IN(
			SELECT employeeNumber FROM employees 
			WHERE firstName = 'Leslie' AND lastName = 'Jennings'
		)
	)
	AND YEAR(orderDate) != 2004
	AND MONTH(orderDate) = 2
;
