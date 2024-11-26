create table produto(
id_produto int primary key,
nome_produto varchar(30) not null,
descricao Text not null,
preco numeric check(preco>0)not null,
qtde_estoque smallint default 0
);
select from produto

create table pedido(
id_pedido serial primary key,
fk_client int references client(id_client),
fk_produto int not null,
qtde smallint not null,
foreign key (fk_produto)references produto(id_produto)
)
create table client(
id_client int primary key,
sobre_nome_Client varchar(20)not null,
Nome_client varchar(20)not null
)
