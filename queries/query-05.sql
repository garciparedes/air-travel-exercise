SELECT *,
    count(*)
FROM
    vuelo v1,
    vuelo v2
WHERE
    v1.origen = v2.origen AND
    v1.destino = v2.destino