SELECT E.FirstName || " " || E.LastName as "Sales Rep" , COUNT(C.CustomerId) as "Customer Count"
FROM Customer C
JOIN Employee E 
ON C.SupportRepId = E.EmployeeId
Group BY E.FirstName