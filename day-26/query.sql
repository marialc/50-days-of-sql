SELECT
    SUBSTR(InvoiceDate, 1, 4) AS Year,
    COUNT(InvoiceId) AS InvoiceCount
FROM Invoice
GROUP BY Year
ORDER BY Year;