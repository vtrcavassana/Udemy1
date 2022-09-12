-- criar tabela cidades (id, nome, pais, populacao, area, PRIMARY KEY (id))
CREATE TABLE cidades (
    id INTEGER,
    nome TEXT,
    pais TEXT,
    populacao INTEGER,
    area INTEGER,
    PRIMARY KEY (id)
);

-- tabela estados (id, nome, sigla, cidades_id, PRIMARY KEY (id), FOREIGN KEY (cidades_id) REFERENCES cidades(id))
CREATE TABLE estados (
    id INTEGER,
    nome TEXT,
    sigla TEXT,
    cidades_id INTEGER,
    PRIMARY KEY (id),
    FOREIGN KEY (cidades_id) REFERENCES cidades(id)
);

-- Inserir dados na tabela 5 cidades
INSERT INTO
  cidades (nome, pais, populacao, area)
VALUES
  ('São Paulo', 'Brasil', 12000000, 1521),
  ('Buenos Aires', 'Argentina', 3010000, 475),
  ('Cidade do México', 'México', 8850000, 1485),
  ('Santiago', 'Chile', 5700000, 1769),
  ('Lima', 'Peru', 8000000, 1285);

-- Inserir dados na tabela 5 estados
INSERT INTO
  estados (nome, sigla, cidades_id)
VALUES
  ('São Paulo', 'SP', 1),
  ('Buenos Aires', 'BA', 2),
  ('Cidade do México', 'CDM', 3),
  ('Santiago', 'ST', 4),
  ('Lima', 'LM', 5);

-- Deletando em Cascata tabela estados (CASCADE)
CREATE TABLE estados (
    id INTEGER,
    nome TEXT,
    sigla TEXT,
    cidades_id INTEGER,
    PRIMARY KEY (id),
    -- Quando deletar um estado, deleta a cidade
    FOREIGN KEY (cidades_id) REFERENCES cidades(id) ON DELETE CASCADE
);

-- Deletando com NULL tabela estados (SET NULL)
CREATE TABLE estados (
    id INTEGER,
    nome TEXT,
    sigla TEXT,
    cidades_id INTEGER,
    PRIMARY KEY (id),
    -- Quando deletar um estado, seta a cidade_id como NULL
    FOREIGN KEY (cidades_id) REFERENCES cidades(id) ON DELETE SET NULL
);