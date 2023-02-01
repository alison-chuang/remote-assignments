CREATE DATABASE assignment;
USE assignment;

CREATE TABLE user(
    `id` integer PRIMARY KEY AUTO_INCREMENT,
    `email` varchar(255) NOT NULL,
    `password` varchar(255) NOT NULL
);