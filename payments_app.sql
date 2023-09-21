create database payments_app
use payments_app

create table usuarios(
  Id INT AUTO_INCREMENT PRIMARY KEY,
  Nome VARCHAR(255),
  Imagem BLOB,
  Nome_de_usuario VARCHAR(50),
  Data_de_cadastro DATE
) 

create table cartao(
  Id INT AUTO_INCREMENT PRIMARY KEY,
  Numero VARCHAR(16),
  Cvv VARCHAR(3),
  Data_de_expiracao DATE,
  Valido BOOLEAN,
  Data_de_cadastro DATETIME
)

create table transacao(
  Id int auto_increment primary key,
  Id_usuario int,
  Id_cartao int, 
  Valor decimal(10, 2),
  Data_de_cadastro datetime,
  foreign key (id_usuario) references usuarios(id),
  foreign key (id_cartao) references cartao(id)
);


use payments_app;

insert into usuarios (Nome, Imagem, Nome_de_usuario, Data_de_cadastro) 
values ('Andre Gomes', 'C:\Users\Franciane\Documents\projetos\MyQSL database\img\andre.png', 'gomes_andre', '20230920');

insert into usuarios (Nome, Imagem, Nome_de_usuario, Data_de_cadastro) 
values ('Camila Ribeiro', 'C:\Users\Franciane\Documents\projetos\MyQSL database\img\camila.png', 'ribeiro_camila', '20230920');

insert into usuarios (Nome, Imagem, Nome_de_usuario, Data_de_cadastro) 
values ('Mariana Souza', 'C:\Users\Franciane\Documents\projetos\MyQSL database\img\mariana.png', 'souza_mariana', '20230920');

insert into usuarios (Nome, Imagem, Nome_de_usuario, Data_de_cadastro) 
values ('Pedro Silva', 'C:\Users\Franciane\Documents\projetos\MyQSL database\img\pedro.png', 'silva_pedro', '20230919');


select * from usuarios order by Nome;

-- Id Nome           Imagem Nome_de_usuario Data_de_cadastro
-- 1  Andre Gomes	  BLOG	 gomes_andre	 2023-09-20
-- 2  Camila Ribeiro BLOG	 ribeiro_camila	 2023-09-20
-- 3  Mariana Souza  BLOG	 souza_mariana	 2023-09-20
-- 4  Pedro Silva	  BLOG	 silva_pedro	 2023-09-19


select * from cartao

insert into cartao (Numero, Cvv, Data_de_expiracao, Valido, Data_de_cadastro) 
values ('5556996938471543', '438', '20240920', true, '2023-09-18 12:32:00');

insert into cartao (Numero, Cvv, Data_de_expiracao, Valido, Data_de_cadastro) 
values ('5099437942280285', '106', '2025-09-20', true, '2023-09-19 12:42:30');


insert into cartao (Numero, Cvv, Data_de_expiracao, Valido, Data_de_cadastro) 
values ('214930587182056', '683', '2024-09-20', true, '2023-09-20 10:20:37');

insert into cartao (Numero, Cvv, Data_de_expiracao, Valido, Data_de_cadastro) 
values ('6011228095819869', '545', '2025-05-20', false, '2023-09-20 11:30:10')

insert into cartao (Numero, Cvv, Data_de_expiracao, Valido, Data_de_cadastro) 
values ('6011228095819869', '544', '2025-05-20', true, '2023-09-20 11:30:10')

select * from cartao 

-- Id Numero           	Cvv 	Data_de_expiracao     Valido Data_de_cadastro
-- 1  5556996938471543	438	2024-09-20	      1      2023-09-18 12:32:00
-- 2  5099437942280285	106	2025-09-20	      1      2023-09-19 12:42:30
-- 3  214930587182056	683	2024-09-20	      1      2023-09-20 10:20:37
-- 4  6011228095819869	545	2025-05-20	      0	     2023-09-20 11:30:10
-- 5  6011228095819869	544	2025-05-20	      1      2023-09-20 11:30:10

select * from cartao where valido = 1 order by data_de_cadastro 

-- Id Numero           	Cvv 	Data_de_expiracao     Valido Data_de_cadastro
-- 1  5556996938471543	438	2024-09-20	      1      2023-09-18 12:32:00
-- 2  5099437942280285	106	2025-09-20	      1      2023-09-19 12:42:30
-- 3  214930587182056	683	2024-09-20	      1      2023-09-20 10:20:37
-- 5  6011228095819869	544	2025-05-20	      1      2023-09-20 11:30:10


select * from cartao

insert into cartao (Numero, Cvv, Data_de_expiracao, Valido, Data_de_cadastro) 
values ('5556996938471543', '438', '20240920', true, '2023-09-18 12:32:00');

insert into cartao (Numero, Cvv, Data_de_expiracao, Valido, Data_de_cadastro) 
values ('5099437942280285', '106', '2025-09-20', true, '2023-09-19 12:42:30');

insert into cartao (Numero, Cvv, Data_de_expiracao, Valido, Data_de_cadastro) 
values ('214930587182056', '683', '2024-09-20', true, '2023-09-20 10:20:37');

insert into cartao (Numero, Cvv, Data_de_expiracao, Valido, Data_de_cadastro) 
values ('6011228095819869', '545', '2025-05-20', false, '2023-09-20 11:30:10')

insert into cartao (Numero, Cvv, Data_de_expiracao, Valido, Data_de_cadastro) 
values ('6011228095819869', '544', '2025-05-20', true, '2023-09-20 11:30:10')

select * from transacao;

insert into transacao (id_usuario, id_cartao, Valor, data_de_cadastro) 
values (2, 1, '50.00', '2023-09-20')

insert into transacao (id_usuario, id_cartao, Valor, data_de_cadastro) 
values (3, 2, '110.00', '2023-09-20')

insert into transacao (id_usuario, id_cartao, Valor, data_de_cadastro) 
values (4, 3, '550.00', '2023-09-18')

insert into transacao (id_usuario, id_cartao, Valor, data_de_cadastro) 
values (1, 5, '750.00', '2023-09-18 13:05:00')



-- Id Id_usuario Id_cartao Valor   Data_de_cadastro
-- 1  2	      1	        50.00	2023-09-20 00:00:00
-- 2  2	      1	        50.00	2023-09-10 00:00:00
-- 3  3	      2	        110.00	2023-09-19 00:00:00
-- 4  4	      3	        550.00	2023-09-18 00:00:00
-- 5  1	      5	        750.00	2023-09-18 13:05:00
				
UPDATE transacao SET Data_de_cadastro = "23-09-20 09:10:40" WHERE Id = 1;
UPDATE transacao SET Data_de_cadastro = "23-09-10 08:40:00" WHERE Id = 2;
UPDATE transacao SET Data_de_cadastro = "23-09-19 10:10:30" WHERE Id = 3;
UPDATE transacao SET Data_de_cadastro = "23-09-18 07:10:40" WHERE Id = 4;

select * from transacao;

-- Id Id_usuario Id_cartao Valor   Data_de_cadastro
-- 1  2	         1	   50.00   2023-09-20 09:10:40
-- 2  2	         1	   50.00   2023-09-10 08:40:00
-- 3  3	         2	   110.00  2023-09-19 10:10:30
-- 4  4	         3	   550.00  2023-09-18 07:10:40
-- 5  1	         5	   750.00  2023-09-18 13:05:00
				
SELECT
    transacao.data_de_cadastro,
    usuarios.Nome AS nome_de_usuario,
    cartao.Numero AS numero_de_cartao,
    cartao.Data_de_expiracao
FROM
    transacao
JOIN
    usuarios ON transacao.Id_usuario = usuarios.Id
JOIN
    cartao ON transacao.Id_cartao = cartao.Id
ORDER BY
    transacao.data_de_cadastro DESC;

-- Data_de_cadastro     Nome_de_usuario numero_de_cartao Data_de_expiracao
-- 2023-09-20 09:10:40	Camila Ribeiro	5556996938471543 2024-09-20
-- 2023-09-19 10:10:30	Mariana Souza	5099437942280285 2025-09-20
-- 2023-09-18 13:05:00	Andre Gomes	6011228095819869 2025-05-20
-- 2023-09-18 07:10:40	Pedro Silva	2149305871820561 2024-09-20
-- 2023-09-10 08:40:00	Camila Ribeiro	5556996938471543 2024-09-20
