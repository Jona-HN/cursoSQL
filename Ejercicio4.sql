# Ejercicio 4
# Muchas tiendas de DVD producen una lista diaria de alquileres vencidos
# para que los clientes puedan ser contactados y se les pida que devuelvan sus DVD vencidos.
# Para crear una lista de este tipo, busque películas en la tabla de alquiler
# con una fecha de devolución NULA. Si es así, la película está vencida y
# debemos producir el nombre de la película junto con el nombre del cliente y el número de teléfono.

USE sakila;

SELECT
r.rental_id,
c.customer_id,
concat(c.first_name, ' ', c.last_name) AS "Nombre completo",
a.phone AS "Número de teléfono",
f.title AS Título,
r.rental_date AS "Fecha de renta"
FROM rental r
LEFT JOIN inventory i ON r.inventory_id = i.inventory_id
LEFT JOIN film f ON i.film_id = f.film_id
LEFT JOIN customer c ON r.customer_id = c.customer_id
LEFT JOIN address a ON c.address_id = a.address_id
WHERE r.return_date IS NULL