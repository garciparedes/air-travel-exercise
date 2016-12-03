/*
Personas (cid,nombre) que han viajado en su cumpleaños
Pista: utilizar extract(<day|month|year> from c.fdn)
 */

SELECT
    c.nombre,
    c.cid
FROM
    cliente c,
    embarque e
WHERE
    EXTRACT(DAY FROM c.fdn) = EXTRACT(DAY FROM e.fecha) AND
    EXTRACT(MONTH FROM c.fdn) = EXTRACT(MONTH FROM e.fecha)

