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

--select FullName = customer.FirstName + ' ' + customer.LastName, Invoice.InvoiceId, Invoice.InvoiceDate, Country
--from Customer
--inner join Invoice
--on Customer.CustomerId = Invoice.CustomerId 
--where Country = 'Brazil' 

--sales_agents.sql: Provide a query showing only the Employees who are Sales Agents
/**select *
from Employee
where Title = 'Sales Support Agent'**/

--unique_invoice_countries.sql: Provide a query showing a unique/distinct list of 
--billing countries from the Invoice table.

--select distinct Invoice.BillingCountry
--from Invoice

--sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent.
--The resultant table should include the Sales Agent's full name.
--SELECT *
--FROM   T1
--       INNER JOIN T2
--         ON T2.C = T1.C
--       INNER JOIN T3
--                  LEFT JOIN T4
--                    ON T4.C = T3.C
--         ON T3.C = T2.C 
select FullName = Employee.FirstName + ' ' + Employee.LastName
from Customer 
right join Employee
on Employee.FirstName = Customer.FirstName

where Employee.Title like '%agent%'


--total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?

--select *
--from Invoice
--where CustomerId = '1'