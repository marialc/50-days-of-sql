WITH AlbumDuplicates AS (
    SELECT InvoiceLine.InvoiceId
    FROM InvoiceLine
    JOIN Track ON InvoiceLine.TrackId = Track.TrackId
    GROUP BY InvoiceLine.InvoiceId, Track.AlbumId
    HAVING COUNT(AlbumId) > 1
)
SELECT InvoiceId, COUNT(*) AS DuplicateAlbumCount
FROM AlbumDuplicates
GROUP BY InvoiceId
ORDER BY InvoiceId;