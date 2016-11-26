/*
Compañía con el máximo número de viajeros
*/
SELECT
    a.nombre,
    COUNT(*) as cuenta
FROM
    aerolinea a,
    embarque e,
    vuelo v
WHERE
    e.vid = v.vid AND
    v.alid = a.alid
GROUP BY a.nombre
ORDER BY cuenta DESC
LIMIT 1