CREATE TABLE Aluno (
    matricula_alu VARCHAR(20) PRIMARY KEY,
    nome_alu VARCHAR(60),
    cpf VARCHAR(14),
    data_nasc DATE,
    email VARCHAR(50),
    turma CHARACTER
);

INSERT INTO Aluno (matricula_alu, nome_alu, cpf, data_nasc, email, turma)
VALUES
('capic123', 'marcoss', '123.098.000-12', '2006-05-13', 'email@email.com', 3 ),
('capic673', 'outro marcos', '663.238.032-62', '2003-08-19', 'email2@hotmail.com', 3); 


CREATE TABLE Professor (
    matricula_prof VARCHAR(20),
    nome_prof VARCHAR(60),
    cpf VARCHAR(14),
    data_nasc DATE,
    email VARCHAR(50),
    disciplina VARCHAR(25)
);
INSERT INTO Professor (matricula_prof, nome_prof, cpf, data_nasc, email, disciplina)
VALUES ('tads0123', 'Professor da Silva', '234.567.123-99', '1913-06-21', 'emailprof@gmail.com', 'Banco de dados');

CREATE TABLE Laboratorio (
    id_laboratorio VARCHAR(20) PRIMARY KEY,
    numero_de_comp INTEGER
);
INSERT INTO Laboratorio (id_laboratorio, numero_de_comp)
VALUES ('labinfo01', 14);

CREATE TABLE Horario_reserva (
    horario TIMESTAMP
);
INSERT INTO Horario_reserva
VALUES	
('2022-03-12 11:23:44'),
('2022-10-07 19:00:00');

CREATE TABLE Reserva_comp (
    id_reserva_comp VARCHAR(20) PRIMARY KEY,
	nome_alu VARCHAR (60),
    horario_reserva TIMESTAMP 
);
INSERT INTO Reserva_comp(id_reserva_comp, nome_alu, horario_reserva)
VALUES
('reserva8@!*3&3', 'marcoss', '2022-03-12 11:23:44'),
('reserid¨$23', 'outro marcos', '2022-03-13 13:26:14' );


CREATE TABLE Reserva_lab (
    id_reserva_lab VARCHAR(25) PRIMARY KEY,
    horario_reserva TIMESTAMP
);
INSERT INTO Reserva_lab(id_reserva_lab, horario_reserva)
VALUES ('labreser@341', '2022-10-07 19:00:00');

CREATE TABLE Historico_reserva (
    id_reserva_lab VARCHAR (25),
	nome_prof VARCHAR (60),
	id_reserva_comp VARCHAR (25),
	nome_alu VARCHAR (60)
);

INSERT INTO Historico_reserva (id_reserva_lab, nome_prof, id_reserva_comp, nome_alu)
VALUES ('labreser@341', 'Professor da Silva', 'reserva8@!*3&3', 'marcoss' );


CREATE TABLE Gerente_de_laboratorio (
    id_gerente VARCHAR(20) PRIMARY KEY,
    nome_gerente VARCHAR(60),
    laboratorio INTEGER,
    fk_Laboratorio_id_laboratorio VARCHAR (20)
);
INSERT INTO Gerente_de_laboratorio (id_gerente, nome_gerente, laboratorio,fk_Laboratorio_id_laboratorio)
VALUES ('gerente123', 'Gerente da Silva', 01,'labinfo01');

CREATE TABLE Calendario (
    data_dia DATE PRIMARY KEY
);

INSERT INTO Calendario (data_dia)
VALUES ('06-12-2022');

CREATE TABLE Computador (
    Marca VARCHAR(15),
    Modelo VARCHAR(25) PRIMARY KEY
);
INSERT INTO Computador(marca, modelo)
VALUES ('LG', 'LG computador 3000');
