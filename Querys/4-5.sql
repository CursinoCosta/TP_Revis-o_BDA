SELECT
    P.*
FROM
    Pedido AS P
JOIN (
    SELECT
        ID_Pedido
    FROM
        Carga
    GROUP BY
        ID_Pedido
    HAVING
        COUNT(ID) > 1
) AS CargasMultiplas ON P.Codigo = CargasMultiplas.ID_Pedido;
