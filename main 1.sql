-- Criando uma tabela
CREATE TABLE cidades(
  nome TEXT,
  pais TEXT,
  populacao INTEGER,
  area INTEGER
)

-- Inserindo dados
INSERT INTO cidades (nome, pais, populacao, area)
VALUES ('São Paulo', 'Brasil', 12000000, 1521),
       ('Buenos Aires', 'Argentina', 3010000, 475),
       ('Cidade do México', 'México', 8850000, 1485),
       ('Santiago', 'Chile', 5700000, 1769),
       ('Lima', 'Peru', 8000000, 1285);

-- Selecionando dados (tudo)
SELECT * FROM cidades;

-- Selecionando dados (colunas específicas)
SELECT nome, populacao FROM cidades;

-- Operações matemáticas (+, -, *, /, %, ^, |/ -> raíz quadrada, @ -> valor absoluto)
SELECT nome, populacao / area FROM cidades;

-- Criando um alias para uma coluna
SELECT nome, populacao / area AS densidade FROM cidades;

-- Selecionando dados (comparação) (>, <, >=, <=, =, <> ou !=, BETWEEN, IN (está na lista), NOT IN (não está na lista), LIKE, IS NULL)
SELECT densidade FROM cidades WHERE densidade > 4000;

-- Selecionando dados (comparação) (AND, OR, NOT)
SELECT nome, populacao FROM cidades WHERE populacao > 5000000 AND populacao < 10000000;

-- Operações matemáticas, lógicas e strings
SELECT nome, pais, populacao / 1000000 AS populacao_milhoes, UPPER(pais) AS pais_maiusculo FROM cidades;

-- Alterando dados (UPDATE)
UPDATE cidades SET populacao = 11000000 WHERE nome = 'São Paulo';

-- Deletando dados (DELETE)
DELETE FROM cidades WHERE nome = 'São Paulo';

-- Deletando banco (DROP)
DROP TABLE cidades;

-- Adicionando Primary Key (PK)
CREATE TABLE cidades(
  id INTEGER,
  nome TEXT,
  pais TEXT,
  populacao INTEGER,
  area INTEGER,
  PRIMARY KEY (id) -- PK
)

-- Adicionando Foreign Key (FK)
CREATE TABLE estados(
  id INTEGER,
  nome TEXT,
  populacao INTEGER,
  area INTEGER,
  cidades_id REFERENCES cidades(id), -- FK (referenciando a PK da tabela cidades)
)

-- JOIN Simples
SELECT
  cidades.nome, estados.nome
FROM
  estados
  JOIN cidades ON cidades.id = estados.cidades_id;