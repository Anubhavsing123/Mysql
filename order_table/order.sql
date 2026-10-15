USE mydb;
CREATE TABLE IF NOT EXISTS `Order` (
    user_id INT,
    order_id INT AUTO_INCREMENT,
    order_date DATETIME,

  
        PRIMARY KEY (order_id),

   
        FOREIGN KEY (user_id)
        REFERENCES `user`(ID)
);