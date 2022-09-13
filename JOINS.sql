-- JOIN (= INNER JOIN)
- Retorna apenas os registros que se correspondem em ambas as tabelas
- Caso não haja correspondência, o registro não é retornado (não é mostrado)
- Se a tabela do FROM não tiver correspondência com a tabela do JOIN, o registro não é retornado

-- LEFT JOIN
- Retorna todos os registros da tabela do FROM, mesmo que não haja correspondência com a tabela do JOIN
- Se a tabela do FROM não tiver correspondência com a tabela do JOIN, o registro é retornado, porém com os campos da tabela do JOIN como NULL

-- RIGHT JOIN
- Retorna todos os registros da tabela do JOIN, mesmo que não haja correspondência com a tabela do FROM
- Se a tabela do JOIN não tiver correspondência com a tabela do FROM, o registro é retornado, porém com os campos da tabela do FROM como NULL

-- FULL JOIN
- Retorna todos os registros da tabela do FROM e da tabela do JOIN, mesmo que não haja correspondência entre elas
- Se a tabela do FROM não tiver correspondência com a tabela do JOIN, o registro é retornado, porém com os campos da tabela do JOIN como NULL
- Se a tabela do JOIN não tiver correspondência com a tabela do FROM, o registro é retornado, porém com os campos da tabela do FROM como NULL