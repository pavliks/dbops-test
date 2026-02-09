WITH u AS (
  INSERT INTO users (name)
  VALUES ('John'), ('Smith')
  RETURNING id
)
INSERT INTO posts (text, owner_id)
SELECT CONCAT('My ', u.id, ' post'), u.id
FROM u;
