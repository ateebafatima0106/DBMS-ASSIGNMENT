
create database library_db;


create table books(
book_id SERIAL PRIMARY KEY,
title VARCHAR(100),
author VARCHAR(100),
year_published INT,
isAvailable BOOLEAN,
price NUMERIC(8,2),
publication VARCHAR(100)
);


insert into books(title,author,year_published,isAvailable,price,publication)
values ('The Great Book', 'John Smith', 1998, TRUE, 450.00, 'ABC Publishers'),
('1984', 'George Orwell', 1949, FALSE, 320.00, 'XYZ'),
('Brave New World', 'Aldous Huxley', 1932, TRUE, 550.00, 'XYZ'),
('The Silent Patient', 'Alex Michaelides', 2019, TRUE, 680.00, 'Celadon Books'),
('Sapiens', 'Yuval Noah Harari', 2011, FALSE, 750.00, 'Harvill Secker'),
('Atomic Habits', 'James Clear', 2018, TRUE, 590.00, 'Penguin'),
('Zero to One', 'Peter Thiel', 2014, TRUE, 410.00, 'Crown Business'),
('Deep Work', 'Cal Newport', 2016, TRUE, 499.99, 'Grand Central'),
('The Alchemist', 'Paulo Coelho', 1988, FALSE, 299.00, 'HarperOne'),
('Ikigai', 'Francesc Miralles', 2016, TRUE, 320.00, 'Penguin'),
('Rich Dad Poor Dad', 'Robert Kiyosaki', 2000, FALSE, 375.00, 'Warner Books'),
('The Psychology of Money', 'Morgan Housel', 2020, TRUE, 650.00, 'XYZ'),
('Educated', 'Tara Westover', 2018, TRUE, 720.00, 'Random House'),
('Think Like a Monk', 'Jay Shetty', 2020, FALSE, 625.00, 'XYZ'),
('Mans Search for Meaning', 'Viktor Frankl', 1946, TRUE, 290.00, 'Beacon Press');


select * from books where year_published > 2000;

select * from books where price < 599.00 order by price desc;

select * from books order by price desc limit 3;

select * from books order by year_published desc offset 2 limit 2;

select * from books where publication = 'XYZ' order by title;