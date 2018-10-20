--sales_agent_invoices.sql: Provide a query that shows the invoices associated with each sales agent.
--The resultant table should include the Sales Agent's full name.


select FullName = e.FirstName + ' ' + e.LastName, Invoice.InvoiceId
from Customer c
inner join Employee e
on c.SupportRepId  = e.EmployeeId
join Invoice
on c.CustomerId = Invoice.CustomerId

--total_invoices_{year}.sql: How many Invoices were there in 2009 and 2011?
--DECLARE @start DATE, @end DATE;
--SELECT @start = '20110714', @end = '20110717';

--;WITH n AS 
--(
--  SELECT TOP (DATEDIFF(DAY, @start, @end) + 1) 
--    n = ROW_NUMBER() OVER (ORDER BY [object_id])
--  FROM sys.all_objects
--)
--SELECT 'Bob', DATEADD(DAY, n-1, @start)
--FROM n;

--SELECT DATEADD(DAY,number+1,@Date1) [Date]
--FROM master..spt_values
--WHERE type = 'P'
--AND DATEADD(DAY,number+1,@Date1) < @Date2

--declare @start DATE, @end DATE;
--select @start = '20090101', @end = '20120101';
--;with d as
--( select DATEADD(DAY, d+1, @DATE1)[Date]
--from Invoice.Id
--where CustomerId = ' '
--and DATEADD(DAY, d+1, @DATE1) < @Date2