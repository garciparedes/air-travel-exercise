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
WHERE NV.nru >= ALL (
    SELECT NV2.nru
    FROM NVuelos NV2
) AND a.alid = NV.alid
ORDER BY NV.nru DESC;

