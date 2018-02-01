SELECT Employee.FirstName || " " || Employee.LastName as "Sales Rep", InvoiceId as "Invoice ID"
FROM Invoice 
JOIN Customer
ON Customer.CustomerId = Invoice.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId