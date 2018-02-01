SELECT FirstName || " " || LastName as "Name", InvoiceId as "Invoice ID", InvoiceDate as "Billing Date", BillingCountry as "Billing Country"
FROM Customer JOIN Invoice 
ON Invoice.CustomerId = Customer.CustomerId 
WHERE BillingCountry = "Brazil"