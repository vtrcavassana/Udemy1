-- Exercício: Mostrar cada autor e a quantidade de livros que ele escreveu

-- Criando a tabela de autores
CREATE TABLE autores (id SERIAL PRIMARY KEY, nome TEXT);

-- Criando a tabela de livros
CREATE TABLE livros(
  id SERIAL PRIMARY KEY,
  titulo TEXT,
  autores_id SERIAL REFERENCES autores(id) ON DELETE CASCADE
);

-- Inserindo dados na tabela de autores
INSERT INTO
  autores(nome)
VALUES
  ('JK Rowling'),
  ('Stephen King'),
  ('Agatha Christie'),
  ('Dr Seuss');

-- Inserindo dados na tabela de livros
INSERT INTO
  livros (titulo, autores_id)
VALUES
  ('Chamber of Secrets', 1),
  ('Prisoner of Azkaban', 1),
  ('The Dark Tower', 2),
  ('Murder At the Links', 3),
  ('Affair at Styles', 3),
  ('Cat in the Hat', 4);

-- Mostrando a quantidade de livros que cada autor tem, pelo group by e aggregation
SELECT
  autores_id,
  COUNT(*)
FROM
  livros
GROUP BY
  autores_id