SELECT Name as "Top 2013 Track", MAX(Total) as "Number Sold"
FROM (SELECT COUNT(L.TrackId) as Total, T.Name
FROM InvoiceLine L
JOIN Invoice I
ON L.InvoiceId = I.InvoiceId
JOIN Track T
ON L.TrackId = T.TrackId
WHERE I.InvoiceDate BETWEEN "2013-01-01" AND "2013-12-31"
GROUP BY T.Name)