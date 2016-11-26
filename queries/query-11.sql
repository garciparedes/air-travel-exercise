/*
Lista ordenada de aeropuertos y su rango; rango no total de vuelos con origen
en el aeropuerto; si dos empatan deben tener el mismo rango, y el
siguiente número no aparecer
 */

SELECT
    a.ciudad,
    COUNT(*) as cuenta
FROM
    aeropuerto a,
    vuelo v
WHERE
    a.apid = v.origen
GROUP BY a.ciudad
ORDER BY cuenta DESC