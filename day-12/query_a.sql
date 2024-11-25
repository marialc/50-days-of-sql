SELECT
    Artist.Name AS ArtistName,
    SUM(InvoiceLine.UnitPrice * InvoiceLine.Quantity) AS TotalSales
FROM Artist
JOIN Album ON Artist.ArtistId = Album.ArtistId
JOIN Track ON Album.AlbumId = Track.AlbumId
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
GROUP BY Artist.Name
ORDER BY TotalSales DESC
LIMIT 5;