create table cliente(
id_cliente serial primary key,
nome_cliente varchar(20),
salario money not null
)
insert into cliente(id_cliente,nome_cliente,salario)
values(1,'jake',100.000),
(2,'noha',10.000),
(3,'alastor',1.000)

create table historico_salario(
id_historico serial primary key,
fk_cliente int references cliente (id_cliente),
data_alterado date,
salario money
)

create or replace function atualizacao_salario() returns
trigger as $$begin
insert into historico_salario (id_cliente,data_alterado,salario)
values(new.id_cliente,now(),new.salario);
return null;end;$$LANGUAGE plpgsql;

create or replace trigger trigger_salario
after insert or update ON  cliente
for each row
execute function atualizacao_salario()


update cliente set salario=14.222 where id_cliente=1


select * from cliente

select * from historico_salario

select * from produto

create table produto(
id_produto int primary key,
preco numeric check(preco>0)not null
)

DROP TABLE produto;


create or replace function historico_produto() returns
trigger as $$begin
insert into historico_produto(id_produto,preco)
values(new.id_produto(),new.preco);
return null ; end;$$ language plpgsql;

create or replace trigger trigger_produto
after insert or update ON produto
for each row
execute function historico_produto()
