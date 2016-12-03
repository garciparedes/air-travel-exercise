/*
Personas que visitaron más ciudades en un periodo (fini,ffin)
 */

SELECT
    p.nombre,
    COUNT(*) AS cuenta
FROM
    cliente p,
    embarque e,
    vuelo v,
    aeropuerto a
WHERE
    p.cid = e.cid AND
    e.cid = v.vid AND
    v.destino = a.apid AND
    '01-01-1990' <= e.fecha AND
    '01-01-2090' >= e.fecha
GROUP BY
    p.cid,
    p.nombre
ORDER BY cuenta DESC