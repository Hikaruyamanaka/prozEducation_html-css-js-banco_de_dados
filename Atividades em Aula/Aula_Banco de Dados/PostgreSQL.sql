create table cliente (
    id serial PRIMARY key,
     nome VARCHAR(20) not null,
    sobrenome varchar(30) not null,
     idade int, 
     pais varchar(20)
);

 insert into cliente (nome, sobrenome, idade, pais) VALUES
     ('Joao', 'Alves', 48, 'BR'),
     ('Roberto', 'Dinamite', 36, 'BR'),
     ('Marta', 'Silva', 40, 'ARG'),
     ('For', 'Miga', 30, 'EUA'),
     ('Ed', 'Gaga', 20, 'UK'),
     ('Raissa', 'Fadinha', 25, 'EUR');

 insert into cliente (nome, sobrenome, idade, pais) VALUES
     ('Ed', 'Gaga', 20, 'UK');

 
create table pedido (
  id serial primary key,
  item varchar(48) not null,
  quantidade int not null,
  fk_id_cliente int not null,
  CONSTRAINT fk_cliente FOREIGN key (fk_id_cliente) 
  references cliente(ID)
  );

  insert into pedido (item, quantidade, fk_id_cliente) VALUES
  ('teclado', 1, 4),
  ('mouse', 2, 4),
  ('monitor', 8, 3),
  ('teclado', 1, 1),
  ('mousepad', 4, 2);

  -- Consulta 01 Inner Join
  select * from pedido
      inner join cliente
    on pedido.fk_id_cliente = cliente.id

-- Consulta 2 Right Join // conferir cliente que não fez pedido
    SELECT * from pedido
    RIGHT join cliente
    on pedido.fk_id_cliente = cliente.id

-- Consulta 03 Right Join // Apenas conferur cliente que não fez pedido
    SELECT * from pedido
    Right join cliente
    on pedido.fk_id_cliente = cliente.id
    where pedido.id is NULL

  -- Consulta 04 // Os nomes iguais
    select pedido.id AS pedido_id, cliente.id as cliente_id
        from pedido
        join cliente
        on pedido.fk_id_cliente = cliente.id

    SELECT * from cliente;
    SELECT * from pedido;