-- Goal: The first query should delete all phones that were created by Samsung

DELETE FROM
  telefones
WHERE
  fabricante = 'Samsung'

-- Goal: The second query should select all rows and columns of the phones table

SELECT
  *
FROM
  telefones