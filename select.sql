SELECT * FROM Posts WHERE id_usuario = 1;

SELECT c.conteudo, u.nome_usuario
FROM Comentarios c
JOIN Usuarios u ON c.id_usuario = u.id_usuario
WHERE c.id_postagem = 1;
