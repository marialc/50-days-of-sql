SELECT 
  first_name, 
  last_name, 
  'Patient' AS role
FROM Patients
UNION ALL
SELECT 
  first_name, 
  last_name, 
  'Doctor'
FROM Doctors;