CREATE TABLE Aluno (
    matricula_alu VARCHAR(13) PRIMARY KEY,
    nome_alu VARCHAR(60),
    cpf VARCHAR(14),
    data_nasc DATE,
    email VARCHAR(50),
    turma CHARACTER
);

INSERT INTO Aluno (matricula_alu, nome_alu, cpf, data_nasc, email, turma)
VALUES
('capic7348tads', 'Pedro Henrique Gomes', '099.422.764-40', '1998-01-08', 'pedrogomes7348@ifpi.com', 3 ),
('capic6730tads', 'Sabrina Mendes', '695.455.477-40', '2001-02-19', 'sabrinamendes6730@ifpi.com', 5),
('capic9492tads', 'Francisco Geraldo Sousa', '406.617.293-89', '1995-05-23', 'franciscosousa9492@ifpi.com', 1),
('capic1284tads', 'Clara Giovana Brito', '579.559.243-98', '1984-12-01', 'clarabrito1284@ifpi.com', 2),
('capic5478tads', 'Yuri Roberto Batista', '378.553.943-62', '2002-06-17', 'yuribatista5478@ifpi.com', 1);

CREATE TABLE Professor (
    matricula_prof VARCHAR(4)PRIMARY KEY,
    nome_prof VARCHAR(60),
    cpf VARCHAR(14),
    data_nasc DATE,
    email VARCHAR(50),
    disciplina VARCHAR(30)
);
INSERT INTO Professor (matricula_prof, nome_prof, cpf, data_nasc, email, disciplina)
VALUES	
('3313', 'Benedito Francisco Alves', '195.986.893-44', '1977-04-07', 'beneditoalves@ifpi.com', 'Banco de Dados'),
('3605', 'Isaac Leandro  Viana', '468.567.153-82', '1980-08-02', 'isaacviana@ifpi.com', 'Redes de Computadores'),
('3120', 'Isis Marli Nogueira', '746.775.533-35', '1988-11-28', 'isisnogueira@ifpi.com', 'Estrutura de Dados');
('3245', 'Juliana Isabelle Gonçalves','813.049.783-20', '1981/04/01','juisabellegoncalves@ifpi.com.br', 'Estatística');

CREATE TABLE Laboratorio (
    id_laboratorio VARCHAR(20) PRIMARY KEY,
    numero_de_comp INTEGER
);
INSERT INTO Laboratorio (id_laboratorio, numero_de_comp)
VALUES	
('labinfo01', 10),
('labinfo02', 15),
('labads02', 9),
('labads01', 12);

CREATE TABLE Horario_reserva (
    horario TIMESTAMP
);
INSERT INTO Horario_reserva
VALUES	
('2022-10-07 19:00:00'),
('2022-03-12 11:23:44');

CREATE TABLE Reserva_comp (
    id_reserva_comp VARCHAR(4) PRIMARY KEY,
    horario_reserva TIMESTAMP,
    fk_Aluno_nome_alu VARCHAR(60)	
);
INSERT INTO Reserva_comp(id_reserva_comp, fk_Aluno_nome_alu, horario_reserva)
VALUES
('4510', 'Pedro Henrique Gomes', '2022-03-12 11:23:44'),
('2960', 'Yuri Roberto Batista', '2022-03-13 13:26:14');


CREATE TABLE Reserva_lab (
    id_reserva_lab VARCHAR(5) PRIMARY KEY,
    horario_reserva TIMESTAMP
);
INSERT INTO Reserva_lab(id_reserva_lab, horario_reserva)
VALUES
('11483', '2022-10-07 19:00:00'),
('17344', '2022-08-10 20:00:00');

CREATE TABLE Historico_reserva (
    fk_Reserva_lab_id_reserva_lab VARCHAR(5),
    fk_Professor_nome_prof VARCHAR(60),
    fk_Reserva_comp_id_reserva_comp VARCHAR (4),
    fk_Aluno_nome_alu VARCHAR(60)
);

INSERT INTO Historico_reserva (fk_Reserva_lab_id_reserva_lab, fk_Professor_nome_prof, fk_Reserva_comp_id_reserva_comp, fk_Aluno_nome_alu)
VALUES ('11483', 'Benedito Francisco Alves', '2960', 'Yuri Roberto Batista' );


CREATE TABLE Gerente_de_laboratorio (
    id_gerente VARCHAR(20) PRIMARY KEY,
    nome_gerente VARCHAR(60),
    laboratorio INTEGER,
    fk_Laboratorio_id_laboratorio VARCHAR (20)
);
INSERT INTO Gerente_de_laboratorio (id_gerente, nome_gerente, laboratorio,fk_Laboratorio_id_laboratorio)
VALUES
('ger824', 'Nair Carolina Sales', 01,'labinfo01'),
('ger022', 'Sérgio Cauã Monteiro', 03,'labads01');

CREATE TABLE Calendario (
    data_dia DATE PRIMARY KEY
);
INSERT INTO Calendario (data_dia)
VALUES ('06-12-2022');

CREATE TABLE Computador (
	id_comp VARCHAR(10)PRIMARY KEY,
    Marca VARCHAR(15),
    Modelo VARCHAR(25)
);
INSERT INTO Computador(id_comp, marca, modelo)
VALUES
('cmp2312', 'Lenovo', 'V50s'),
('cmp7642', 'Lenovo', 'ThinkCentre Neo 50s'),
('cmp2341', 'HP', '280 G5'),
('cmp7438', 'HP', 'ProDesk 400 G6');
