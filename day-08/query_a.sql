SELECT Artist.Name
FROM Artist
LEFT JOIN Album ON Artist.ArtistId = Album.ArtistId
WHERE Album.ArtistId IS NULL
ORDER BY Artist.ArtistId;