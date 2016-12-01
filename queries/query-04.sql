/*
5 compañías con el mayor número de vuelos
 */
WITH NVuelos AS (
    SELECT
        v.alid,
        COUNT(*) as nru
    FROM vuelo v
    GROUP BY v.alid
)
SELECT a.nombre,
        NV.nru
FROM NVuelos NV,
    aerolinea a
WHERE 5 > (
    SELECT COUNT(*)
    FROM NVuelos NV2
    WHERE NV2.nru > NV.nru
) AND a.alid = NV.alid
ORDER BY NV.nru DESC ;

