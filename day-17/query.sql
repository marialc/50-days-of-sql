SELECT
    first_name,
    last_name,
    allergies
FROM patients
WHERE city = 'Hamilton' 
AND allergies IS NOT NULL;