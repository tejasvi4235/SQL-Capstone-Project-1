CREATE TABLE IF NOT EXISTS Restaurant(
      name TEXT,
      neighbourhood TEXT,
      cuisine TEXT,
      review REAL,
      price TEXT,
      health TEXT
);
INSERT INTO Restaurant(name,neighbourhood,cuisine,review,price,health)
VALUES
      ('Peter', 'Brooklyn', 'Steak', 4.4, '$$$$', 'A'),
      ('Jongro', 'Midtown', 'Korean', 3.5, '$$', 'A'),
      ('Pocha', 'Midtown', 'Pizza', 4.0, '$$$', 'B'),
      ('Lighthouse', 'Queens', 'Chinese', 3.9, '$', 'A'),
      ('Minca', 'Downtown', 'American', 4.6, '$$$', ''),
      ('Marea', 'Chinatown', 'Chinese', 3.0, '$$', ''),
      ('Dirty Candy', 'Uptown', 'Italian', 4.9, '$$$$', 'B'),
      ('Di Fara Pizza', 'Brooklyn', 'Pizza', 3.8, '$$', 'A'),
      ('Golden Unicorn', 'Uptown', 'Italian', 3.8, '$$', 'A');
SELECT DISTINCT neighbourhood
FROM Restaurant;

SELECT DISTINCT cuisine
FROM Restaurant;

SELECT * from Restaurant
    WHERE cuisine = "Chinese";

SELECT * from Restaurant
    WHERE review > 4;

SELECT * from Restaurant
    WHERE cuisine = "Italian" and price in ('$$','$$$$');

SELECT * from Restaurant
      WHERE name like "%Candy";

SELECT * from Restaurant
     WHERE neighbourhood in ('Midtown','Downtown','Chinatown');

SELECT * from Restaurant
WHERE health = '' or health is NULL;

SELECT * from Restaurant
ORDER BY review DESC
LIMIT 4;

SELECT * from Restaurant
ORDER BY review asc
LIMIT 4;