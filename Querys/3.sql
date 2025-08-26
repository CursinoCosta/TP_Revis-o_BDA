WITH tab1 AS (
    SELECT *
    FROM Carga C
    LEFT JOIN Rota R ON C.ID_Rota = R.ID
    LEFT JOIN Veiculo V ON R.ID_Veiculo = V.ID
)

SELECT A.Descricao
FROM tab1 A
LEFT JOIN tab1 B ON A.ID_Motorista =  B.ID_Motorista
