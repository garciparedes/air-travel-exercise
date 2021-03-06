/*
Personas (cid,nombre) que no tienen tarjeta de Iberia, pero es en la que más
han viajado
 */

WITH ClienteAerolinea AS (
    SELECT
        C.cid,
        a.alid,
        COUNT(*) AS cuenta
    FROM
        cliente C,
        embarque e,
        vuelo v,
        aerolinea a
    WHERE
        C.cid = e.cid AND
        e.vid = v.vid AND
        v.alid = a.alid
    GROUP BY
        a.alid,
        C.cid
)
SELECT
    c.cid,
    c.nombre,
    max(m1.cuenta)
FROM
    ClienteAerolinea m1,
    cliente c,
    aerolinea a
WHERE a.nombre = 'Iberia' AND
      c.tarjalid <> a.alid AND
      a.alid = m1.alid AND
      c.cid = m1.cid
GROUP BY c.cid, c.nombre;