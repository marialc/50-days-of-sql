SELECT 
    patient_id,
    COUNT(admission_date) AS total_admissions
FROM admissions
WHERE patient_id = 579;