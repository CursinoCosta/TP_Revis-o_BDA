WITH VeicPend AS (
    SELECT R.ID_Veiculo
    FROM Carga C
    JOIN Rota R ON C.ID_Rota = R.ID
    WHERE C.Entregue = 0
),
VeicEntregue AS (
    SELECT R.ID_Veiculo
    FROM Carga C
    JOIN Rota R ON C.ID_Rota = R.ID
    WHERE C.Entregue = 1
)
SELECT DISTINCT ID_Veiculo
FROM VeicPend
WHERE ID_Veiculo NOT IN (SELECT ID_Veiculo FROM VeicEntregue);
