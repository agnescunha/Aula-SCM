create database distribuidora;





CREATE TABLE Cidade(

	Ccod integer NOT NULL,

	Cnome varchar (50) NOT NULL,

	Uf varchar (2) NOT NULL,

	PRIMARY KEY (Ccod));



CREATE TABLE Fornecedor(

	Fcod integer NOT NULL,

	Fnome varchar (50) NOT NULL,

	_status integer NOT NULL,

	Ccod integer NOT NULL,

	Fone varchar (9),

	PRIMARY KEY (Fcod),

	CONSTRAINT Fornecedor_Cidade FOREIGN KEY (Ccod) REFERENCES Cidade (Ccod));



CREATE TABLE Peca(

	Pcod integer NOT NULL,

	Pnome varchar (50) NOT NULL,

	Cor varchar (30) NOT NULL,

	Peso decimal (4,2) NOT NULL,

	Ccod integer NOT NULL,

	PRIMARY KEY (Pcod),

	CONSTRAINT Peca_Cidade FOREIGN KEY (Ccod) REFERENCES Cidade (Ccod));  	



CREATE TABLE Projeto(

	PRcod integer NOT NULL,

	Jnome varchar (30) NOT NULL,

	Ccod integer NOT NULL,

	PRIMARY KEY (PRcod),

	CONSTRAINT Projeto_Cidade FOREIGN KEY (Ccod) REFERENCES Cidade (Ccod));



CREATE TABLE Fornecimento(

	Fcod integer NOT NULL,

	Pcod integer NOT NULL,

	PRcod integer NOT NULL,

	Quantidade integer NOT NULL,

	PRIMARY KEY (Fcod, Pcod, PRcod),

	CONSTRAINT Fornecimento_Fornecedor FOREIGN KEY (Fcod) REFERENCES Fornecedor(Fcod),

	CONSTRAINT Fornecimento_Peca FOREIGN KEY (Pcod) REFERENCES Peca (Pcod),

	CONSTRAINT Fornecimento_Projeto FOREIGN KEY (PRcod) REFERENCES Projeto (PRcod));



INSERT INTO Cidade VALUES ('101','POA','PR');

INSERT INTO Cidade VALUES ('102','Sombrio', 'SC');

INSERT INTO Cidade VALUES ('103','Criciuma','SC');

INSERT INTO Cidade VALUES ('104', 'Caxias','PR');

INSERT INTO Fornecedor VALUES ('001','Ritter','1','101','987654321');

INSERT INTO Fornecedor VALUES ('002','Caio Ltda', '1','103','36098765');

INSERT INTO Fornecedor VALUES ('003','Cardoso e Cia', '0','104','');

INSERT INTO Fornecedor VALUES ('004','Forever', '1', '101', '98712347');

INSERT INTO Fornecedor VALUES ('005','Union', '1', '103','');



INSERT INTO Peca VALUES ('001','Peca A', 'azul', '5', '101');

INSERT INTO Peca VALUES ('002','Peca B', 'preto', '8', '101');

INSERT INTO Peca VALUES  ('003', 'Peca C', 'amarelo', '18', '103');

INSERT INTO Peca VALUES ('004', 'Peca D', 'vermelho', '10', '104');

INSERT INTO Peca VALUES ('005', 'Peca E', 'azul', '8', '104');



INSERT INTO Projeto VALUES ('111', 'Proj 1', '103');

INSERT INTO Projeto VALUES ('112', 'Proj 2', '101');

INSERT INTO Projeto VALUES ('113', 'Proj 3', '104');

INSERT INTO Projeto VALUES  ('114', 'Proj 4', '101');



INSERT INTO Fornecimento VALUES ('001', '001', '112', '10');

INSERT INTO Fornecimento VALUES ('002', '003', '111', '3');

INSERT INTO Fornecimento VALUES ('001', '002', '114', '6');

INSERT INTO Fornecimento VALUES ('004', '001', '112', '15');



'Questão 1'

UPDATE Cidade

SET Uf = 'RS'

WHERE Uf = 'PR';        



'Questão 2'

SELECT Fnome as nome_fornecedor 'alias - apelido para variável'

FROM Fornecedor

WHERE _status = 1 order by Fnome;  'order by - coloca em ordem crescente, e desc no final coloca em ordem decrescente' 



'Questão 3'

SELECT Fnome as nome_fornecedor

FROM Fornecedor, Cidade, Fornecimento

WHERE Fornecedor.Ccod = Cidade.Ccod AND Fornecedor.Fcod = Fornecimento.Fcod AND Pcod = '001';



'Questão 4'

DELETE FROM Fornecedor

WHERE _status = 0;

SELECT * FROM Fornecedor;



'Questão 5'

SELECT Fnome as nome_fornecedor, Cnome as Cidade, Uf as UF

FROM Fornecedor, Cidade

WHERE  Fornecedor.Ccod = Cidade.Ccod AND Uf = 'SC';



'Questão 6'

SELECT Jnome as nome_projeto

FROM Projeto, Fornecimento

WHERE Projeto.PRcod = Fornecimento.PRcod AND Fornecimento.Pcod = '001';



'Questão 7'

UPDATE Peca

SET Peso = '15'

WHERE Peso > '9';

SELECT * FROM Peca;



'Questão 8'

SELECT DISTINCT Cor

FROM Peca;



'Questão 9.a'

SELECT Pcod as Codigo_peça, Pnome as Nome_peça, Cor

FROM Peca

WHERE Cor = 'azul';



'Questão 9.b'

UPDATE Peca

SET Cor = 'Azul'

WHERE Cor = 'azul';

SELECT * FROM Peca;



'Questão 10'

SELECT Fornecimento.Pcod as Codigo_Peça, Pnome as Nome_Peça

FROM Fornecimento, Peca

WHERE Quantidade <10 AND Fornecimento.Pcod = Peca.Pcod;






