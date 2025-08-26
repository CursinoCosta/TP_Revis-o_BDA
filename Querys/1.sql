SELECT Cl.Nome
FROM Cliente Cl
LEFT JOIN (
    SELECT *
    FROM Carga C
    LEFT JOIN Produto P
    ON C.ID_Pedido = P.ID
    WHERE P.Status = “a caminho”
) Pe 
ON Cl.ID = Pe.ID_Cliente