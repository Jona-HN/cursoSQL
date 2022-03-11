# Ejercicio 2
# Mostrar el total de rentas que han tenido las películas del inventario
# Mostrar su ID de película, título e idioma.

USE sakila;

SELECT 
COUNT(r.rental_id), 
i.film_id,
f.title,
l.name
FROM rental r
INNER JOIN inventory i
ON i.inventory_id = r.inventory_id
INNER JOIN film f
ON i.film_id = f.film_id
INNER JOIN language l
ON f.language_id = l.language_id
GROUP BY title