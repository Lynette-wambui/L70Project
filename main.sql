-- Create the COMPANY table if it does not exist
-- NOT NULL is used for NAME to ensure every COMPANY record has a name
CREATE TABLE IF NOT EXISTS COMPANY (
  ROLL_NO TEXT PRIMARY KEY,
  NAME TEXT NOT NULL,
  ADDRESS TEXT,
  PHONE TEXT,
  GRADE INTEGER
);

-- Clear old data (optional, for reruns)
DELETE FROM COMPANY;

-- Insert sample data into the COMPANY table
INSERT INTO COMPANY (ROLL_NO, NAME, ADDRESS, PHONE, GRADE) VALUES
  ('1', 'RAM', 'NEW YORK', '11111', 480),
  ('2', 'RAMESH', 'GURGAON', '22222', 18),
  ('3', 'SUJIT', 'ROHTAK', '33333', 20),
  ('4', 'SURESH', 'DELHI', '44444', 180),
  ('5', 'AMAN', 'ROHTAK', '55555', 20),
  ('6', 'HARSH', 'NEW YORK', '66666', 18);

-- ✅ Query 1: Select all records from the COMPANY table
SELECT * FROM COMPANY;

-- ✅ Query 2: Query COMPANY 
SELECT * FROM COMPANY WHERE GRADE >= 100 AND ADDRESS = 'NEW YORK';

-- ✅ Query 3: Query COMPANY 
SELECT * FROM COMPANY WHERE ADDRESS = 'NEW YORK';












-- Create the STUDENT table if it does not exist
-- NOT NULL is used for NAME to ensure every student record has a name
CREATE TABLE IF NOT EXISTS STUDENT (
  ROLL_NO TEXT PRIMARY KEY,
  NAME TEXT NOT NULL,
  ADDRESS TEXT,
  PHONE TEXT,
  AGE INTEGER
);

-- Clear old data (optional, for reruns)
DELETE FROM STUDENT;

-- Insert sample data into the STUDENT table
INSERT INTO STUDENT (ROLL_NO, NAME, ADDRESS, PHONE, AGE) VALUES
  ('1', 'RAM', 'DELHI', '11111', 18),
  ('2', 'RAMESH', 'GURGAON', '22222', 18),
  ('3', 'SUJIT', 'ROHTAK', '33333', 20),
  ('4', 'SURESH', 'DELHI', '44444', 18),
  ('5', 'AMAN', 'ROHTAK', '55555', 20),
  ('6', 'HARSH', 'GURGAON', '66666', 18);

-- ✅ Query 1: Select all records from the STUDENT table
SELECT * FROM STUDENT;

-- ✅ Query 2: Query students who are 18 years old and live in Delhi
SELECT * FROM STUDENT WHERE AGE = 18 AND ADDRESS = 'DELHI';

-- ✅ Query 3: Query students who are 18 years old and named RAM
SELECT * FROM STUDENT WHERE AGE = 18 AND NAME = 'RAM';

-- ✅ Query 4: Query students named RAM or SUJIT
SELECT * FROM STUDENT WHERE NAME = 'RAM' OR NAME = 'SUJIT';

-- ✅ Query 5: Query students named RAM or aged 20
SELECT * FROM STUDENT WHERE NAME = 'RAM' OR AGE = 20;

-- ✅ Query 6: Query students aged 18 and named RAM or RAMESH
SELECT * FROM STUDENT WHERE AGE = 18 AND (NAME = 'RAM' OR NAME = 'RAMESH');







CREATE TABLE IF NOT EXISTS PRODUCT(
  PRO_ID INTEGER PRIMARY KEY,
  PRO_NAME TEXT NOT NULL,
  PRO_PRICE REAL NOT NULL,
  PRO_COM INTEGER
);

INSERT INTO PRODUCT(PRO_ID,PRO_NAME,PRO_PRICE,PRO_COM)
VALUES
  (101,"MOTHER BOARD",3200,15),
  (102,"KEY BOARD",450,16),
  (103,"ZIP DRIVE",250,14),
  (104,"SPEAKER",550,16),
  (105,"MONITOR",5000,11),
  (106,"DVD DRIVE",900,12),
  (107,"CD DRIVE",800,12),
  (108,"PRINTER",2600,13),
  (109,"REFILL CARTRIDGE",350,13),
  (110,"MOUSE",250,12);

-- Cheapest product
SELECT PRO_NAME, PRO_PRICE
FROM PRODUCT
WHERE PRO_PRICE = (SELECT MIN(PRO_PRICE) FROM PRODUCT);

-- Most expensive product
SELECT PRO_NAME, PRO_PRICE
FROM PRODUCT
WHERE PRO_PRICE = (SELECT MAX(PRO_PRICE) FROM PRODUCT);