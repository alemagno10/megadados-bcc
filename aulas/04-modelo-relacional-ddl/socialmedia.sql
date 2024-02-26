DROP DATABASE IF EXISTS socialmedia;
CREATE DATABASE socialmedia;
use socialmedia;

CREATE TABLE users(
	id_user INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    primary key(id_user)
);

CREATE TABLE posts(
	id_post INT NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    conteudo VARCHAR(1000),
    data_publicacao VARCHAR(20) NOT NULL,
    id_user INT NOT NULL,
    primary key(id_post),
    foreign key(id_user) references users(id_user)
);

CREATE TABLE comentarios(
	id_comentario INT NOT NULL,
    texto VARCHAR(50) NOT NULL,
	data_comentario VARCHAR(20) NOT NULL,
	id_user INT NOT NULL,
	id_post INT NOT NULL,
    foreign key(id_user) references users(id_user),
	foreign key(id_post) references posts(id_post)
)


