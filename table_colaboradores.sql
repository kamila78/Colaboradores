create database time_suporte;
use time_suporte;
create table colaboradores (
id int not null primary key,
nome varchar (255),
data_nasc date,
vencimento_ferias date,
funcao varchar (255),
nivel varchar (255),
contratado date);

insert into colaboradores (nome, funcao, nivel, squad) values 
( 'Kamila Alves', 'Supervisora', 'Senior', 'Full'),
('Bruno Tributino', 'Analista', 'Junior', 'Corporate'),
('Edmilson Santos', 'Estagiário', 'Estágio', 'Pro'),
('Italo Rocha', 'Analista', 'Junior', 'Farma'),
('João Victor', 'Analista', 'Pleno', 'Pro'),
('Joselita Albuquerque', 'Analista', 'Pleno', 'Pro'),
('Joyce Andrade', 'Analista', 'Pleno', 'Corporate'),
('Luiza Barbosa', 'Estagiária', 'Estágio', 'Corporate');

select * from colaboradores;
/*Para visualizar as datas de aniversario no formato brasileiro*/
select nome, date_format(data_nasc, '%d/%m/%y') as Aniversario from colaboradores; 
/*para excluir uma coluna dentro de uma tabela*/
alter table colaboradores drop column email;
select count(*) from colaboradores where squad = 'farma';
delete from colaboradores where nome is null
