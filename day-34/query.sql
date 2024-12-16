SELECT
    Playlist.Name AS Name,
    SUM(Track.Milliseconds) AS TotalDuration
FROM Playlist
JOIN PlaylistTrack ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
JOIN Track ON PlaylistTrack.TrackId = Track.TrackId
GROUP BY Playlist.PlaylistId
ORDER BY Playlist.PlaylistId;