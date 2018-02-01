SELECT Name
FROM (SELECT COUNT(Artist.ArtistId) as ArtistCount, Artist.Name
FROM InvoiceLine L
JOIN Track T
ON L.TrackId = T.TrackId
JOIN Album A
ON T.AlbumId = A.AlbumId
JOIN Artist
ON A.ArtistId = Artist.ArtistId
GROUP BY Artist.Name
ORDER BY ArtistCount DESC 
LIMIT 3)