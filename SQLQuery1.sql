--sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent.
--The resultant table should include the Sales Agent's full name.


--select FullName = e.FirstName + ' ' + e.LastName, Invoice.InvoiceId
--from Customer c
--inner join Employee e
--on c.SupportRepId  = e.EmployeeId
--join Invoice
--on c.CustomerId = Invoice.CustomerId

--total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?

--SELECT count(*) as InvoiceTotal
--from Invoice
--where InvoiceDate between '20090101' and '20120101'

--invoice_totals.sql: Provide a query that shows the Invoice Total, 
--Customer name, Country and Sale Agent name for all invoices and customers.

select CustomerName= c.FirstName + ' ' + c.LastName,  c.Country, SaleAgentName = e.FirstName + ' ' + e.LastName, Invoice.Total
from Customer c
inner join Employee e
on c.SupportRepId  = e.EmployeeId
join Invoice
on c.CustomerId = Invoice.CustomerId