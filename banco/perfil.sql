use dbinfox;
describe tbusuarios;
select * from tbusuarios;
-- a linha abaixo adiciona um campo a uma tabela
ALTER TABLE tbusuarios ADD COLUMN perfil VARCHAR (20) NOT NULL;
-- a linha abaixo remove um campo de uma tabela
-- ALTER TABLE tbusuario DROP COLUMN perfil;
UPDATE tbusuarios SET perfil ='admin' WHERE iduser = 1;
UPDATE tbusuarios SET perfil ='admin' WHERE iduser = 0;
UPDATE tbusuarios SET perfil ='user' WHERE iduser = 2;


