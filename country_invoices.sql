SELECT COUNT(I.InvoiceId), I.BillingCountry
FROM Invoice I
GROUP BY I.BillingCountry