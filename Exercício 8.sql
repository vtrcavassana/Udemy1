CREATE TABLE boats (
    id INTEGER,
    nome TEXT,
    PRIMARY KEY(id)
)

INSERT INTO
  boats (nome)
VALUES
  ('Rogue Wave'),
  ('Harbor Master')

CREATE TABLE crew_members (
    id INTEGER,
    primeiroNome TEXT,
    PRIMARY KEY(id),
    boats_id REFERENCES boats(id)
)

SELECT
  primeiroNome,
  nome
FROM
  crew_members
  JOIN boats ON boats.id = crew_members.boats_id