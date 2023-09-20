create databases financial_control -- criar novo banco de dados 

use financial_control -- selecionar 

CREATE TABLE transactions ( -- criar tabale e colunas 
    Id int auto_increment primary key,
     Tipo varchar(10),
    Nome varchar(255),
    Valor decimal(10, 2),
    Data_de_cadastro date
);

--adicionar valores na tabela 

INSERT INTO transactions (Tipo, Nome, Valor, Data_de_cadastro)
VALUES ('Compra', 'Calça Jeans', 99.90, '2023-09-15');

INSERT INTO transactions (Tipo, Nome, Valor, Data_de_cadastro)
VALUES ('Venda', 'Camisa', 49.90, '2023-09-15');

INSERT INTO transactions (Tipo, Nome, Valor, Data_de_cadastro)
VALUES ('Venda', 'Tenis', 79.90, '2023-09-15');

INSERT INTO transactions (Tipo, Nome, Valor, Data_de_cadastro)
VALUES ('Compra', 'Tenis', 119.90, '2023-09-14');

INSERT INTO transactions (Tipo, Nome, Valor, Data_de_cadastro)
VALUES ('Venda', 'Sandalha', 149.90, '2023-09-13');

INSERT INTO transactions (Tipo, Nome, Valor, Data_de_cadastro)
VALUES ('Venda', 'Sandalha', 149.90, '2023-09-13');


select * from transactions -- mostrar todas as inserções 
 
ID	Tipo	Nome	        Valor	Data_de_cadastro
1	Compra	Calça Jeans	    99.90	2023-09-15
2	Venda	Camisa	        49.90	2023-09-15
3	Venda	Tenis	        79.90	2023-09-15
4	Venda	Tenis	        119.90	2023-09-14
5	Venda	Sandalha	    149.90	2023-09-13
6	Venda	Sandalha	    149.90	2023-09-13


select * from transactions order by Data_de_cadastro; -- mostrar inserções por data 

Id  Tipo    Nome            Valor   Data_de_cadastro
5   Venda   Sandalha        149.90  2023-09-13
6   Venda   Sandalha        149.90  2023-09-13
4   Venda   Tenis           119.90  2023-09-14
1   Compra  Calça Jeans     99.90   2023-09-15
2   Venda   Camisa          49.90   2023-09-15
3   Venda   Tenis           79.90   2023-09-15


SELECT SUM(Valor) AS total FROM transactions -- mostrar valor total 

total
649.40

DELETE FROM transactions WHERE id = 1;

select * from  transactions;

Id  Tipo    Nome        Valor   Data_de_cadastro
2	Venda	Camisa      49.90	2023-09-15
3	Venda	Tenis       79.90	2023-09-15
4	Venda	Tenis       119.90	2023-09-14
5	Venda	Sandalha    149.90	2023-09-13
6	Venda	Sandalha    149.90	2023-09-13
				