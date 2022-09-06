-- Goal: Write a query that will select the name and manufacturer for all phones created by Apple or Samsung

-- Modo 1
SELECT
  nome,
  fabricante
FROM
  telefones
WHERE
  fabricante in ('Apple', 'Samsung')

-- Modo 2
SELECT
  nome,
  fabricante
FROM
    telefones
WHERE
fabricante = 'Apple' OR fabricante = 'Samsung'

-- Modo 3
SELECT
  nome,
  fabricante
FROM
  telefones
WHERE
  fabricante NOT IN ('Nokia', 'Motorola')

-- Modo 4
SELECT
  nome,
  fabricante
FROM
    telefones
WHERE
fabricante <> 'Nokia' AND fabricante <> 'Motorola'