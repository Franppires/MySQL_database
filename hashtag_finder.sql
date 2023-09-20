create database hashtag_finder;use hashtag_finder

create table usuarios (
	id int auto_increment primary key, 
	nome varchar(255) not null, 
	email varchar(255) unique not null, 
	senha varchar(255) not null, data_criacao datetime not null
) 

insert into usuarios (nome, email, senha, data_criacao)values ('franciane pires', 'devfpp@gmail.com', md5('Ilike'), '2023-09-20 15:57:03');
insert into usuarios (nome, email, senha, data_criacao)values ('Taciane Amaral', 'taci@gmail.com', SHA1('Pink'), '2023-09-20 16:16:15');
insert into usuarios (nome, email, senha, data_criacao)values ('Camila Silva', 'cammi@gmail.com', SHA2('black', 256), '2023-09-20 16:18:48');

select * from usuarios

id 	nome 						email 						senha 																														data_criacao
1		franciane pires	devfpp@gmail.com	f02186fbead2a088b288ce908cd82cff																	2023-09-20 15:57:03
2		Taciane Amaral	taci@gmail.com		54076359fdc7f1f0e000b9ae15b96f8b09866acb													2023-09-20 16:16:15
3		Camila Silva		cammi@gmail.com		c006c7e3ab14d686f63524136f1ec7c5e553d839bc01c851e4dc9de2bdbfc589	2023-09-20 16:18:48
				

create table buscas ( 
	id int auto_increment primary key,
  termo varchar(255) not null, 
  data datetime not null
);

insert into buscas (termo, data) values ('#kayky.brito', now())
insert into buscas (termo, data) values ('#bolsonaro', now())
insert into buscas (termo, data) values ('#love', now())

select * from buscas

id 	termo 				data1	
1		#kayky.brito	2023-09-20 16:27:122	
2		#bolsonaro		2023-09-20 16:28:463	
3		#love					2023-09-20 16:34:08

select * from buscas where termo = '#love'

id 		termo 	data3
1 		#love		2023-09-20 16:34:08


update buscas set termo = '#amor' where id = 1;

select * from buscas
id 		termo 	data
1			#amor		2023-09-20 16:27:122	#bolsonaro	2023-09-20 16:28:463	#love	2023-09-20 16:34:08
	
delete from buscas where id = 1 

select * from buscas

id 		termo 			data
2			#bolsonaro	2023-09-20 16:28:46
3			#love				2023-09-20 16:34:08

create table tweets (
	id int auto_increment primary key, 
  id_buscas int,
  hashtag text not null,
	data_pesquisa datetime not null,
	foreign key (id_buscas) references Buscas(id)    
) 

insert into tweets (id_buscas, hashtag, data_pesquisa) 
values (2, 'O Ibama reabriu processo contra ex-presidente Bolsonaro por pesca ilegal em 2012. Ele alega perseguição.', NOW());

insert into tweets (id_buscas, hashtag, data_pesquisa) 
values (3, 'O amor é um sentimento profundo que nos conecta de maneira única. Ele nos traz alegria, compreensão e força. O amor transcende palavras, tocando nossos corações de maneira mágica e inesquecível', NOW());select * from tweetsid  id_busca hashtag data_pesquisa2	2	O Ibama reabriu processo contra ex-presidente Bolsonaro por pesca ilegal em 2012. Ele alega perseguição.	2023-09-20 16:52:493	3	O amor é um sentimento profundo que nos conecta de maneira única. Ele nos traz alegria, compreensão e força. O amor transcende palavras, tocando nossos corações de maneira mágica e inesquecível	2023-09-20 16:55:11

select * from tweets

id 	id_buscas hashtag 																																																																																													data_pesquisa 
2		2					O Ibama reabriu processo contra ex-presidente Bolsonaro por pesca ilegal em 2012. Ele alega perseguição.																																													2023-09-20 16:52:49
3		3					O amor é um sentimento profundo que nos conecta de maneira única. Ele nos traz alegria, compreensão e força. O amor transcende palavras, tocando nossos corações de maneira mágica e inesquecível	2023-09-20 16:55:11
			
create  table TABLE filtros_palavras_chave (
  id int auto_increment primary key,
  palavra_chave varchar(255) not null,
  tweet_id int not null,
  foreign key (tweet_id) references tweets(id)
);

insert into filtros_palavras_chave (palavra_chave, tweet_id) values ('sentimento', 3);

update filtros_palavras_chaveSET palavra_chave = 'Ibama', tweet_id = 2 where id = 2;

select * from filtros_palavras_chave

id  palavra  		tweet_idgit
1		sentimento	3
2		Ibama				2

select T.* from Tweets TINNER join filtros_palavras_chave F on T.id = F.tweet_idWHERE F.palavra_chave = 'Ibama';
id 	id_buscas hashtag 																																																	data_pesquisa 
2		2					O Ibama reabriu processo contra ex-presidente Bolsonaro por pesca ilegal em 2012. Ele alega perseguição.	2023-09-20 16:52:49
		
