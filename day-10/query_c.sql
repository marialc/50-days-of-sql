SELECT 
    patient_id, 
    MAX(admission_date) AS admission_date,
    discharge_date,
    diagnosis,
    attending_doctor_id
FROM admissions
WHERE patient_id = 542
GROUP BY patient_id;