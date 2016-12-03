/*
Pares origen-destino (apids) con al menos 2 vuelos, ordenado por numero de
vuelos
 */


SELECT
    v.origen,
    v.destino,
    COUNT(*)
FROM
    vuelo v
GROUP BY
    v.origen,
    v.destino
HAVING
    COUNT(*) > 1
ORDER BY COUNT(*) DESC