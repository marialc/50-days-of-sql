SELECT 
    Name,
    CASE
        WHEN Milliseconds > 300000 THEN 'Long'
        WHEN Milliseconds > 120000 THEN 'Medium'
        ELSE 'Short'
    END AS LengthCategory
FROM Track
ORDER BY 
    LengthCategory,
    Name;
