
CREATE TABLE Usuario(
ID_usuario INT,
Nome_usuario VARCHAR(50),
Senha VARCHAR(20),
Email VARCHAR(35),
Dados_registro VARCHAR(50)
);

CREATE TABLE Produtos(
ID_produto INT,
Nome_produto VARCHAR(30),
Descricao VARCHAR(100),
Preco FLOAT,
Categoria VARCHAR(25),
QTD_estoque INT
);

CREATE TABLE Eventos(
ID_evento INT,
Titulo VARCHAR(100),
Descricao VARCHAR(100),
Data_Hora_evento_inicio VARCHAR(50),
Data_Hora_evento_termino VARCHAR(50),
Local_evento VARCHAR(100)
);

CREATE TABLE Tarefas(
ID_tarefa INT,
Descricao VARCHAR(50),
Data_criacao VARCHAR(50),
Prazo VARCHAR(50),
Status_tarefa bool
);


insert into Usuario values(1,"Victor","ceb@la","MataPorco@gmail.com","OK");
insert into Usuario values(2,"Antonio","@lface","MataGalinha@gmail.com","OK");


insert into Produtos values(1,"Gilete","Afiada",2.50,"Afiados",15);
insert into Produtos values(2,"Camisa","Roupa",17.50,"Camisas",25);

insert into Eventos values(1,"Evento do Batman","Evento onde o batman irá", "2024/01/29 11:28:21", "2024/01/29 23:28:21", "Valéria");

insert into Tarefas values(1,"Fazer Cachorro quente","2024/01/29","8 dias",false);
insert into Tarefas values(2,"Lavar carro","2024/02/10","9 dias",true);

select Nome_usuario,Email from Usuario;
select Nome_usuario,Email from Usuario where ID_usuario=1;

SET SQL_SAFE_UPDATES = 0;

update Usuario set Nome_usuario = 'Vitorino' where ID_usuario  = 1;

delete from Usuario where ID_usuario  = 1;