create database if not exists company_db;
use company_db;
create table if not exists departments(
id serial primary key,
name varchar(255)
);
create table if not exists users(
id serial primary key,
name varchar(255)
);
-- alter table departments add column code varchar(100) NOT NULL;
