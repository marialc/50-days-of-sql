SELECT Name
FROM Artist
WHERE ArtistId NOT IN (SELECT ArtistId FROM Album)
ORDER BY ArtistId;