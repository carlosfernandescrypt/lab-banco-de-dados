SELECT * FROM Posts WHERE id_usuario = 1;

SELECT c.conteudo, u.nome_usuario
FROM Comentarios c
JOIN Usuarios u ON c.id_usuario = u.id_usuario
WHERE c.id_postagem = 1;

SELECT n.tipo, n.data_hora, u.nome_usuario AS origem
FROM Notificacoes n
JOIN Usuarios u ON n.origem_id = u.id_usuario
WHERE n.id_usuario = 1;

SELECT m.funcao, u.nome_usuario
FROM membrosGrupos m
JOIN Usuarios u ON m.id_usuario = u.id_usuario
WHERE m.id_grupo = 1;
