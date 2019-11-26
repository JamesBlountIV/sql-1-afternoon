CREATE TABLE person (
 	id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  age INT,                      /*  1  */
  height INT,
  city VARCHAR(100),
  favorite_color VARCHAR(50)
);

INSERT INTO person
(name,age,height,city,favorite_color)
VALUES
('Leti',25,173,'Asuncion','Red'),
('Juan',9,120,'Asuncion','Black'),          /*  2  */     
('James',24,184,'Morro Bay','Grey'),    
('Jessica',24,182,'Los Osos','Grey'),
('Kindred',9999,190,'Void','Dark');

SELECT * FROM person             /*  3  */
ORDER BY height DESC; 

SELECT * FROM person             /*  4  */
ORDER BY height ASC;

SELECT * FROM person             /*  5  */
ORDER BY age DESC;

SELECT * FROM person             /*  6  */
WHERE age > 20;

SELECT * FROM person             /*  7  */
WHERE age = 18;

SELECT * FROM person             /*  8  */
WHERE age < 20 OR age > 30;

SELECT * FROM person             /*  9  */
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'Red';   /*  10  */

SELECT * FROM person
WHERE favorite_color <> 'Red' AND favorite_color <> 'Blue';   /*  11  */

SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';  /*  12  */

SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');          /*  13  */

SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Purple');                 /*  14  */




CREATE TABLE orders (
	order_id SERIAL PRIMARY KEY,         /*  1  */
  person_id INT,                        
  product_name VARCHAR(50),
  product_price INT,
  quantity INT
);

INSERT INTO orders 
(person_id, product_name, product_price, quantity)
VALUES
(1,'empanada', 1, 4),
(2, 'milanesa', 1, 2),
(3, 'chipa', 1, 3),                        /*  2  */
(4, 'pizza', 6, 1),
(5, 'Asado', 5, 2);

SELECT SUM(quantity)                       /*  3  */
FROM orders;

SELECT SUM(product_price * quantity)       /*  4  */
FROM orders;

SELECT SUM(product_price * quantity)       /*  5  */
FROM orders
WHERE person_id = 5;




INSERT INTO artist
(name)
VALUES                                     /*  1  */
('Flume'),                                  
('Odesza'), 
('Atmosphere');

SELECT * FROM artist                       /*  2  */
ORDER BY name 
DESC LIMIT 10;

SELECT * FROM artist                       /*  3  */
ORDER BY name 
ASC LIMIT 5;

SELECT * FROM artist                       /*  4  */
WHERE name LIKE ('Black%');

SELECT * FROM artist                       /*  5  */
WHERE name LIKE ('%Black%');



SELECT first_name, last_name FROM employee /*  1  */
WHERE city = 'Calgary';

SELECT MAX(birth_date) FROM employee;       /*  2  */

SELECT MIN(birth_date) FROM employee;       /*  3  */

SELECT * FROM employee
WHERE reports_to = 2;                       /*  4  */

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';                  /*  5  */



SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';              /*  1  */

SELECT MAX(total) FROM invoice;             /*  2  */

SELECT MIN(total) FROM invoice;             /*  3  */

SELECT * FROM invoice
WHERE total > 5;                            /*  4  */

SELECT COUNT(*) FROM invoice
WHERE total < 5;                            /*  5  */

SELECT COUNT(*) FROM invoice
WHERE billing_state in ('CA', 'TX', 'AZ');  /*  6  */

SELECT AVG(total) FROM invoice;             /*  7  */

SELECT SUM(total) FROM invoice;             /*  8  */