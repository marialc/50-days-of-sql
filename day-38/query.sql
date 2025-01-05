SELECT
    contact_name,
    address,
    city
FROM customers
WHERE country NOT IN ('Germany', 'Mexico', 'Spain');