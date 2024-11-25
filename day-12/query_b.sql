WITH ArtistSales AS (
    SELECT
        a.Name AS ArtistName,
        SUM(il.UnitPrice * il.Quantity) AS TotalSales
    FROM Artist a
    JOIN Album al ON a.ArtistId = al.ArtistId
    JOIN Track t ON al.AlbumId = t.AlbumId
    JOIN InvoiceLine il ON t.TrackId = il.TrackId
    GROUP BY a.Name
)

SELECT 
    ArtistName,
    TotalSales
FROM ArtistSales
ORDER BY TotalSales DESC
LIMIT 5;