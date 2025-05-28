#CRIAR O BANCO DE DADOS
create database empresatit;

#SELECIONA O BANCO DE DADOS
use empresatit;

#CRIAR A TABELA DE CATEGORIA
create table categoria(
	id int primary key,
    descricao varchar(15)
);

#CRIAR A TABELA DE UNIDADE DE MEDIDA
create table unidmedida(
	id int primary key,
    descricao varchar(15)
);

#CRIAR A TABELA DE PRODUTO
create table produto(
	codigo int primary key,
    id_unidmedida int,
    id_categoria int,
	descricao varchar(30),
    est_maximo int,
    ext_minimo int,
    tp_montadora int,
    tp_reposicao int,
    tp_exportacao int,
    foreign key (id_unidmedida) references unidmedida(id),
    foreign key (id_categoria) references categoria(id)
);

#INSERIR OS DADOS NAS TABELAS
#TABELA CATEGORIA
insert into categoria (id, descricao)
values (1, 'Usinado'),
       (2, 'Forjado'),
	   (3, 'Fundido');
       
select * from categoria;

#TABELA UNIDADE DE MEDIDA
insert into unidmedida (id, descricao)
values (1, 'Pç'),
       (2, 'Kg'),
       (3, 'Cj'),
       (4, 'Lt');

select * from unidmedida;

#TABELA DE PRODUTO
insert into produto (codigo, id_unidmedida, id_categoria, descricao,
                     est_maximo, ext_minimo, tp_montadora,
                     tp_reposicao, tp_exportacao)
values (2002, 1, 1, 'Balde de aço', 100, 1, 1, 1, 0);

insert into produto (codigo, id_unidmedida, id_categoria, descricao,
                     est_maximo, ext_minimo, tp_montadora,
                     tp_reposicao, tp_exportacao)
values (2003, 2, 3, 'Balde de aço', 100, 1, 1, 1, 0);


select * from produto;

