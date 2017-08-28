CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  details VARCHAR(255) NULL UNIQUE,
  priority INTEGER NOT NULL,
  createdAt TIMESTAMP NOT NULL,
  completedAt TIMESTAMP NULL
);


////////////////



```
id |   title    |         details          | priority |         createdat          | completedat
----+------------+--------------------------+----------+----------------------------+-------------
 1 | first item | give Anthony a high five |        5 | 2017-08-28 15:32:45.205717 |
(1 row)

```
///////////////////////////////////////////////////////


```

id |   title    |            details            | priority |         createdat          | completedat
----+------------+-------------------------------+----------+----------------------------+-------------
 1 | first item | give Anthony a high five      |        5 | 2017-08-28 15:32:45.205717 |
 2 | postgresql | learn this crap               |        5 | 2017-08-28 15:38:15.185521 |
 3 | some title | here is something i need todo |        2 | 2017-08-28 15:38:15.187581 |
(3 rows)
```


//////////////////////
```
select title from todos where completedAt is null;
   title    
------------
 first item
 postgresql
 some title
(3 rows)

//////////////////////////

select details from todos where priority <= 3;
           details            
-------------------------------
here is something i need todo
(1 row)
```

/////////////////////////////////



todolist=# select * from todos;
 id |   title    |            details            | priority |         createdat          | completedat
----+------------+-------------------------------+----------+----------------------------+-------------
  1 | first item | give Anthony a high five      |        5 | 2017-08-28 15:32:45.205717 |
  2 | postgresql | learn this crap               |        5 | 2017-08-28 15:38:15.185521 |
  3 | some title | here is something i need todo |        2 | 2017-08-28 15:38:15.187581 |
(3 rows)

todolist=# update todos set completedat = current_timestamp where id = 1;
UPDATE 1
todolist=# select * from todos;
 id |   title    |            details            | priority |         createdat          |        completedat         
----+------------+-------------------------------+----------+----------------------------+----------------------------
  2 | postgresql | learn this crap               |        5 | 2017-08-28 15:38:15.185521 |
  3 | some title | here is something i need todo |        2 | 2017-08-28 15:38:15.187581 |
  1 | first item | give Anthony a high five      |        5 | 2017-08-28 15:32:45.205717 | 2017-08-28 15:47:39.090961
(3 rows)

todolist=#


////////////////////////////////


todolist=# select * from todos;
 id |   title    |            details            | priority |         createdat          |        completedat         
----+------------+-------------------------------+----------+----------------------------+----------------------------
  2 | postgresql | learn this crap               |        5 | 2017-08-28 15:38:15.185521 |
  3 | some title | here is something i need todo |        2 | 2017-08-28 15:38:15.187581 |
  1 | first item | give Anthony a high five      |        5 | 2017-08-28 15:32:45.205717 | 2017-08-28 15:47:39.090961
(3 rows)

todolist=# delete from todos where completedat is not null;
DELETE 1
todolist=# select * from todos;
 id |   title    |            details            | priority |         createdat          | completedat
----+------------+-------------------------------+----------+----------------------------+-------------
  2 | postgresql | learn this crap               |        5 | 2017-08-28 15:38:15.185521 |
  3 | some title | here is something i need todo |        2 | 2017-08-28 15:38:15.187581 |
(2 rows)

todolist=#
