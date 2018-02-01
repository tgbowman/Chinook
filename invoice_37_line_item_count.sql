SELECT COUNT(L.InvoiceLineId) as "Line Count"
FROM Invoice I
JOIN InvoiceLine L
ON I.InvoiceId = L.InvoiceId
WHERE L.InvoiceId = 37