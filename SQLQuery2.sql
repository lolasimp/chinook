--non_usa_customers.sql: Provide a query showing Customers (just their full names, customer ID and country)
--who are not in the US.
/**select 
	FullName = FirstName + ' ' + LastName,
	CustomerId,
	Country
from Customer
where Country != 'USA'**/

--brazil_customers.sql: Provide a query only showing the Customers from Brazil.
select *
from Customer
where Country = 'Brazil'