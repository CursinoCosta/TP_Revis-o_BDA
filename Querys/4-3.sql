SELECT CP.ID_produto 
FROM Cliente AS C
    JOIN Pedido AS P ON C.ID = P.ID_cliente 
    JOIN Carga AS CA ON P.ID = CA.ID_pedido 
    JOIN Carga_Produto AS CP ON CA.ID = CP.ID_Carga 
WHERE C.Nome IN ('DCC', 'ICB')
GROUP BY CP.id_produto 
HAVING COUNT(DISTINCT C.Nome) = 2;
