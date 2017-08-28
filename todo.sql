CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  details VARCHAR(255) NULL UNIQUE,
  priority INTEGER NOT NULL,
  createdAt TIMESTAMP NOT NULL,
  completedAt TIMESTAMP NULL
);

INSERT INTO todos (title, details, priority, createdAt) VALUES ('first item', 'give Anthony a high five', 5, current_timestamp);

select title from todos where completedAt is null;

select details from todos where priority <= 3;


update todos set completedat = current_timestamp where id = 1;

  delete from todos where completedat is not null;

    
