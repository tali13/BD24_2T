/*aula15*/
select * from cliente
select * from produto
select * from pedido


select nome_cliente,qtde
from cliente,pedido

select nome_produto,qtde
from produto,pedido



select nome_cliente,qtde
from cliente,pedido
where cliente.id_cliente=pedido.fk_client and qtde>2


select nome_produto,qtde,nome_cliente
from produto,pedido,cliente


select nome_cliente,count(cliente)from cliente group by nome_cliente
select sum(qtde) as pedido_soma from pedido

select * from produto
select * from pedido

select id_pedido, id_produto,qtde
from pedido
join produto
on pedido.fk_produto=produto.id_produto