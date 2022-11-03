CREATE TABLE phones (
  id SERIAL PRIMARY KEY,
  nome TEXT,
  fabricante TEXT,
  preco INTEGER,
  unidadesVendidas INTEGER
)

INSERT INTO
  phones (nome, fabricante, preco, unidadesVendidas)
VALUES
  ('N1280', 'Nokia', 199, 1925),
  ('Iphone 4', 'Apple', 399, 9436),
  ('Galaxy S', 'Samsung', 299, 2359),
  ('S5620 Monte', 'Samsung', 250, 2385),
  ('N8', 'Nokia', 150, 7543),
  ('Droid', 'Motorola', 150, 8395),
  ('Wave S8500', 'Samsung', 175, 9259)

-- Criar uma query que mostre o nome e preço de cada celular. Além disso, mostrar a proporção do preço de cada celular em relação ao preço máximo de todos os celulares e o renomeie para 'price_ratio'
SELECT
  nome,
  preco,
  preco / (SELECT MAX(preco) FROM phones) AS price_ratio
FROM
    phones