create table categoria(
id_categoria serial primary key,
nome_categoria varchar(80) not null
)

alter table produto add id_categoria int references categoria(id_categoria)
  
insert into categoria(id_categoria,nome_categoria)
values(1,'salgados pequenos'),
(2,'salgados grandes'),
(3,'salgados medios'),
(4,'doces pequenos'),
(5,'doces grandes'),
(6,'doces medios'),
(7,'bolos grandes'),
(8,'bolos pequenos'),
(9,'bolos medios')



update produto set id_categoria =2 where  id_produto = 2


select nome_produto,nome_categoria
from produto
join categoria
on produto.id_categoria= categoria.id_categoria




select * from pedido

select nome_produto,nome_categoria
from produto
left join categoria
on produto.id_categoria= categoria.id_categoria

select nome_cliente,fk_produto
from cliente
right join pedido
on cliente.id_cliente=pedido.id_pedido

select nome_produto,nome_categoria /*nao pode colocar "on"*/
from produto
cross join categoria

select nome_produto,nome_categoria
from produto
full outer join categoria
on produto.id_categoria= categoria.id_categoria

select * from pedido
select * from cliente
select * from categoria
select * from produto
select * from 


