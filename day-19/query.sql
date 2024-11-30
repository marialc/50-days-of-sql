SELECT
    first_name,
    last_name,
    COUNT(*) AS num_of_duplicates
FROM patients
GROUP BY 
    first_name, 
    last_name
HAVING num_of_duplicates > 1;