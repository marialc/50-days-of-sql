SELECT 
    strftime('%Y-%m', InvoiceDate) AS Month,
    SUM(Total) AS TotalSales 
FROM Invoice
GROUP BY Month
ORDER BY Month;