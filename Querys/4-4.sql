SELECT CA.ID
FROM Carga AS CA
WHERE CA.ID_Pedido IN 
        (
        SELECT P.ID
        FROM Pedido AS P
        WHERE P.ID_Cliente IN 
            (
            SELECT ID_Cliente
            FROM PEDIDO
            GROUP BY ID_Cliente
            HAVING COUNT(ID) = 1
            )
    );
