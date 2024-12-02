SELECT
    Artist.Name,
    COUNT(Album.AlbumId) AS AlbumCount
FROM Artist
LEFT JOIN Album ON Artist.ArtistId = Album.ArtistId
GROUP BY 
    Artist.ArtistId, 
    Artist.Name
ORDER BY Artist.ArtistId;