create table produto(
id_produto int primary key,
nome_produto varchar(30) not null,
descricao Text not null,
preco numeric check(preco>0)not null,
qtde_estoque smallint default 0
)

create table pedido(
id_pedido serial primary key,
fk_client int references client(id_client),
fk_produto int not null,
qtde smallint not null,
foreign key (fk_produto)references produto(id_produto)
)
create table cliente(
id_cliente int primary key,
sobre_nome_cliente varchar(20)not null,
Nome_cliente varchar(20)not null,
genero varchar(10)not null,
cpf varchar(20)not null
)


insert into cliente(id_cliente,sobre_nome_cliente,nome_cliente)
values(1,'monteiro','Jake'),
(2,'rose','hiro'),
(3,'fall','simon'),
(4,'monn','nill'),
(5,'hally','maik'),
(6,'wlllgrem','kymera'),
(7,'yourkin','naru'),
(8,'moll','tommy'),
(9,'wornney','harry'),
(10,'Donfort','Jake')


insert into produto(id_produto,nome_produto,descricao,preco,qtde_estoque)
values(1,'bola','bola colorida',15.00,13),
(2,'agua','agua sem gas 1l',5.00,52),
(3,'salgados','doces bolos',8.99,95)


select distinct cliente from 
alter cliente add genero varchar(20)
alter cliente add salario money
alter cliente add cpf varchar(20)




update cliente set genero = 'masculino'

update cliente set genero='femenino' where id_cliente=3

update cliente set salario= 9000

update cliente set cpf=295.524.857.44

update cliente set salario='femenino' where id_cliente=3

select*from cliente


select distinct nome_cliente from cliente

select nome_client,cpf from cliente

select nome_cliente,cpf from cliente where genero='femenino'



SELECT * FROM cliente ORDER BY nome_cliente ASC






	






