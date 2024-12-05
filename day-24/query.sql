SELECT province_names.province_name
FROM patients
JOIN province_names ON patients.province_id = province_names.province_id
GROUP BY province_names.province_name
HAVING
    SUM(CASE WHEN patients.gender = 'M' THEN 1 ELSE 0 END) > 
    SUM(CASE WHEN patients.gender = 'F' THEN 1 ELSE 0 END);