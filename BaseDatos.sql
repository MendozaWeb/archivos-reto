DROP DATABASE IF EXISTS BaseDatos;
CREATE DATABASE BaseDatos;
USE BaseDatos;


CREATE TABLE person (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    gender VARCHAR(255),
    age INT,
    address VARCHAR(255),
    phone VARCHAR(255)
);

CREATE TABLE client (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    client_id VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    status BOOLEAN,
    person_id BIGINT,
    FOREIGN KEY (person_id) REFERENCES person(id)
);

SELECT * FROM person;
SELECT * FROM client;

CREATE TABLE account (
    id SERIAL PRIMARY KEY,
    account_number VARCHAR(50) UNIQUE NOT NULL,
    account_type VARCHAR(50) NOT NULL,
    initial_balance DOUBLE PRECISION NOT NULL,
    status BOOLEAN NOT NULL
);

-- Crea la tabla de movimientos (Movement)
CREATE TABLE movement (
    id SERIAL PRIMARY KEY,
    date TIMESTAMP NOT NULL,
    movement_type VARCHAR(50) NOT NULL,
    value DOUBLE PRECISION NOT NULL,
    balance DOUBLE PRECISION NOT NULL,
    account_id BIGINT,
    FOREIGN KEY (account_id) REFERENCES account (id)
);



