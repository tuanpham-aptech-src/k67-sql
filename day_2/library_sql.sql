-- Tạo database
create database if not exists LibraryDB;
use LibraryDB;

-- tạo authors trước để có thể tạo fk trong books ngay tại thời điểm create.
create table if not exists authors(
-- serial = bigint unsigned + auto_increment
id serial primary key,
name varchar(255) not null,
birth_year int
); 
-- tạo books
create table if not exists books(
id serial primary key,
title varchar(255) not null,
-- author_id là fk nên phải cùng type với authors(id) tức là phải là bigint unsigned
author_id bigint unsigned not null,
constraint fk_author foreign key (author_id) references authors(id) on delete cascade,
published_year int
);