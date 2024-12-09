SELECT 
  GenreId, 
  Name AS MaxDurationTrackName 
FROM Track 
WHERE (GenreId, Milliseconds) IN (
    SELECT 
      GenreId, 
      MAX(Milliseconds) 
    FROM Track 
    GROUP BY GenreId
)
ORDER BY GenreId ASC;