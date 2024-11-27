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
