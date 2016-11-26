/*
5 compañías con el mayor número de vuelos
 */

SELECT
    a.nombre as Compañia,
    COUNT(*) as NumVuelos
FROM
    aerolinea a,
    vuelo v
WHERE
    a.alid = v.alid
GROUP BY a.nombre
ORDER BY NumVuelos DESC
LIMIT 5
