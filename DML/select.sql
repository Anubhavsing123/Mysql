-- Active: 1792012403380@@127.0.0.1@3306@mydb
use MOVIE;
 SELECT * FROM


--filter using where


SELECT  * FROM  `collegeStudents`where college_name='IERT Prayagraj';


--multiplite filter


SELECT  * FROM  `collegeStudents`where  rollno>10004 AND college_name='IERT Prayagraj';

--OR 


SELECT  * FROM  `collegeStudents`where  rollno>10004 OR college_name='IERT Prayagraj';

--BTWENN


SELECT  * FROM  `collegeStudents`where  rollno  BETWEEN 10001 AND 10006;

--in

SELECT name, genre FROM movies WHERE genre IN("Drama","Action");


--NOT IN

SELECT name, genre FROM movies WHERE genre NOT IN("Drama","Action");

--LIKE
--A% CHECK ONLY START WITH A(MEANS FIRST POINT AND REST WHATEVER)
SELECT name, genre FROM movies WHERE genre LIKE "A%";
--%man% CHEK WHERE THESE WORD CAME OR NOT (MEANS THESE WORD CAME OR NOT)
SELECT name FROM movies WHERE name LIKE "%man%";


-- %b HECK ONLY END WITH b(MEANS END POINT AND REST WHATEVER)

SELECT name FROM movies WHERE name LIKE "%b";
