SELECT FirstName || " " || LastName as "Sales Rep", MAX(Total) as "Total Sales"
FROM (SELECT ROUND(SUM(I.Total),2) as Total, E.FirstName, E.LastName
FROM Invoice I
JOIN Customer 
ON I.CustomerId = Customer.CustomerId
JOIN Employee E
ON Customer.SupportRepId = E.EmployeeId

GROUP BY E.FirstName)