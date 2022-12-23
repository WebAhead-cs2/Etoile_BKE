BEGIN;

DROP TABLE IF EXISTS users, products, orders, ordersdetails, reviews, admins, payment CASCADE ;

CREATE TABLE users(
   id SERIAL PRIMARY KEY,
   username VARCHAR(255) NOT NULL,
   password VARCHAR(255) NOT NULL,
   email VARCHAR(255) NOT NULL
);

CREATE TABLE products(
   id SERIAL PRIMARY KEY,
   name VARCHAR(255) NOT NULL,
   productid VARCHAR(255) NOT NULL,
   price VARCHAR(255)

);

CREATE TABLE orders(
   id SERIAL PRIMARY KEY,
   serielnumber  INTEGER NOT NULL ,
   id_user INTEGER REFERENCES users(id),
   finalprice VARCHAR(255),
   date VARCHAR(255)  
);

CREATE TABLE ordersdetails(
   id SERIAL PRIMARY KEY,
   -- serielnumber INTEGER REFERENCES orders(serielnumber),
   productid INTEGER REFERENCES products(id)
);

CREATE TABLE reviews(
   id SERIAL PRIMARY KEY,
   user_id INTEGER REFERENCES users(id),
   review TEXT,
   posttime VARCHAR(255)
);

CREATE TABLE admins(
    id SERIAL PRIMARY KEY,
    usename VARCHAR(255) NOT NULL,
    access_key VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE payment(
    id SERIAL PRIMARY KEY,
    firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    cardnumber VARCHAR(255) NOT NULL,
    expdate VARCHAR(255) NOT NULL
);

COMMIT;