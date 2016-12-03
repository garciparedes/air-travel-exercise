/*
Todos los vuelos realizados por ‘García’
 */

SELECT
    a1.ciudad AS Origen,
    a2.ciudad AS Destino,
    a.nombre  AS Compañia,
    e.fecha   AS Fecha,
    v.horas   AS Salida,
    v.horall  AS Destino
FROM
    embarque e,
    cliente c,
    vuelo v,
    aerolinea a,
    aeropuerto a1,
    aeropuerto a2
WHERE
    e.cid = c.cid AND
    c.nombre = 'García' AND
    e.vid = v.vid AND
    v.alid = a.alid AND
    v.origen = a1.apid AND
    v.destino = a2.apid;