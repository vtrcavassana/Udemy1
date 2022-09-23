CREATE TABLE autores(
  id SERIAL PRIMARY KEY,
  nome TEXT
);

CREATE TABLE livros(
  id SERIAL PRIMARY KEY,
  titulo TEXT,
  autores_id SERIAL REFERENCES autores(id) ON DELETE CASCADE
);

INSERT INTO
  autores(nome)
VALUES
    ('JK Rowling'),
    ('Stephen King'),
    ('Agatha Christie'),
    ('Dr Seuss');

INSERT INTO
    livros (titulo, autores_id)
VALUES
    ('Chamber of Secrets', 1),
    ('Prisoner of Azkaban', 1),
    ('The Dark Tower', 2),
    ('Murder At the Links', 3),
    ('Affair at Styles', 3),
    ('Cat in the Hat', 4);

-- Mostrar o livro de cada autor, utilizando group by, agregação e join
SELECT
  nome,
  COUNT(*)
FROM
  livros
  JOIN autores ON autores.id = livros.autores_id
GROUP BY
  nome