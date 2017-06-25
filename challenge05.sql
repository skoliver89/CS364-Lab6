SELECT  c.customerName AS 'Customer Name', 
	c.phone AS 'Customer Phone',
	CONCAT (e.firstName, ' ', e.lastName) AS 'Rep Name',
	e.jobTitle AS 'REP Job',
	o.phone AS 'REP Phone',
	o.state AS 'REP State',
	SUM(det.quantityOrdered) AS 'Total Ordered',
	MAX(det.priceEach) AS 'Most Expensive'
	FROM customers    AS c
	JOIN employees    AS e   ON c.salesRepEmployeeNumber = e.employeeNumber
	JOIN orders       AS ord ON c.customerNumber = ord.customerNumber
	JOIN offices      AS o   ON e.officeCode = o.officeCode
	JOIN orderdetails AS det ON ord.orderNumber = det.orderNumber
	WHERE c.customerName LIKE '% % % % %'
	OR det.priceEach >= 100
 	GROUP BY c.customerName
	ORDER BY c.customerName
	LIMIT 30;
