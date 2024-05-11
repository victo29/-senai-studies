CREATE DATABASE vendas;
USE vendas;
CREATE TABLE Vendas (
  idVendas INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  produto VARCHAR(60)  NULL  ,
  quantidade INTEGER UNSIGNED  NULL  ,
  preco_unitario FLOAT  NULL  ,
  data_venda DATE  NULL    ,
PRIMARY KEY(idVendas));

INSERT INTO Vendas(produto, quantidade, preco_unitario, data_venda) VALUES ("Máscara Kérastase", 10, 50.50, "2024-05-18");
INSERT INTO Vendas(produto, quantidade, preco_unitario, data_venda) VALUES ("Óleo Capilar", 5, 15.00, "2023-01-05"); 
INSERT INTO Vendas(produto, quantidade, preco_unitario, data_venda) VALUES ("Paco Rabanne", 15, 80.25, "2024-05-06");
INSERT INTO Vendas(produto, quantidade, preco_unitario, data_venda) VALUES ("Escova de banhO", 10, 12, "2024-04-20");
SELECT*FROM Vendas;

ALTER TABLE Vendas ADD total_venda float;

UPDATE Vendas SET total_venda = quantidade * preco_unitario;
SELECT SUM(total_venda) as total_de_vendas FROM Vendas;
SELECT ROUND(AVG(preco_unitario), 2) as media_preco FROM Vendas;