SELECT province_name
FROM province_names
ORDER BY
    CASE 
        WHEN province_name = 'Ontario' THEN 0
        ELSE 1
    END,
    province_name ASC;