insert into client(id_client,nome_client,sobre_nome_client)
values(1,'jake','monteiro'),
(2,'noha','jilss'),
(3,'alastor','birt')






select * from produto;
insert into produto(id_produto,nome_produto,descricao,preco,qtde_estoque)
values(1,'bola','bola colorida',15.00,13),
(2,'agua','agua sem gas 1l',5.00,52);






select * from pedido;
insert into pedido(fk_client,fk_produto,qtde)
values(1,2,3),
(1,1,1),
(2,2,1)














