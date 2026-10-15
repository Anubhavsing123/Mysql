-- single line comment
/* multiline comment */
create database if not exists mydb;
use mydb

create table if not exists Products(
    id int PRIMARY KEY auto_increment,
    name varchar(255) not null,
    price decimal(10,2) not null
)
