SELECT I.Total as "Invoice Total", C.FirstName || " " || C.LastName as "Customer", C.Country, E.FirstName || " " || E.LastName as "Sales Rep"
FROM Invoice I
JOIN Customer C
ON C.CustomerId = I.CustomerId
JOIN Employee E
ON C.SupportRepId = E.EmployeeId
