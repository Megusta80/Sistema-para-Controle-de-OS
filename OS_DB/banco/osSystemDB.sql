CREATE DATABASE osSystemDB;
USE osSystemDB;

CREATE TABLE tbusuarios(
iduser INT PRIMARY KEY, 
usuario VARCHAR (50) NOT NULL,
telefone VARCHAR (15),
login VARCHAR (15) NOT NULL UNIQUE,
senha VARCHAR (20) NOT NULL,
perfil VARCHAR (20) NOT NULL
);

DESCRIBE tbusuarios;

INSERT INTO tbusuarios (iduser, usuario, telefone, login, senha, perfil)
VALUES (0,'Administrador','9999-9999', 'admin', 'admin', 'ADMIN');

INSERT INTO tbusuarios (iduser, usuario, telefone, login, senha, perfil)
VALUES (1,'User','9888-9999', 'user', '1234', 'USER');

SELECT * FROM tbusuarios;

CREATE TABLE tbclientes(
idcli INT PRIMARY KEY AUTO_INCREMENT,
nomecli VARCHAR (50) NOT NULL,
endcli VARCHAR (100),
fonecli VARCHAR (50) NOT NULL,
emailcli VARCHAR (50)
);

DESCRIBE tbclientes;

INSERT INTO tbclientes(nomecli, endcli, fonecli, emailcli)
VALUES ('Ricardo Krauze', 'Rua Maestro, 2020', '9991-9998', 'ricardo@hotmail.com');

SELECT * FROM tbclientes;

CREATE TABLE tbos(
os INT PRIMARY KEY AUTO_INCREMENT,
data_os TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
equipamento VARCHAR (150) NOT NULL,
defeito VARCHAR (150) NOT NULL,
servico VARCHAR (150) NOT NULL,
tecnico VARCHAR (30),
valor DECIMAL (10, 2),
idcli INT NOT NULL,
FOREIGN KEY(idcli) REFERENCES tbclientes(idcli)
);

DESCRIBE tbos;

INSERT INTO tbos (equipamento, defeito, servico, tecnico, valor, idcli)
VALUES ('Notebook', 'Não carrega', 'Troca de fonte', 'Daniel Toshimi', 87.50, 1);

SELECT * FROM tbos;

SELECT 
O.os,equipamento,defeito,servico , valor, tecnico,
C.nomecli, fonecli, emailcli
FROM tbos AS O
INNER JOIN tbclientes AS C
ON (O.idcli = C.idcli);
