show databases;
CREATE database if not exists Laboratory;
USE Laboratory;

CREATE TABLE Invoice (
id INT auto_increment,
letter char not null,
number INT(5) not null,
date date not null,
amount INT not null,
primary key(id)
);

CREATE TABLE Article (
id INT auto_increment,
name VARCHAR(50) not null,
price double not null default '0',
stock INT not null,
primary key(id)
);

CREATE TABLE Client (
id INT auto_increment,
name VARCHAR(50) not null,
last_name VARCHAR(50) not null,
cuit char(16) not null,
address VARCHAR(100) not null,
comments longtext,
primary key(id)
);

show tables;

insert into Invoice (letter, number, date, amount)
values 
('B',lpad(1, 5, 0), '2011-11-18', '500'),
('B',lpad(2, 5, 0), '2012-09-25', '200'),
('B',lpad(3, 5, 0), '2011-01-01', '3020'),
('B',lpad(4, 5, 0), '2016-11-18', '1200'),
('B',lpad(5, 5, 0), curdate(), '3300')
;

insert into Article (name, price, stock)
values 
('Cinta','110', '50'),
('Espatula','20', '22'),
('Fratas','35', '28'),
('Regla','20', '78'),
('Tenaza','12', '13')
;

insert into Client (name, last_name, cuit, address)
values 
('Mario','Perez', '20-14987008-8', 'Aguero 635'),
('Jorge','Rios', '20-37562854-5', 'Nazca 1532'),
('Valeria','Lagos', '20-25487418-8', 'Chipre 5'),
('Natalia','Peña', '20-25982665-2', 'Jufre 3651'),
('Juan','Khorn', '20-23587171-9', 'Belgrano 6525')
;

select * from Article where price > '100';

select * from Article where price > '20' and price < '40';

select * from Article where price between '40' and '60';

select * from Article where price = '20' and stock > '30';

select * from Article where price = '12';
select * from Article where price = '20';
select * from Article where price = '30';

select * from Article where price IN (12, 20, 30);

select * from Article where price NOT IN (12, 20, 30);

select * from Article order by price DESC;

select *, price*21/100 + price AS 'Precio con iva' FROM Article;

select *, 3 AS 'Cantidad de cuotas', price/3 *5/100 + price/3 AS 'Valor de cuota' FROM Article;


