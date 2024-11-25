SELECT
    patients.first_name,
    patients.last_name,
    province_names.province_name
FROM patients
JOIN province_names
ON province_names.province_id = patients.province_id;