SELECT
    CA.id_carga
FROM
    Carga AS CA
WHERE
    CA.id_pedido IN (
        SELECT
            P.id
        FROM
            PEDIDO AS P
        WHERE
            P.id_cli IN (
                SELECT
                    id_cli
                FROM
                    PEDIDO
                GROUP BY
                    id_cli
                HAVING
                    COUNT(id) = 1
            )
    );
