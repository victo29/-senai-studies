create database aula;
use aula;

CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100)
);

INSERT INTO clientes (id, nome, email)
VALUES
    (101, 'Ana', 'ana@gmail.com'),
    (102, 'Carlos', 'carlos@hotmail.com'),
    (103, 'Marta', 'marta@yahoo.com');


CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    categoria VARCHAR(100),
    preco DECIMAL(10, 2),
    promocao boolean
);


INSERT INTO produtos (id, nome, categoria, preco, promocao)
VALUES
    (1, 'Celular', 'Eletrônicos', 500.00, false),
    (2, 'Camiseta', 'Roupas', 25.00, true),
    (3, 'Arroz', 'Alimentos', 7.00, false);
	
INSERT INTO produtos (id, nome, categoria, preco, promocao)
VALUES (4, 'Leite', 'Alimentos', 8.00, true);


CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    cliente_id INT,
    produto_id INT,
    quantidade INT,
    data_pedido DATE,
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO pedidos (id, cliente_id, produto_id, quantidade, data_pedido, valor_total)
VALUES
    (1, 101, 1, 2, '2024-01-15', 100.00),
    (2, 102, 2, 1, '2024-02-20', 75.00),
    (3, 103, 3, 3, '2024-03-25', 210.00);
    
    CREATE TABLE funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    departamento VARCHAR(100),
    salario DECIMAL(10, 2)
);

INSERT INTO funcionarios (id, nome, departamento, salario)
VALUES
    (201, 'João', 'Vendas', 3500.00),
    (202, 'Maria', 'Marketing', 2800.00),
    (203, 'Pedro', 'Vendas', 4000.00);
    
/*AND*/    
select * from funcionarios where departamento = 'Marketing' and salario > 3000;

/*OR*/
select * from produtos where categoria = "Eletrônicos" or promocao = false;
select * from produtos where categoria = "Eletrônicos" or promocao = true;

/*BETWEEN*/
select * from pedidos where data_pedido between "2024-01-01" and "2024-03-31";
select * from pedidos where data_pedido between "2024-01-01" and "2024-02-31";

/*IN*/
select * from produtos where categoria in ('Eletrônicos', 'Roupas');

/*NOT*/
select * from funcionarios where departamento != "Vendas";