SELECT
    CustomerId,
    InvoiceDate,
    SUM(Total) OVER (PARTITION BY CustomerId ORDER BY InvoiceDate) AS RunningTotal
FROM Invoice
ORDER BY CustomerId, InvoiceDate;