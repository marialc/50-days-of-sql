SELECT 
    Album.Title
FROM Album
LEFT JOIN Track ON Album.AlbumId = Track.AlbumId
WHERE Track.Name IS NULL
ORDER BY Album.AlbumId;