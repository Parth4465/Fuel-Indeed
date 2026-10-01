-- Fuel-Indeed database
-- Reconstructed from the application's source code.
-- Database: fuelDB

CREATE DATABASE IF NOT EXISTS fuelDB;
USE fuelDB;

SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS Booking;
DROP TABLE IF EXISTS emp;
DROP TABLE IF EXISTS NewRegPetrolPump;
DROP TABLE IF EXISTS PetrolPump;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS admin;

SET FOREIGN_KEY_CHECKS = 1;

CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    mobno VARCHAR(20),
    pwd VARCHAR(255) NOT NULL,
    latitude DECIMAL(10,7) DEFAULT NULL,
    longitude DECIMAL(10,7) DEFAULT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uk_users_email (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE admin (
    email VARCHAR(150) NOT NULL,
    pwd VARCHAR(255) NOT NULL,
    PRIMARY KEY (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE PetrolPump (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL,
    pwd VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    latitude DECIMAL(10,7) DEFAULT NULL,
    longitude DECIMAL(10,7) DEFAULT NULL,
    fuel_available DECIMAL(10,2) DEFAULT 0,
    PRIMARY KEY (id),
    UNIQUE KEY uk_petrolpump_email (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE NewRegPetrolPump (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL,
    pwd VARCHAR(255) NOT NULL,
    address VARCHAR(255),
    latitude DECIMAL(10,7) DEFAULT NULL,
    longitude DECIMAL(10,7) DEFAULT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uk_newreg_email (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE emp (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    mobno VARCHAR(20),
    pwd VARCHAR(255) NOT NULL,
    pid INT DEFAULT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY uk_emp_email (email),
    KEY idx_emp_pid (pid),
    CONSTRAINT fk_emp_petrolpump
        FOREIGN KEY (pid) REFERENCES PetrolPump(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE Booking (
    bid INT NOT NULL AUTO_INCREMENT,
    uid INT DEFAULT NULL,
    pid INT DEFAULT NULL,
    latitude DECIMAL(10,7) DEFAULT NULL,
    longitude DECIMAL(10,7) DEFAULT NULL,
    quantity DECIMAL(10,2) DEFAULT NULL,
    payment_id VARCHAR(255) DEFAULT NULL,
    address VARCHAR(255) DEFAULT NULL,
    dcode VARCHAR(100) DEFAULT NULL,
    isdelivered INT DEFAULT 0,
    eid INT DEFAULT NULL,
    PRIMARY KEY (bid),
    KEY idx_booking_uid (uid),
    KEY idx_booking_pid (pid),
    KEY idx_booking_eid (eid),
    CONSTRAINT fk_booking_user
        FOREIGN KEY (uid) REFERENCES users(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_booking_petrolpump
        FOREIGN KEY (pid) REFERENCES PetrolPump(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,
    CONSTRAINT fk_booking_employee
        FOREIGN KEY (eid) REFERENCES emp(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Demo admin account.
-- Change this password before using the application outside local testing.
INSERT INTO admin (email, pwd)
VALUES ('admin@fuelindeed.local', 'admin123');

-- No real user, employee, petrol-pump, or payment data is included.
-- Add test records only after confirming the application's expected login/registration flow.
