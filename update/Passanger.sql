use mydb;
CREATE TABLE Passengers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    category VARCHAR(20) NOT NULL,
    gender VARCHAR(10) NOT NULL,
    email VARCHAR(150) NOT NULL,
    seat VARCHAR(10)  NOT NULL
);