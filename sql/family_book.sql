CREATE DATABASE family_book;
USE family_book;

CREATE TABLE users(
                      id INT PRIMARY KEY AUTO_INCREMENT,
                      username VARCHAR(20) NOT NULL UNIQUE,
                      password VARCHAR(20) NOT NULL
);

CREATE TABLE member(
                       id INT PRIMARY KEY AUTO_INCREMENT,
                       uid INT,
                       name VARCHAR(10),
                       relation VARCHAR(10)
);

CREATE TABLE category(
                         id INT PRIMARY KEY AUTO_INCREMENT,
                         uid INT,
                         name VARCHAR(20),
                         type INT  -- 1收入 2支出
);

CREATE TABLE account(
                        id INT PRIMARY KEY AUTO_INCREMENT,
                        uid INT,
                        member_id INT,
                        category_id INT,
                        money DOUBLE,
                        type INT,
                        record_time DATE,
                        remark VARCHAR(100)
);