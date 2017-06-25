SELECT productCode, quantityOrdered FROM orderdetails 
	WHERE orderNumber IN (
		SELECT orderNumber FROM orders WHERE shippedDate IS NOT NULL
			AND (shippedDate - orderDate) > 31
	)
	GROUP BY productCode
	ORDER BY quantityOrdered DESC
	LIMIT 10;
