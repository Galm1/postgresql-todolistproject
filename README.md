CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  details VARCHAR(255) NULL UNIQUE,
  priority INTEGER NOT NULL,
  createdAt TIMESTAMP NOT NULL,
  completedAt TIMESTAMP NULL
);


////////////////




id |   title    |         details          | priority |         createdat          | completedat
----+------------+--------------------------+----------+----------------------------+-------------
 1 | first item | give Anthony a high five |        5 | 2017-08-28 15:32:45.205717 |
(1 row)


///////////////////////////////////////////////////////




id |   title    |            details            | priority |         createdat          | completedat
----+------------+-------------------------------+----------+----------------------------+-------------
 1 | first item | give Anthony a high five      |        5 | 2017-08-28 15:32:45.205717 |
 2 | postgresql | learn this crap               |        5 | 2017-08-28 15:38:15.185521 |
 3 | some title | here is something i need todo |        2 | 2017-08-28 15:38:15.187581 |
(3 rows)



//////////////////////
