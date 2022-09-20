-- tabela 'autores' com as colunas 'id' (serial, primary key), 'nome' (text)
CREATE TABLE autores (
    id SERIAL PRIMARY KEY,
    nome TEXT
);

-- tabela 'livros' com as colunas 'id' (serial, primary key), 'titulo' (text), 'autores_id' (integer, references autores(id)), com delete on cascade
CREATE TABLE livros (
    id SERIAL PRIMARY KEY,
    titulo TEXT,
    autores_id SERIAL REFERENCES autores(id) ON DELETE CASCADE
);

-- tabela 'reviews' com as colunas 'id' (serial, primary key), 'livros_id' (serial, references livros(id)), reviewer_id (serial, references reviewers(id)), com delete on cascade
CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    rating SERIAL,
    reviewer_id SERIAL REFERENCES autores(id) ON DELETE CASCADE,
    livros_id SERIAL REFERENCES livros(id) ON DELETE CASCADE
);

-- inserir em 'autores' os valores ('Stephen King'), ('Agatha Christie'), ('JK Rowling')
INSERT INTO
  autores (nome)
VALUES
  ('Stephen King'),
  ('Agatha Christie'),
  ('JK Rowling');

-- inserir em 'livros' os valores ('The Dark Tower', 1), ('Affair At Styles', 2), ('Chamber of Secrets', 3)
INSERT INTO
  livros (titulo, autores_id)
VALUES
  ('The Dark Tower', 1),
  ('Affair At Styles', 2),
  ('Chamber of Secrets', 3);

-- inserir em 'reviews' os valores (3, 1, 2), (4, 2, 1), (5, 3, 3)
INSERT INTO
  reviews (rating, reviewer_id, livros_id)
VALUES
  (3, 1, 2),
  (4, 2, 1),
  (5, 3, 3)

-- mostrar o titulo, nome e rating do autor que deu rating para próprio livro
SELECT
  titulo,
  nome,
  rating
FROM
  livros
  JOIN autores ON livros.autores_id = autores.id
  JOIN reviews ON livros.id = reviews.livros_id
WHERE
  reviews.reviewer_id = reviews.livros_id