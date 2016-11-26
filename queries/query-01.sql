SELECT
    a1.ciudad as Origen,
    a2.ciudad as Destino,
    a.nombre as Compañia,
    e.fecha as Fecha,
    v.horas as Salida,
    v.horall as Destino
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