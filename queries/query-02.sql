/*
Número de vuelos de la compañía ‘RyanAir’
 */

SELECT
    a.nombre as Compañia,
    COUNT(*) as NumVuelos
FROM
    aerolinea a,
    vuelo v
WHERE
    a.nombre = 'RyanAir' AND
    a.alid = v.alid
GROUP BY a.nombre
