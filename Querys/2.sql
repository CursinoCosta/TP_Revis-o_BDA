SELECT Cl.Nome
FROM Carga C
LEFT JOIN Carga-Produto CP
ON C.ID_Pedido = P.ID
WHERE P.Entregue IS TRUE
