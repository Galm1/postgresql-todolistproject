CREATED A TABLE:
//////////////////////////////////////////////////////////
todolist=# CREATE TABLE todolist (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  details VARCHAR(255) NULL UNIQUE,
  priority INTEGER NOT NULL,
  createdAt TIMESTAMP NOT NULL,
  completedAt TIMESTAMP NOT NULL
);
CREATE TABLE
todolist=# \d
                List of relations
 Schema |      Name       |   Type   |   Owner   
--------+-----------------+----------+-----------
 public | todolist        | table    | eligarcia
 public | todolist_id_seq | sequence | eligarcia
(2 rows)
//////////////////////////////////////////////////////////
