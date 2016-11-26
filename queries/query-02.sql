SELECT
    a.nombre as Compañia,
    COUNT(*) as NumVuelos
FROM
    aerolinea a,
    vuelo v
WHERE
    a.nombre = 'Aeropostal' AND
    a.alid = v.alid
GROUP BY a.nombre
