SELECT productName, productVendor FROM products
	WHERE productLine = 'Vintage Cars'
	AND productCode IN(
		SELECT productCode FROM orderdetails WHERE orderNumber IN(
			SELECT orderNumber FROM orders WHERE YEAR(OrderDate) = 2005
						       AND MONTH(OrderDate) = 1      
						       AND customerNumber IN(
				SELECT customerNumber FROM customers WHERE salesRepEmployeeNumber IN(
					SELECT employeeNumber FROM employees WHERE firstName = 'Leslie'
									     AND lastName = 'Jennings'
				)
			)
		)
	)
;
