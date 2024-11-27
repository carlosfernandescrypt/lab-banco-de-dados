CREATE TABLE Usuarios (
  id_usuario INT AUTO_INCREMENT PRIMARY KEY,
  nome_usuario VARCHAR(50) UNIQUE NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  data_nascimento DATE NOT NULL,
  foto_perfil VARCHAR(255)
);

CREATE TABLE Conexoes (
  id_conexao INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario1 INT NOT NULL,
  id_usuario2 INT NOT NULL,
  data_criacao DATETIME NOT NULL,
  FOREIGN KEY (id_usuario1) REFERENCES Usuarios(id_usuario),
  FOREIGN KEY (id_usuario2) REFERENCES Usuarios(id_usuario)
);

CREATE TABLE Posts (
  id_postagem INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT NOT NULL,
  data_criacao DATETIME NOT NULL,
  conteudo TEXT NOT NULL,
  tipo ENUM('texto', 'imagem', 'outro') NOT NULL,
  FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

CREATE TABLE Comentarios (
  id_comentario INT AUTO_INCREMENT PRIMARY KEY,
  id_postagem INT,
  id_comentario_pai INT,
  id_usuario INT NOT NULL,
  data DATETIME NOT NULL,
  conteudo TEXT NOT NULL,
  FOREIGN KEY (id_postagem) REFERENCES Posts(id_postagem),
  FOREIGN KEY (id_comentario_pai) REFERENCES Comentarios(id_comentario),
  FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

CREATE TABLE Notificacoes (
  id_notificacao INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT NOT NULL,
  origem_id INT NOT NULL,
  tipo ENUM('avaliação', 'comentário') NOT NULL,
  data_hora DATETIME NOT NULL,
  FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

CREATE TABLE Grupos (
  id_grupo INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) UNIQUE NOT NULL,
  descricao TEXT NOT NULL,
  data_criacao DATETIME NOT NULL
);

CREATE TABLE membrosGrupos (
  id_membro INT AUTO_INCREMENT PRIMARY KEY,
  id_grupo INT NOT NULL,
  id_usuario INT NOT NULL,
  funcao ENUM('membro', 'administrador') NOT NULL,
  FOREIGN KEY (id_grupo) REFERENCES Grupos(id_grupo),
  FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

CREATE TABLE mensagensPrivadas (
  id_mensagem INT AUTO_INCREMENT PRIMARY KEY,
  id_remetente INT NOT NULL,
  id_destinatario INT NOT NULL,
  data_hora DATETIME NOT NULL,
  conteudo TEXT NOT NULL,
  status ENUM('enviada', 'recebida', 'lida') NOT NULL,
  FOREIGN KEY (id_remetente) REFERENCES Usuarios(id_usuario),
  FOREIGN KEY (id_destinatario) REFERENCES Usuarios(id_usuario)
);

CREATE TABLE Tags (
  id_tag INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE tagsUsuarios (
  id_relacao INT AUTO_INCREMENT PRIMARY KEY,
  id_usuario INT NOT NULL,
  id_tag INT NOT NULL,
  FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario),
  FOREIGN KEY (id_tag) REFERENCES Tags(id_tag)
);
