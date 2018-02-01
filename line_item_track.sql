SELECT L.InvoiceLineId as "Invoice Line ID", T.Name as "Track Name"
FROM InvoiceLine L
JOIN Track T
ON L.TrackId = T.TrackId