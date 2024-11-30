-- comentários
-- a linha abaixo cria um banco de dados
create database dbinfox;
-- a linha abaixo escolhe o  banco de dados a ser utilizado
use dbinfox;
-- o bloco de instruções abaixo cria uma tabela
create table tbusuarios(
iduser int primary key, 
usuario varchar (50) not null,
telefone varchar (15),
login varchar (15) not null unique,
senha varchar (20) not null
);
-- o comando abaixo descreve a tabela
describe tbusuarios;
-- a linha abaixo insere dados na tabela (CRUD)
-- Create (equivalente ao insert)

insert into tbusuarios(iduser, usuario, telefone, login, senha)
values (1,'Gustavo Henrique','99198-4625', 'megusta80', '1234');
-- a linha abaixo exibe os dados da tabela (CRUD)
-- read (equivalente ao select)

select * from tbusuarios;

insert into tbusuarios(iduser, usuario, telefone, login, senha)
values (2,'José de Assis','97108-6789', 'joseassis', '4321');

insert into tbusuarios(iduser, usuario, telefone, login, senha)
values (0,'Administrador','9999-9999', 'admin', 'admin1234');

-- a linha abaixo modifica dados na tabela (CRUD)
-- Update 

update tbusuarios set telefone='9555-5555' where iduser=2;

-- a linha abaixo apaga um registro da tabela (CRUD)
-- delete

insert into tbusuarios(iduser, usuario, telefone, login, senha)
values (7,'Alguem','9999-9999', 'alguem', 'admin1234');

delete from tbusuarios where iduser = 7;

select * from tbusuarios;

create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar (50) not null,
endcli varchar (100),
fonecli varchar (50) not null,
emailcli varchar (50)
);

describe tbclientes;

insert into tbclientes(nomecli, endcli, fonecli, emailcli)
values ('Roberto Vaz', 'Rua Maestro, 2020', '9991-9998', 'vaz@terra.com');

select * from tbclientes;

use dbinfox;

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

select * from tbos;

insert into tbos (equipamento, defeito, servico, tecnico, valor, idcli)
values ('Notebook', 'Não liga', 'Troca de fonte', 'Daniel Toshimi', 87.50, 1);

-- o código abaixo traz informações de duas tabelas
select 
O.os,equipamento,defeito,servico , valor, tecnico,
C.nomecli, fonecli, emailcli
from tbos as O
inner join tbclientes as C
on (O.idcli = C.idcli);