SELECT COUNT(L.InvoiceLineId) as "Line Items", I.InvoiceId as "Invoice ID"
FROM InvoiceLine L
JOIN Invoice I
On L.InvoiceId = I.InvoiceId
GROUP BY I.InvoiceId