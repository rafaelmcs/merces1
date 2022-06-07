/*COLOCAR O BANCO EM USO*/
USE COMABEM;
/*CRIANDO UM NOVO PERFIL DE USUARIO*/

CREATE role NovoPerfil;

/*criando um novo usuario e adicionando ao perfil criado*/
create user rafael identified by "complicado" default role NovoPerfil;

/*definindo o usuario criada para apenas poder usar o comando select*/
grant select on comabem.* to rafael;

/*apos abrir o workbench com o novo usuario, fazer um teste select*/
select * from produtos;
/*agora tentar fazer a inserção de dados, vai apresentar erro, pois apenas definimos o select para esse usuario */
insert into produtos (ds_produtos, vl_produtos, qt_produtos, cd_unidade) values ("frango", 25.00, 2, 1);