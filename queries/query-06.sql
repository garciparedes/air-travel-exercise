/*
Encontrar todos los vuelos (vuelo-día) vacíos
 */

SELECT v.vid
FROM
    vuelo v
WHERE NOT EXISTS(
    SELECT *
    FROM
        embarque e
    WHERE
        e.vid = v.vid AND
        e.fecha = '2016-12-11'
);
