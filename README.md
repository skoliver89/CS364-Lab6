# CS364-Lab6
MySQL Lab containing the "winners" of the difficult query challenge

Challenge #1 <br />
Question:  <br />
The sales department has found that the Eurasian market is going to experience a boom in the next year. The sales department wants to increase the sale of popular items by 6%. To get an example of what the prices would be we need to get the customerNumber, orderNumber, and productCode, for all items currently sold to non-US markets. Then we need to calculate the priceEach with 6% increase and the potential profit based on the the prices with the 6% increase and the quantity ordered for each order minus the original total. The sales department would also like this information for future use, write the query implicitly and as a stored program in a language of your choice (IE: Python, C). The table should contain 7 columns and 1,992 rows. You will also need the mysql round function to round potential profit to the nearest two decimal places.

Question # 2 <br />
Return the check number and payment date for all payments whose checks begin with the letter ‘P’ and were written in February of 2004

Question # 3 <br />
Show me the ten highest quantity products what were shipped (does not count null) at least a month after they were ordered.

Question # 4 <br />
Show the customer (name, contact name, phone number), order number, and sales rep for all orders that were ordered or shipped during april of any year. Order by sales rep

Question # 5 <br />
A company wants to rewards all of its customers who purchased items that cost more than 100 dollars each, and the sales representatives that sold it to them. They also want to reward customers and the sales reps of customers that have names consisting of five or more words (as part of a competition for longest name). Write a query that returns these customers' names, phone numbers, the total quantity of products ordered, and the price of the most expensive item they bought. Also have it return the sales rep employees' names (all in one column), job titles, phone numbers, and states. Limit it to the top 30, ordered by customerName

Question # 6 <br />
Display all orders placed in the month of February during any year other than 2004 where the sales representative was employee Leslie Jennings. Hint: this query requires multiple nested queries as the data is contained in multiple tables.

Question # 7 <br />
The company wants to reward the top three sales reps in the USA. Provide the employeeNumber, employeeName, email, and totalSales (in dollars) for the Top three sales reps ordered from first in sales to third in sales.

Question # 8 <br />
English Question: What is the product name and vendor of all vintage cars that customers ordered from Leslie Jennings during the month of January 2005? 
