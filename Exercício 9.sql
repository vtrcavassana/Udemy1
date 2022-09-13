-- criar tabela 'autores' com as colunas 'id' (serial, primary key), 'nome' (text)
CREATE TABLE autores (
    id SERIAL PRIMARY KEY,
    nome TEXT
);

-- criar tabela 'livros' com as colunas 'id' (serial, primary key), 'titulo' (text), 'autores_id' (integer, references autores(id)), com delete on cascade
CREATE TABLE livros (
    id SERIAL PRIMARY KEY,
    titulo TEXT,
    autores_id INTEGER REFERENCES autores(id) ON DELETE CASCADE
);

-- inserir em 'autores' os valores ('JK Rowling), ('Stephen King'), ('Agatha Christie'), ('Dr. Seuss')
INSERT INTO
  autores (nome)
VALUES
  ('JK Rowling'),
  ('Stephen King'),
  ('Agatha Christie'),
  ('Dr. Seuss');

-- inserir em 'livros' os valores ('It', 2), ('Chamber of Secrets, 1), ('Cat and the Hat', 4), ('Affair at Styles', 3)
INSERT INTO
  livros (titulo, autores_id)
VALUES
  ('It', 2),
  ('Chamber of Secrets', 1),
  ('Cat and the Hat', 4),
  ('Affair at Styles', 3);

-- pra cada livro, mostrar o nome do autor e o título do livro
SELECT
  nome,
  titulo
FROM
    livros
    JOIN autores ON autores.id = livros.autores_id;