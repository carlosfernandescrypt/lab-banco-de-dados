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

INSERT INTO Comentarios (id_postagem, id_usuario, data, conteudo)
VALUES
(1, 2, NOW(), 'Parabéns pela postagem!'),
(1, 3, NOW(), 'Muito interessante!'),
(2, 1, NOW(), 'Linda imagem!'),
(3, 4, NOW(), 'Muito relevante.');

INSERT INTO Notificacoes (id_usuario, origem_id, tipo, data_hora)
VALUES
(1, 1, 'comentário', NOW()),
(2, 3, 'comentário', NOW()),
(3, 2, 'avaliação', NOW()),
(4, 4, 'avaliação', NOW());

INSERT INTO Grupos (nome, descricao, data_criacao)
VALUES
('Fotografia', 'Grupo para amantes de fotografia', NOW()),
('Esportes', 'Discussão sobre esportes', NOW()),
('Tecnologia', 'Grupo de tecnologia', NOW());

INSERT INTO membrosGrupos (id_grupo, id_usuario, funcao)
VALUES
(1, 1, 'administrador'),
(1, 2, 'membro'),
(2, 3, 'administrador'),
(3, 4, 'administrador');

INSERT INTO mensagensPrivadas (id_remetente, id_destinatario, data_hora, conteudo,
status)
VALUES
(1, 2, NOW(), 'Olá, tudo bem?', 'enviada'),
(2, 3, NOW(), 'Oi, como vai?', 'lida'),
(3, 4, NOW(), 'Você viu o evento?', 'recebida'),
(4, 1, NOW(), 'Sim, vi sim.', 'lida');

