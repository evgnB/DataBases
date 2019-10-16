drop database if exists example;
create database example;
use example;

create table users (
	id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  	name VARCHAR(150) not null unique
);