SELECT E.FirstName || " " || E.LastName as "Sales Rep", "$" ||  ROUND(SUM(I.Total),2) as "Total Sales"
FROM Invoice I
JOIN Customer 
ON I.CustomerId = Customer.CustomerId
JOIN Employee E
ON Customer.SupportRepId = E.EmployeeId
GROUP BY E.FirstName