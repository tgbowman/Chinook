SELECT I.InvoiceId as "Invoice ID", Count(L.InvoiceLineId) "Line Count"
FROM Invoice I
JOIN InvoiceLine L
ON I.InvoiceId = L.InvoiceId
GROUP BY I.InvoiceId