SELECT Count(T.TrackId), P.Name
FROM Playlist P
JOIN PlaylistTrack
ON P.PlaylistId = PlayListTrack.PlayListId
JOIN Track T
ON PlayListTrack.TrackId = T.TrackId
GROUP BY P.Name