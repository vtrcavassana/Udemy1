-- The SQL you see below creates a new table called 'movies' and inserts two rows into it.
-- Goal: Write a SELECT statement to retrieve both rows inserted into the movies table.  Select both the 'title' column and the 'box_office' column.

CREATE TABLE filmes (
    titulo text,
    bilheteria integer
);

INSERT INTO filmes (titulo, bilheteria)
VALUES ('O Poderoso Chefão', 134966411),
       ('O Poderoso Chefão II', 57300000);

SELECT titulo, bilheteria
FROM filmes;