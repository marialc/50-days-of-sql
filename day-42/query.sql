SELECT
    Track.Name, 
    COUNT(Track.GenreId) AS GenreCount
FROM Track
JOIN Genre ON Track.GenreId = Genre.GenreId
GROUP BY Track.TrackId, Track.Name
HAVING COUNT(Track.GenreId) > 1;