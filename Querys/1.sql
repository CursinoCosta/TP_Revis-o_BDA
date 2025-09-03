SELECT Cl.Nome
FROM Cliente Cl
LEFT JOIN (
    SELECT *
    FROM Carga C
    LEFT JOIN Pedido P
    ON C.ID_Pedido = P.ID
    WHERE P.Status = 'A caminho'
) Pe 
ON Cl.ID = Pe.ID_Cliente
