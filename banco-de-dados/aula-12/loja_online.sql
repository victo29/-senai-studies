CREATE DATABASE loja_online;
USE loja_online;

CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    endereco VARCHAR(255),
    cidade VARCHAR(100),
    estado VARCHAR(50),
    cep VARCHAR(15)
);


CREATE TABLE categorias (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    descricao TEXT,
    preco DECIMAL(10, 2),
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    data_pedido DATE,
    status_pedido VARCHAR(50),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

CREATE TABLE detalhes_pedido (
    id_detalhe INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    preco_unitario DECIMAL(10, 2),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

CREATE TABLE estoque (
    id_produto INT PRIMARY KEY,
    quantidade INT,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);



ALTER TABLE clientes ADD telefone VARCHAR(11);
ALTER TABLE produtos MODIFY COLUMN preco FLOAT;
ALTER TABLE produtos CHANGE COLUMN descricao descricao_produto TEXT;
ALTER TABLE clientes DROP COLUMN endereco;

INSERT INTO clientes(nome, email, cidade, estado, cep, telefone) VALUES ("Iasmin", "iasminreis2006@gmail.com", "Salvador", "Bahia", "40450211","71988474732");
INSERT INTO clientes(nome, email, cidade, estado, cep, telefone) VALUES ("Victor", "victortavares2019@gmail.com", "Fortaleza", "Ceará", "40450230", "71987220267");
INSERT INTO clientes(nome, email, cidade, estado, cep, telefone) VALUES ("Shirley", "shirleycaldeira84@gmail.com", "Recife", "Pernambuco", "40450356", "71988363423");
INSERT INTO clientes(nome, email, cidade, estado, cep, telefone) VALUES ("Nelsimara", "nelsinharibeirense@gmail.com", "Teresina", "Piauí", "40450214", "75987222343");

INSERT INTO categorias(nome) VALUES ("Beleza");
INSERT INTO categorias(nome) VALUES ("Brinquedos");
INSERT INTO categorias(nome) VALUES ("Banho");
INSERT INTO categorias(nome) VALUES ("Decoração");

INSERT INTO produtos(nome, descricao_produto, preco, id_categoria) VALUES ("Liberté Nuit", "Sua experiência sensorial elegante começa com o doce suave da amêndoa, que se encontra com um abraço frutado. No coração, uma paixão proibida desabrocha com notas de violeta, rosa damascena, ameixa seca e magnólia. Nas profundezas da noite, um mistério encantador se revela, transbordando sensualidade e paixão com notas amadeiradas e o doce da baunilha", 
204.45, 1);

INSERT INTO produtos(nome, descricao_produto, preco, id_categoria) VALUES ("Carrinho de bombeiro", "Chegou o Caminhão De Bombeiro Fire truck para a diversão da criançada. om sua super sirene que emite sons, luzes, e com escada MÓVEL. O caminhão Bombeiro Policia Bate e Volta hegou o Caminhão Fire Truck Bombeiro para a diversão da criançada.",
23.80, 2);

INSERT INTO produtos(nome, descricao_produto, preco, id_categoria) VALUES ("Barbie", "A Barbie está sempre na moda. De silhuetas das tendências com as estampas mais recentes aos mais fabulosos sapatos, o estilo especial da boneca Barbie se destaca em qualquer hora e qualquer lugar! Essas bonecas usam os vestidos da moda com cores e estampas legais. Perfeita para o dia ou para a noite, a boneca Barbie está pronta para qualquer história que você possa imaginar. Inclui uma boneca Barbie usando roupas e calçados da moda. Cada uma é vendida separadamente, sujeita a disponibilidade. As bonecas não ficam em pé sozinhas. Atenção Sortimento: As cores e modelos podem variar sem opção de escolh",
49.50,2);

INSERT INTO produtos(nome, descricao_produto, preco, id_categoria) VALUES ("Quadro Estrelas", " mapa das estrelas é um quadro decorativo personalizado com a imagem do céu no exato instante e local que você escolher.",
54.70,4);

INSERT INTO pedidos (id_cliente ,data_pedido,status_pedido) VALUES(1,"2024-05-07","PAGO");
INSERT INTO pedidos (id_cliente ,data_pedido,status_pedido) VALUES(2,"2024-05-06","PENDENTE");
INSERT INTO pedidos (id_cliente ,data_pedido,status_pedido) VALUES(3, "2024-05-08", "PAGO");
INSERT INTO pedidos (id_cliente ,data_pedido,status_pedido)  VALUES(4,"2024-05-07","ENCERRADO");


INSERT INTO  detalhes_pedido(id_pedido ,id_produto ,quantidade ,preco_unitario ) VALUES(1,3,5, 20.50);       
INSERT INTO  detalhes_pedido(id_pedido ,id_produto ,quantidade ,preco_unitario ) VALUES(2,2,1, 10.90);
INSERT INTO  detalhes_pedido(id_pedido ,id_produto ,quantidade ,preco_unitario ) VALUES(3,1,2,7.50);
INSERT INTO  detalhes_pedido(id_pedido ,id_produto ,quantidade ,preco_unitario ) VALUES(4,4,3,9.90);  

INSERT INTO estoque(  id_produto ,  quantidade ) VALUES(1,100);
INSERT INTO estoque(  id_produto ,  quantidade ) VALUES(2,300);
INSERT INTO estoque(  id_produto ,  quantidade ) VALUES(3,250);
INSERT INTO estoque(  id_produto ,  quantidade ) VALUES(4,120);


SELECT*FROM clientes;
SELECT*FROM produtos;
SELECT*FROM categorias;
SELECT*FROM PEDIDOS;
SELECT*FROM detalhes_pedido;
SELECT*FROM estoque;

SELECT MIN(preco) FROM produtos;
SELECT MAX(preco) FROM produtos;
SELECT*FROM pedidos WHERE data_pedido between  "2024-05-06" AND"2024-05-07";
SELECT ROUND(AVG(preco), 2) FROM produtos;
