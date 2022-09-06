-- Goal: Write a query that will print the name and price of all phones that sold greater than 5000 units.

CREATE TABLE telefones(
  nome TEXT,
  fabricante TEXT,
  preco INTEGER,
  unidadesVendidas INTEGER
)

INSERT INTO
  telefones (nome, fabricante, preco, unidadesVendidas)
VALUES
  ('N1280', 'Nokia', 199, 1925),
  ('iPhone 4', 'Apple', 399, 9436),
  ('Galaxy S', 'Samsung', 299, 2359),
  ('S5620 Monte', 'Samsung', 250, 2385),
  ('N8', 'Nokia', 150, 7543),
  ('Droid', 'Motorola', 150, 8395),
  ('Wave S8500', 'Samsung', 175, 9259)

SELECT
  nome,
  preco,
  unidadesVendidas
FROM
  telefones
WHERE
  unidadesVendidas > 5000