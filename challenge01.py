#!/usr/bin/python

import MySQLdb as mdb
import sys

try:
  con = mdb.connect('localhost', 'solivers17', 'OChigh89!', 'classicmodels')
  cur = con.cursor()
  cur.execute("""SELECT o.orderNumber, od.productCode, o.customerNumber, od.priceEach,
		 (od.priceEach + (od.priceEach * .06)), (od.priceEach * od.quantityOrdered),
		 ((od.priceEach * .06) * od.quantityOrdered) 
		 FROM orders AS o, orderdetails as od, products AS p
		 WHERE o.orderNumber = od.orderNumber
		 AND od.productCode = p.productCode
		 AND o.customerNumber IN(SELECT customerNumber FROM customers WHERE country != 'USA')
		 LIMIT 100""")
  rows = cur.fetchall()
  col = ['orderNumber', 'productCode', 'customerNumber', 'priceEach', \
'priceIncrease', 'grandTotal', 'potentialProfit']
  print """| %11s | %11s | %14s | %11s | %13s | %10s | %15s | 
""" % (col[0], col[1], col[2], col[3], col[4], col[5], col[6])
  for row in rows:
    print """| %11d | %11s | %14d | %11.2f | %13.4f | %10.2f | %15.0f |
""" % (row[0], row[1], row[2], row[3], row[4], row[5], row[6])  

except mdb.Error, e:
  print("MySQL ERROR!")
  print("Error: %s" % e.args[1])
  sys.exit(1)

finally:
  if con:
    con.close()
