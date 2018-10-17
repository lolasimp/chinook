--non_usa_customers.sql: Provide a query showing Customers (just their full names, customer ID and country)
--who are not in the US.
/**select 
	FullName = FirstName + ' ' + LastName,
	CustomerId,
	Country
from Customer
where Country != 'USA'**/

--brazil_customers.sql: Provide a query only showing the Customers from Brazil.
--select *
--from Customer
--where Country = 'Brazil'

--brazil_customers_invoices.sql: Provide a query showing the Invoices of customers who are from Brazil.
--The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country 

select FullName = customer.FirstName + ' ' + customer.LastName, Invoice.InvoiceId, Invoice.InvoiceDate, Country
from Customer
inner join Invoice
on Customer.CustomerId = Invoice.CustomerId 
where Country = 'Brazil' 