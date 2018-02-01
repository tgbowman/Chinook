SELECT FirstName || " " || LastName as "Sales Rep", MAX(Total) as "2009 Total Sales"
FROM (SELECT SUM(I.Total) as Total, E.FirstName, E.LastName
FROM Invoice I
JOIN Customer 
ON I.CustomerId = Customer.CustomerId
JOIN Employee E
ON Customer.SupportRepId = E.EmployeeId
WHERE I.InvoiceDate BETWEEN "2009-01-01" AND "2009-12-31"
GROUP BY E.FirstName)
