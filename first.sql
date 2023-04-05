CREATE TABLE contacts (
  name TEXT NOT NULL,
  age INTEGER NOT NULL,
  email TEXT NOT NULL UNIQUE
);

ALTER TABLE contacts RENAME TO new_contacts;

CREATE TABLE users (
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  age INTEGER NOT NULL,
  country TEXT NOT NULL,
  phone TEXT NOT NULL,
  balance INTEGER NOT NULL
);


SELECT first_name,age FROM users ORDER BY first_name ASC,age DESC;

SElECT first_name,age,balance FROM users ORDER BY age DESC, balance ASC;
SElECT * FROM users;
SElECT first_name,age FROM users ORDER BY age ASC;
SElECT first_name,age FROM users ORDER BY age DESC;
SElECT first_name,age,balance FROM users 
ORDER BY age, balance DESC;
SElECT DISTINCT country FROM users;
SElECT DISTINCT first_name FROM users;


SElECT DISTINCT country FROM users ORDER BY country;
SElECT DISTINCT first_name,country FROM users;
SElECT DISTINCT first_name,country FROM users ORDER BY country;


SElECT first_name,age,balance FROM users
WHERE age >= '30';

SElECT first_name,age,balance FROM users
WHERE age >= '30' AND balance > 500000;


SElECT first_name, country FROM users
WHERE country LIKE '충%';

SElECT first_name,last_name FROM users
WHERE first_name LIKE '%호%';

SElECT first_name FROM users
WHERE first_name LIKE '%준';

SElECT first_name, phone FROM users
WHERE phone LIKE '02%';


SElECT first_name, age FROM users
WHERE age LIKE '2_';


SElECT first_name, phone FROM users
WHERE phone LIKE '%-51__-%';

SElECT first_name, country FROM users
WHERE country='경기도' or country = '강원도';

SElECT first_name, country FROM users
WHERE country NOT IN ('경기도','강원도');


SElECT first_name,age FROM users
WHERE age BETWEEN 20 AND 30;

SElECT first_name,age FROM users
WHERE age NOT BETWEEN 20 AND 30;

SElECT rowid,first_name FROM users LIMIT 10;

SElECT first_name,balance FROM users 
ORDER BY balance DESC LIMIT 10;

SElECT first_name,age FROM users 
ORDER BY age ASC LIMIT 5;

SElECT rowid,first_name FROM users
LIMIT 10 OFFSET 10;


SELECT first_name,age,balance FROM users ORDER BY age, balance DESC;