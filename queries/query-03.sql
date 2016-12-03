/*
Compañía (alid) con el máximo número de vuelos
 */
WITH NVuelos AS (
    SELECT
    v.alid,
    COUNT (*) AS nru
    FROM vuelo v
    GROUP BY v.alid
)
SELECT
    a.nombre,
    NV.nru
FROM NVuelos NV,
    aerolinea a
WHERE 1 > (
    SELECT COUNT(*)
    FROM NVuelos NV2
    WHERE NV2.nru > NV.nru
) AND a.alid = NV.alid
ORDER BY NV.nru DESC;

