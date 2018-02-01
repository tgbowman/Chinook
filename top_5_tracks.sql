SELECT TrackCount, Name
FROM (SELECT COUNT(L.TrackId) as TrackCount, T.Name
FROM InvoiceLine L
JOIN Invoice I 
ON L.InvoiceId = I.InvoiceId
JOIN Track T
ON L.TrackId = T.TrackId
GROUP BY T.Name
ORDER BY TrackCount DESC
LIMIT 5)