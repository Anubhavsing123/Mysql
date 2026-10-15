--delete using alter
USE mydb;
ALTER TABLE `Students` DROP COLUMN rollno
---- Change datatype/definition
ALTER TABLE `Students` MODIFY COLUMN  name VARCHAR(500) NOT Null;
---- Rename a column
ALTER TABLE `Students` RENAME COLUMN name  TO student_name

-- Rename the table
ALTER TABLE `Students` RENAME TO collegeStudents
-- Add UNIQUE constraint
ALTER TABLE `Students` ADD CONSTRAINT roll_id UNIQUE(rolll_id)