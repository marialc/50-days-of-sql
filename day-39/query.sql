SELECT
    admission_date,
    COUNT(admission_date) AS admission_day,
    COUNT(admission_date) - LAG(COUNT(admission_date)) OVER(ORDER BY admission_date) AS admission_count_change 
FROM admissions
GROUP BY admission_date;