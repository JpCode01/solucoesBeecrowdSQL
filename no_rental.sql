SELECT c.id, c.name
FROM customers AS c
WHERE NOT EXISTS (
    SELECT 1
    FROM locations AS l
    WHERE l.id_customers = c.id
)

