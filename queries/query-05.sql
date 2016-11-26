SELECT
    a1.ciudad as CiudadOrigen,
    a2.ciudad as CiudadDestino,
    cuenta
FROM (
         SELECT
             res1.origen,
             res1.destino,
             COUNT(*) AS cuenta
         FROM (
                  SELECT
                      v1.alid,
                      v1.origen,
                      v1.destino
                  FROM
                      vuelo v1,
                      vuelo v2
                  WHERE
                      v1.alid <> v2.alid AND
                      v1.origen = v2.origen AND
                      v1.destino = v2.destino
                  GROUP BY v1.alid, v1.origen, v1.destino
              ) AS res1
         GROUP BY res1.origen, res1.destino
     ) AS res2,
    aeropuerto a1,
    aeropuerto a2
WHERE
    a1.apid = res2.origen AND
    a2.apid = res2.destino

ORDER BY cuenta DESC