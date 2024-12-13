SELECT
    categories.category_name,
    ROUND(AVG(products.unit_price), 2) AS average_unit_price
FROM categories
LEFT JOIN products ON categories.category_id = products.category_id
GROUP BY categories.category_id
ORDER BY average_unit_price DESC;