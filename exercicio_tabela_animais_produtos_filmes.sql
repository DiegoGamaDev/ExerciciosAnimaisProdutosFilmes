CREATE TABLE Animais (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Data_Nasc DATE,
    Peso FLOAT,
    Especie_ID INT,
    FOREIGN KEY (Especie_ID) REFERENCES Especies(ID)
);


CREATE TABLE Especies (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Descricao TEXT
);

INSERT INTO Especies (Nome, Descricao) VALUES ('Leão', 'Mamífero carnívoro');
INSERT INTO Especies (Nome, Descricao) VALUES ('Pinguim', 'Ave aquática');
INSERT INTO Especies (Nome, Descricao) VALUES ('Elefante', 'Mamífero herbívoro');

INSERT INTO Animais (Nome, Data_Nasc, Peso, Especie_ID) VALUES ('Simba', '1995-07-10', 200, 1);
INSERT INTO Animais (Nome, Data_Nasc, Peso, Especie_ID) VALUES ('Nala', '1998-05-03', 180, 1);
INSERT INTO Animais (Nome, Data_Nasc, Peso, Especie_ID) VALUES ('Mumble', '2001-12-18', 30, 2);
INSERT INTO Animais (Nome, Data_Nasc, Peso, Especie_ID) VALUES ('Gloria', '1999-09-22', 45, 2);
INSERT INTO Animais (Nome, Data_Nasc, Peso, Especie_ID) VALUES ('Dumbo', '1941-10-23', 1500, 3);
INSERT INTO Animais (Nome, Data_Nasc, Peso, Especie_ID) VALUES ('Babar', '1931-05-09', 5400, 3);
INSERT INTO Animais (Nome, Data_Nasc, Peso, Especie_ID) VALUES ('Jumbo', '1861-01-01', 6500, 3);
INSERT INTO Animais (Nome, Data_Nasc, Peso, Especie_ID) VALUES ('Tantor', '1965-11-15', 4500, 3);



-- --------------------------


CREATE TABLE Marcas (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    SiteOficial VARCHAR(255),
    Telefone VARCHAR(20)
);


INSERT INTO Marcas (Nome, SiteOficial, Telefone) VALUES ('Marca A', 'http://www.marcaA.com', '+1234567890');
INSERT INTO Marcas (Nome, SiteOficial, Telefone) VALUES ('Marca B', 'http://www.marcaB.com', '+0987654321');
INSERT INTO Marcas (Nome, SiteOficial, Telefone) VALUES ('Marca C', 'http://www.marcaC.com', '+1112233445');


CREATE TABLE Produtos (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    PrecoCusto DECIMAL(10, 2),
    PrecoVenda DECIMAL(10, 2),
    DataValidade DATE,
    Marca_ID INT,
    FOREIGN KEY (Marca_ID) REFERENCES Marcas(ID)
);


INSERT INTO Produtos (Nome, PrecoCusto, PrecoVenda, DataValidade, Marca_ID) VALUES ('Produto 1', 10.50, 15.99, '2023-12-31', 1);
INSERT INTO Produtos (Nome, PrecoCusto, PrecoVenda, DataValidade, Marca_ID) VALUES ('Produto 2', 8.75, 12.99, '2023-11-15', 2);
INSERT INTO Produtos (Nome, PrecoCusto, PrecoVenda, DataValidade, Marca_ID) VALUES ('Produto 3', 12.25, 18.49, '2024-01-20', 3);
INSERT INTO Produtos (Nome, PrecoCusto, PrecoVenda, DataValidade, Marca_ID) VALUES ('Produto 4', 15.00, 22.99, '2023-10-05', 1);
INSERT INTO Produtos (Nome, PrecoCusto, PrecoVenda, DataValidade, Marca_ID) VALUES ('Produto 5', 11.75, 17.99, '2023-09-30', 2);
INSERT INTO Produtos (Nome, PrecoCusto, PrecoVenda, DataValidade, Marca_ID) VALUES ('Produto 6', 9.99, 14.49, '2023-11-25', 1);
INSERT INTO Produtos (Nome, PrecoCusto, PrecoVenda, DataValidade, Marca_ID) VALUES ('Produto 7', 13.50, 19.99, '2023-10-10', 3);
INSERT INTO Produtos (Nome, PrecoCusto, PrecoVenda, DataValidade, Marca_ID) VALUES ('Produto 8', 14.25, 21.49, '2023-12-15', 2);



-- ---------------------------------------------


CREATE TABLE Categorias (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    PublicoAlvo VARCHAR(50)
);


INSERT INTO Categorias (Nome, PublicoAlvo) VALUES ('Ação', 'Adulto');
INSERT INTO Categorias (Nome, PublicoAlvo) VALUES ('Comédia', 'Família');
INSERT INTO Categorias (Nome, PublicoAlvo) VALUES ('Animação', 'Infantil');


CREATE TABLE Filmes (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(255) NOT NULL,
    Sinopse TEXT,
    Estudio VARCHAR(255),
    Categoria_ID INT,
    FOREIGN KEY (Categoria_ID) REFERENCES Categorias(ID)
);

-- Inserção de pelo menos 8 filmes
INSERT INTO Filmes (Titulo, Sinopse, Estudio, Categoria_ID) VALUES ('Filme 1', 'Sinopse do Filme 1', 'Estudio A', 1);
INSERT INTO Filmes (Titulo, Sinopse, Estudio, Categoria_ID) VALUES ('Filme 2', 'Sinopse do Filme 2', 'Estudio B', 2);
INSERT INTO Filmes (Titulo, Sinopse, Estudio, Categoria_ID) VALUES ('Filme 3', 'Sinopse do Filme 3', 'Estudio C', 3);
INSERT INTO Filmes (Titulo, Sinopse, Estudio, Categoria_ID) VALUES ('Filme 4', 'Sinopse do Filme 4', 'Estudio A', 1);
INSERT INTO Filmes (Titulo, Sinopse, Estudio, Categoria_ID) VALUES ('Filme 5', 'Sinopse do Filme 5', 'Estudio B', 2);
INSERT INTO Filmes (Titulo, Sinopse, Estudio, Categoria_ID) VALUES ('Filme 6', 'Sinopse do Filme 6', 'Estudio C', 3);
INSERT INTO Filmes (Titulo, Sinopse, Estudio, Categoria_ID) VALUES ('Filme 7', 'Sinopse do Filme 7', 'Estudio A', 1);
INSERT INTO Filmes (Titulo, Sinopse, Estudio, Categoria_ID) VALUES ('Filme 8', 'Sinopse do Filme 8', 'Estudio B', 2);

