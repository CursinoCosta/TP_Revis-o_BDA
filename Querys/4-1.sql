WITH A AS (
    SELECT C.Nome, CP.id_produto
    FROM Cliente C
    JOIN Pedido P ON C.ID = P.ID_Cliente
    JOIN Carga Ca ON Ca.ID_Pedido = P.ID
    JOIN Carga_Produto CP ON CP.ID_Carga = Ca.ID
)

SELECT Nome, COUNT(DISTINCT ID_Produto)
FROM A
GROUP BY Nome
HAVING COUNT(DISTINCT ID_Produto) = (
    SELECT COUNT(DISTINCT id_produto) FROM Carga_Produto
);
