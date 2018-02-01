SELECT DISTINCT Employee.FirstName || " " || Employee.LastName as "Sales Rep"
FROM Employee JOIN Customer 
ON Employee.EmployeeId = Customer.SupportRepId
