-- Goal: Write a query that will print the name and total_revenue of all phones with a total_revenue greater than 1,000,000

SELECT
  nome,
  preco * unidadesVendidas AS revenda
FROM
  telefones
WHERE
  preco * unidadesVendidas > 1000000