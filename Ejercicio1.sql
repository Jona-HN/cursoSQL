# Ejercicio 1
# Mostrar más información de las películas rentadas

USE sakila;

SELECT
r.rental_id as id, 
f.title as Título, 
r.rental_date as "Fecha de renta",
rental_rate as "Índice de renta",
special_features as "Escenas especiales",
rating as Calificación
FROM rental r
LEFT JOIN inventory i on r.inventory_id = i.inventory_id
LEFT JOIN film f on i.film_id = f.film_id
#WHERE rental_rate > 2
GROUP BY f.title
HAVING rental_rate > 2
# Duda: ¿qué diferencia hay entre usar WHERE y HAVING?
# Respuesta: HAVING va de la mano con GROUP BY. Se necesita
# para usar operaciones como SUM, COUNT, etc...
# Por otro lado, WHERE valida campo por campo.
# En este ejemplo no se nota la diferencia ya que ambos
# producen el mismo resultado.
