SELECT Name
FROM (SELECT COUNT(T.MediaTypeId)as MediaCount, M.Name as Name
FROM InvoiceLine L
JOIN Track T
ON L.TrackId = T.TrackId
JOIN MediaType M
ON T.MediaTypeId = M.MediaTypeId
GROUP BY M.Name
ORDER BY MediaCount desc
LIMIT 1)
