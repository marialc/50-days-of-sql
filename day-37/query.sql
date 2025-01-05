SELECT
    doctors.first_name,
    doctors.last_name,
    COUNT(admissions.patient_id) AS admissions_total
FROM doctors
JOIN admissions ON doctors.doctor_id = admissions.attending_doctor_id
GROUP BY doctors.doctor_id;