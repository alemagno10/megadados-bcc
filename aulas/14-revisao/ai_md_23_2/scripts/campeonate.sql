CREATE DATABASE campeonato;
USE campeonato;

CREATE TABLE ALUNO (
    id_aluno INTEGER NOT NULL,
    nome VARCHAR(200) NOT NULL,
    apelido VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    matricula INTEGER NOT NULL
    PRIMARY KEY(id_aluno)
)

CREATE TABLE Inscricao (
    id_inscricao INTEGER NOT NULL,
    id_aluno INTEGER NOT NULL, 
    id_modalidade INTEGER NOT NULL,
    foi_pago TINYINT NOT NULL,
    data_inscricao DATETIME NOT NULL,
    PRIMARY KEY(id_inscricao),
    FOREIGN KEY(id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY(id_modalidade) REFERENCES Modalidade(id_modalidade)
)


CREATE TABLE EQUIPE (
    id_equipe INTEGER NOT NULL,
    id_aluno1 INTEGER NOT NULL,
    id_aluno2 INTEGER NOT NULL,
    PRIMARY KEY(id_equipe),
    FOREIGN KEY(id_aluno1) REFERENCES Aluno(id_aluno),
    FOREIGN KEY(id_aluno2) REFERENCES Aluno(id_aluno)
) 

CREATE TABLE Partida (
    id_partida INTEGER NOT NULL,
    id_equipe1 INTEGER NOT NULL,
    id_equipe2 INTEGER NOT NULL,
    PRIMARY KEY(id_partida),
    FOREIGN KEY(id_equipe1) REFERENCES Equipe(id_equipe),
    FOREIGN KEY(id_equipe2) REFERENCES Equipe(id_equipe)
)

