CREATE VIEW Entregas_Atrasadas AS
SELECT C.ID, M.Nome, P.Data, C.Descricao, C.Origem, C.Destino, V.Placa
FROM Carga C
LEFT JOIN Pedido P ON P.ID = C.ID_Pedido
LEFT JOIN Rota R ON R.ID = C.ID_Rota
LEFT JOIN Veiculo V ON V.Chassi = R.ID_Veiculo
LEFT JOIN Motorista M ON M.CPF = V.CPF_Motorista
WHERE P.Data < datetime('now') AND C.Entregue = 0;
