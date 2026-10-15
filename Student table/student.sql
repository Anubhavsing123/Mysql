use mydb;
 
 CREATE TABLE IF NOT EXISTS `Students`(
    id INTEGER NOT NULL,
    name VARCHAR(255) ,
    age  INT CHECK( age<18)
 )