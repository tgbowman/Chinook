SELECT T.Name as "Track", A.Title as "Album", M.Name as "Media Type" , G.Name as "Genre"
FROM Track T
JOIN Album A
ON T.AlbumId = A.AlbumId
JOIN MediaType M
ON T.MediaTypeId = M.MediaTypeId
JOIN Genre G
ON T.GenreId = G.GenreId
