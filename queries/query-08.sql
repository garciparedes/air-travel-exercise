/*
Compañía con el máximo número de viajeros
*/
WITH NViajeros AS (
    SELECT
        a.nombre,
        COUNT(*) AS cuenta
    FROM
        aerolinea a,
        embarque e,
        vuelo v
    WHERE
        e.vid = v.vid AND
        v.alid = a.alid
    GROUP BY a.nombre
)
SELECT *
FROM NViajeros NV
WHERE 1 > (
    SELECT COUNT(*)
    FROM NViajeros NV2
    WHERE NV2.cuenta > NV.cuenta
);
