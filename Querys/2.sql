SELECT P.Nome
FROM Produto P
LEFT JOIN Carga_Produto CP
    ON CP.ID_Produto = P.ID
LEFT JOIN Carga C
    ON C.ID = CP.ID_Carga
WHERE C.Entregue IS TRUE
