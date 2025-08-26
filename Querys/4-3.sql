SELECT CP.id_produto 
FROM Cliente AS C
OIN Pedido AS P ON C.id = P.id_cliente 
JOIN Carga AS CA ON P.id = CA.id_pedido 
JOIN Carga_Produto AS CP ON CA.id_carga = CP.id_carga 
WHERE C.Nome IN ('DCC', 'ICB') GROUP BY CP.id_produto 
HAVING COUNT(DISTINCT C.Nome) = 2;
