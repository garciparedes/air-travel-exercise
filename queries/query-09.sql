/*
Personas (cid,nombre) que no tienen tarjeta de Iberia, pero es en la que más
han viajado
 */
SELECT
    c.cid,
    c.nombre
FROM
    cliente c,
    aerolinea a
WHERE
    a.nombre = 'Iberia' AND
    c.tarjalid <> a.alid;


WITH ClienteAerolinea AS (
    SELECT
        c.cid    AS cliente,
        a.alid   AS aerolinea,
        count(*) AS cuenta
    FROM
        cliente c,
        embarque e,
        vuelo v,
        aerolinea a
    WHERE
        c.cid = e.cid AND
        e.vid = v.vid AND
        v.alid = a.alid
    GROUP BY a.alid, c.cid
)
SELECT
    c.nombre,
    a.nombre,
    m1.cuenta
FROM
    ClienteAerolinea m1,
    (
        SELECT
            m2.cliente,
            max(cuenta) AS cuenta2
        FROM
            ClienteAerolinea m2
        GROUP BY m2.cliente
    ) AS maxViajes,
    cliente c,
    aerolinea a
WHERE
    a.nombre = 'Iberia' AND
    c.tarjalid <> a.alid AND
    a.alid = m1.aerolinea AND
    c.cid = m1.cliente AND
    m1.cliente = maxViajes.cliente AND
    m1.cuenta = maxViajes.cuenta2;


WITH MaxComp AS (
    SELECT
        c.nombre,
        a.nombre AS aerolinea,
        count(*) AS cuenta
    FROM
        cliente c,
        embarque e,
        vuelo v,
        aerolinea a
    WHERE
        c.cid = e.cid AND
        e.vid = v.vid AND
        v.alid = a.alid
    GROUP BY a.nombre, c.nombre
)
SELECT *
FROM
    MaxComp m
ORDER BY m.nombre

