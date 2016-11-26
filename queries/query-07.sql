/*
Personas (cid,nombre) que han viajado en su cumpleaños
Pista: utilizar extract(<day|month|year> from c.fdn)
 */

SELECT c.nombre, c.cid
FROM
    cliente c,
    embarque e
WHERE
    EXTRACT(DAY from c.fdn) = EXTRACT(DAY from e.fecha) AND
    EXTRACT(MONTH from c.fdn) = EXTRACT(MONTH from e.fecha)

