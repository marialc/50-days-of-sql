SELECT 
    Country,
    COUNT(CustomerId) AS CustomerCount
FROM Customer
GROUP BY Country
ORDER BY Country;