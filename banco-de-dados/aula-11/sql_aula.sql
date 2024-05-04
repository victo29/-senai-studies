create database if not exists aula;
use aula;
CREATE TABLE ALUNO (
    sexo char(1),
    idade int,
    data_inscricao_curso date,
    telefone varchar(20),
    valor_pago_curso float(10,2),
    ativo_sn int,
    endereco text,
    nome varchar(25)
);

insert into aluno(
    sexo, idade, data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome
)values(
    'M', 55, '2018-12-01', '11 5555-2222', 645.22,
    1, 'Avenida Paulista, 1500, ap315 - São Paulo - SP', 'João'
);

insert into aluno(
    data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome,
    sexo, idade
)values(
    '2018-11-01', '11 3333-2222', 589.12,
    1, 'Rua Francisco Sá, 10 - Belo Horizonte - MG', 'Fernanda',
    'F', 30
);


insert into aluno(
    data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome,
    sexo, idade
)values(
    '2018-12-02', '11 3333-7777', 600.55,
    0, 'Avenida Dom Manuel, 300 - Fortaleza - CE', 'José',
    'M', 29
);


insert into aluno(
    data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome,
    sexo, idade
)values(
    '2018-12-02', '11 7777-7777', 655.45,
    1, 'Rua Miramar, 1200, ap112 - Natal - RN', 'Maria',
    'F', 42
);


insert into aluno(
    data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome,
    sexo, idade
)values(
    '2018-11-15', '11 1111-7777', 612.99,
    1, 'Rua João de Abreu, 650 - Goiânia - GO', 'Marcelo',
    'M', 37
);

insert into aluno(
    data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome,
    sexo, idade
)values(
    '2018-11-15', '71 98888-8888', 612.99,
    1, 'Avenida santos dumond, 1500 - Bahia - BA', 'João',
    'M', 55
);

insert into aluno(
    data_inscricao_curso, telefone, valor_pago_curso,
    ativo_sn, endereco, nome,
    sexo, idade
)values(
    '2018-11-15', '71 99999-9999', 589.12,
    1, 'Rua Antonio brito, 20 - Bahia - BA', 'Fernanda',
    'F', 30
);


/*Realizar contagem*/
select * from aluno;
select count(*) from aluno;
select count(*) from aluno where sexo = "F";
select count(distinct nome) from aluno;

/*Realizar clcula de médias*/
select round( avg(valor_pago_curso) ,2) from aluno;
select avg(valor_pago_curso) from aluno where nome = 'José';

/*Saber o valor máximo*/
select max(valor_pago_curso) from aluno;
select max(valor_pago_curso) from aluno where idade > 40;
select max(valor_pago_curso) from aluno where idade < 40;

/*Saber o valor mínimo*/
select min(valor_pago_curso) from aluno;
select min(valor_pago_curso) from aluno where ativo_sn != 0;

/*Soma*/
select sum(valor_pago_curso) from aluno;
select sum(valor_pago_curso) from aluno where nome = 'José';


/*Apelidando colunas*/
select  max(valor_pago_curso) as máximo,  min(valor_pago_curso) as mínimo, sum(valor_pago_curso) as soma, avg(valor_pago_curso) as média from aluno where ativo_sn = 1;
select valor_pago_curso as valor_pago, nome from aluno;
