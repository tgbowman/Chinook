SELECT L.InvoiceLineId as "Invoice Line ID", T.Name as "Track", A.Name as "Artist"
FROM InvoiceLine L
JOIN Track T
ON L.TrackId = T.TrackId
JOIN Album 
ON T.AlbumId = Album.AlbumId
JOIN Artist A
ON Album.ArtistId = A.ArtistId