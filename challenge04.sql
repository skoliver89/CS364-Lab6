SELECT  customerName AS Customer, 
	CONCAT(contactFirstName, ' ', contactLastName) AS Contact,
	phone AS 'Phone Number',
	orderNumber AS 'Order Number',
	CONCAT(firstName, ' ', lastName) AS 'Sales Rep'
	FROM customers AS c 
	JOIN orders AS o ON c.customerNumber = o.customerNumber
	JOIN employees AS e ON c.salesRepEmployeeNumber = e.EmployeeNumber
	WHERE MONTH(shippedDate) = 4
	OR MONTH(orderDate) = 4
	ORDER BY salesRepEmployeeNumber;
