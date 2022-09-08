-- Goal: The first query should update the units_sold of the phone with name N8 to 8543

UPDATE
  telefones
SET
  unidadesVendidas = 8543
WHERE
  nome = 'N8'

-- Goal: The second query should select all rows and columns of the phones table

SELECT
  *
FROM
  telefones