/* Tabela Instrumento */
CREATE table instrumento (
	id_instrumento serial PRIMARY KEY,
  	nome VARCHAR(24) not NULL,
  	preco float not NULL,
  	em_promocao BOOLEAN
);

insert into instrumento (nome, preco, em_promocao) values ('Violão', 300.99, FALSE);

select id_instrumento, nome from instrumento where preco > 300;
SELECT em_promocao, id_instrumento, preco from instrumento;

SELECT * from instrumento where em_promocao = FALSE;

select * from instrumento;

/* Tabela Vendedor */
create table vendedor (
  	id_vendedor serial primary KEY,
  	nome VARCHAR(24) not NULL,
  	cpf VARCHAR(15) not null,
  	telefone FLOAT not null,
  	email VARCHAR(100) not null,
	endereco VARCHAR(255) not null
);

insert into vendedor (nome, cpf, telefone, email, endereco) 
values ('Catarina', 454225487-84, 11.948487878, 'catarina@email.com', 
        'Rua das pitangas - São Paulo');

insert into vendedor (nome, cpf, telefone, email, endereco) 
values ('Romario', 260195387-08, 11.984847000, 'romario@email.com', 
        'Rua das uvas - Fortaleza');
        
select cpf, nome from vendedor where telefone > 11.960000000;
SELECT email, cpf, endereco from vendedor;
/* SELECT * from vendedor where nome = FALSE; */

select * from vendedor;



create table produto (
  	id_produto serial primary KEY,
  	nome VARCHAR(24) not NULL,
	descricao VARCHAR(255),
  	quantidade INT not null
);

insert into produto (nome, descricao, quantidade) 
values ('bombom', 'chocolate', 10);

select descricao, nome from produto where quantidade > 7;
SELECT nome, quantidade from produto;
/* SELECT * from vendedor where nome = FALSE; */

select * from produto;



create table fornecedor (
  	id_fornecedor serial primary KEY,
  	nome VARCHAR(24) not NULL,
  	cnpj VARCHAR(20) not null,
  	telefone float not null,
  	email VARCHAR(100) not null,
	endereco VARCHAR(255) not null
);

insert into fornecedor (nome, cnpj, telefone, email, endereco) 
values ('Loja ABC', '12345678/0002-00', 77.983213295, 'lojaabc@email.com', 
        'Avenida castanheira - Salvador');
       
insert into fornecedor (nome, cnpj, telefone, email, endereco) 
values ('Loja Siqueira', '56481530/0583-90', 11.983213295, 'lojaSiqueira@email.com', 
        'Avenida luzita - Joinville');

select cnpj, nome from fornecedor where telefone > 77.960000000;
SELECT email, cnpj, endereco from fornecedor;
/* SELECT * from vendedor where nome = FALSE; */

select * from fornecedor;