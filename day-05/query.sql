SELECT
    city,
    company_name,
    contact_name
FROM customers
WHERE city LIKE '%L%'
ORDER BY contact_name ASC