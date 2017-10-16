DROP TABLE IF EXISTS concerts;
DROP TABLE IF EXISTS attendees;

CREATE TABLE IF EXISTS concerts (
  id serial PRIMARY KEY,
  name varchar(255) NOT NULL DEFAULT '',
  price NUMERIC(8,2) NOT NULL DEFAULT 1.00,
  started_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
  ended_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW();
)

CREATE TABLE IF EXISTS attendees (
  id serial PRIMARY KEY,
  concert_id integer NOT NULL references concerts(id) ON DELETE CASCADE,
  name varchar(255) NOT NULL DEFAULT '',
  age integer NOT NULL DEFAULT 0;
)
