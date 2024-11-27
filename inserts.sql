INSERT INTO Usuarios (nome_usuario, email, data_nascimento, foto_perfil)
VALUES
('joao123', 'joao123@email.com', '1990-05-15', 'foto1.png'),
('maria456', 'maria456@email.com', '1985-03-20', 'foto2.png'),
('carlos789', 'carlos789@email.com', '2000-10-05', 'foto3.png'),
('ana321', 'ana321@email.com', '1995-07-12', 'foto4.png');

INSERT INTO Conexoes (id_usuario1, id_usuario2, data_criacao)
VALUES
(1, 2, NOW()),
(2, 3, NOW()),
(3, 4, NOW()),
(4, 1, NOW());

INSERT INTO Posts (id_usuario, data_criacao, conteudo, tipo)
VALUES
(1, NOW(), 'Minha primeira postagem!', 'texto'),
(2, NOW(), 'Adoro essa imagem!', 'imagem'),
(3, NOW(), 'Alguém viu esse evento?', 'texto'),
(4, NOW(), 'Confira este vídeo incrível!', 'outro');
