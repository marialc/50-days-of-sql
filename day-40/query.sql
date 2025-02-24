SELECT
    city,
    company_name,
    contact_name,
    'customers' AS relationship
FROM customers
UNION
SELECT
    city,
    company_name,
    contact_name,
    'suppliers' AS relationship
FROM suppliers;
