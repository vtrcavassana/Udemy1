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

-- Mostrar os fabricantes que possuem celular por menos de 170 e os fabricantes que possuem mais de 2 celulares, utilizando union
(SELECT
  fabricante
FROM
    phones
    WHERE
    preco < 170)
UNION
(SELECT
  fabricante
FROM
    phones
    GROUP BY
    fabricante
    HAVING
    COUNT(*) > 2 -- Levando em conta o fabricante, pelo 'GROUP BY fabricante', e não o celular, pelo 'COUNT(*)'
    );