-- tabela 'autores' com as colunas 'id' (serial, primary key), 'nome' (text)
CREATE TABLE autores (
    id SERIAL PRIMARY KEY,
    nome TEXT
);

-- tabela 'livros' com as colunas 'id' (serial, primary key), 'titulo' (text), 'autores_id' (integer, references autores(id)), com delete on cascade
CREATE TABLE livros (
    id SERIAL PRIMARY KEY,
    titulo TEXT,
    autores_id INTEGER REFERENCES autores(id) ON DELETE CASCADE
);

-- inserir em 'autores' os valores ('Stephen King'), ('Agatha Christie'), ('JK Rowling')
INSERT INTO
  autores (nome)
VALUES
  ('Stephen King'),
  ('Agatha Christie'),
  ('JK Rowling');

-- inserir em 'livros' os valores ('The Dark Tower', 1), ('Affair At Styles', 2), ('Murder at the Links', 2)
INSERT INTO
  livros (titulo, autores_id)
VALUES
  ('The Dark Tower', 1),
  ('Affair At Styles', 2),
  ('Murder at the Links', 2);

-- fazer full join entre 'autores' e 'livros'
SELECT
  nome,
  titulo
FROM
  autores FULL
  JOIN livros ON livros.autores_id = autores.id

-- fazer right join entre 'livros' e 'autores'
SELECT
  nome,
  titulo
FROM
  livros
  RIGHT JOIN autores ON livros.autores_id = autores.id;

-- fazer left join entre 'autores' e 'livros'
SELECT
  nome,
  titulo
FROM
  autores
  LEFT JOIN livros ON livros.autores_id = autores.id;
