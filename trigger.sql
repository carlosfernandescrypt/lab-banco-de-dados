DELIMITER $$

CREATE TRIGGER Trigger_Gamificacao_Comentarios
AFTER INSERT ON Comentarios
FOR EACH ROW
BEGIN
    -- Incrementa o contador de comentários do usuário
    UPDATE Usuarios
    SET contador_comentarios = IFNULL(contador_comentarios, 0) + 1
    WHERE id_usuario = NEW.id_usuario;

    -- Verifica o número de comentários do usuário
    DECLARE num_comentarios INT;
    SELECT contador_comentarios INTO num_comentarios
    FROM Usuarios
    WHERE id_usuario = NEW.id_usuario;

    -- Se o usuário alcançou múltiplos de 10 comentários, insere uma notificação
    IF num_comentarios MOD 10 = 0 THEN
        DECLARE nivel INT;
        SET nivel = num_comentarios / 10;

        INSERT INTO Notificacoes (id_usuario, origem_id, tipo, data_hora)
        VALUES (
            NEW.id_usuario,
            NULL,
            CONCAT('Parabéns! Você alcançou o nível ', nivel, ' de comentarista!'),
            NOW()
        );
    END IF;
END$$

DELIMITER ;
