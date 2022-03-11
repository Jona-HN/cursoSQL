# Ejercicio 3
# Mostrar cuánto han gastado los clientes en rentas y el total de sus rentas

USE sakila;

SELECT
c.customer_id,
c.first_name AS Nombre,
c.last_name AS Apellido,
SUM(p.amount) AS "Gasto total ($)",
COUNT(p.rental_id) AS "Total rentas"
FROM customer c
LEFT JOIN payment p ON c.customer_id = p.customer_id
GROUP BY 1, 2, 3