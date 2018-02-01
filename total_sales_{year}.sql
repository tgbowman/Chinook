SELECT SUM(I.Total) as "Total Sales"
FROM Invoice I
WHERE I.InvoiceDate BETWEEN "2011-01-01" AND "2011-12-31"