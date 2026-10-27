CREATE DATABASE dataset;
CREATE TABLE movie(
    CREATE TABLE Movies (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    release_year INT NOT NULL,
    director VARCHAR(100) NOT NULL,
    star VARCHAR(100) NOT NULL,
    rating DECIMAL(3,1),
    duration INT,
    language VARCHAR(50),
    country VARCHAR(50),
    gross DECIMAL(12,2),
    bugdet DECIMAL(12,2)
);
)


















NSERT INTO movie (title, genre,release_year, director,star, rating,duration, language,country,gross,bugdet) 
  VALUES

('Inception', 'Sci-Fi', 2010, 'Christopher Nolan', 'Leonardo DiCaprio', 8.8, 148, 'English', 'USA', 839.00, 160.00),
('Interstellar', 'Sci-Fi', 2014, 'Christopher Nolan', 'Matthew McConaughey', 8.7, 169, 'English', 'USA', 731.00, 165.00),
('The Dark Knight', 'Action', 2008, 'Christopher Nolan', 'Christian Bale', 9.0, 152, 'English', 'USA', 1006.00, 185.00),
('Titanic', 'Romance', 1997, 'James Cameron', 'Leonardo DiCaprio', 7.9, 194, 'English', 'USA', 2264.00, 200.00),
('Avatar', 'Sci-Fi', 2009, 'James Cameron', 'Sam Worthington', 7.9, 162, 'English', 'USA', 2923.00, 237.00),

('Gladiator', 'Action', 2000, 'Ridley Scott', 'Russell Crowe', 8.5, 155, 'English', 'USA', 465.00, 103.00),
('The Martian', 'Sci-Fi', 2015, 'Ridley Scott', 'Matt Damon', 8.0, 144, 'English', 'USA', 45.00, 180.00),
('Fight Club', 'Drama', 1999, 'David Fincher', 'Brad Pitt', 8.8, 139, 'English', 'USA', 101.00, 63.00),
('Se7en', 'Thriller', 1995, 'David Fincher', 'Brad Pitt', 8.6, 127, 'English', 'USA', 327.00, 33.00),
('Gone Girl', 'Thriller', 2014, 'David Fincher', 'Ben Affleck', 8.1, 149, 'English', 'USA', 369.00, 61.00),

('Forrest Gump', 'Drama', 1994, 'Robert Zemeckis', 'Tom Hanks', 8.8, 142, 'English', 'USA', 678.00, 55.00),
('Cast Away', 'Drama', 2000, 'Robert Zemeckis', 'Tom Hanks', 7.8, 143, 'English', 'USA', 75.00, 150.00),
('Joker', 'Drama', 2019, 'Todd Phillips', 'Joaquin Phoenix', 8.4, 122, 'English', 'USA', 1074.00, 55.00),
('The Prestige', 'Mystery', 2006, 'Christopher Nolan', 'Christian Bale', 8.5, 130, 'English', 'USA', 109.00, 40.00),
('Dunkirk', 'War', 2017, 'Christopher Nolan', 'Fionn Whitehead', 7.8, 106, 'English', 'UK', 40.00, 200.00),

('Oppenheimer', 'Biography', 2023, 'Christopher Nolan', 'Cillian Murphy', 8.5, 180, 'English', 'USA', 976.00, 100.00),
('The Revenant', 'Adventure', 2015, 'Alejandro Inarritu', 'Leonardo DiCaprio', 8.0, 156, 'English', 'USA', 533.00, 135.00),
('Shutter Island', 'Thriller', 2010, 'Martin Scorsese', 'Leonardo DiCaprio', 8.2, 138, 'English', 'USA', 80.00, 80.00),
('The Wolf of Wall Street', 'Biography', 2013, 'Martin Scorsese', 'Leonardo DiCaprio', 8.2, 180, 'English', 'USA', 407.00, 100.00),
('The Departed', 'Crime', 2006, 'Martin Scorsese', 'Leonardo DiCaprio', 8.5, 151, 'English', 'USA', 291.00, 90.00),

('Avengers Endgame', 'Action', 2019, 'Anthony Russo', 'Robert Downey Jr', 8.4, 181, 'English', 'USA', 2799.00, 356.00),
('Iron Man', 'Action', 2008, 'Jon Favreau', 'Robert Downey Jr', 7.9, 126, 'English', 'USA', 60.00, 180.00),
('Spider-Man No Way Home', 'Action', 2021, 'Jon Watts', 'Tom Holland', 8.2, 148, 'English', 'USA', 1921.00, 200.00),
('Doctor Strange', 'Fantasy', 2016, 'Scott Derrickson', 'Benedict Cumberbatch', 7.5, 115, 'English', 'USA', 45.00, 165.00),
('Black Panther', 'Action', 2018, 'Ryan Coogler', 'Chadwick Boseman', 7.3, 134, 'English', 'USA', 70.00, 250.00),

('3 Idiots', 'Comedy', 2009, 'Rajkumar Hirani', 'Aamir Khan', 8.4, 170, 'Hindi', 'India', 90.00, 7.00),
('PK', 'Comedy', 2014, 'Rajkumar Hirani', 'Aamir Khan', 8.1, 153, 'Hindi', 'India', 118.00, 14.00),
('Dangal', 'Drama', 2016, 'Nitesh Tiwari', 'Aamir Khan', 8.3, 161, 'Hindi', 'India', 311.00, 10.00),
('Lagaan', 'Drama', 2001, 'Ashutosh Gowariker', 'Aamir Khan', 8.1, 224, 'Hindi', 'India', 5.00, 20.00),
('Taare Zameen Par', 'Drama', 2007, 'Aamir Khan', 'Darsheel Safary', 8.3, 165, 'Hindi', 'India', 21.00, 6.00),

('Swades', 'Drama', 2004, 'Ashutosh Gowariker', 'Shah Rukh Khan', 8.2, 189, 'Hindi', 'India', 3.00, 15.00),
('Chak De India', 'Sports', 2007, 'Shimit Amin', 'Shah Rukh Khan', 8.1, 153, 'Hindi', 'India', 20.00, 4.00),
('My Name Is Khan', 'Drama', 2010, 'Karan Johar', 'Shah Rukh Khan', 7.9, 165, 'Hindi', 'India', 48.00, 12.00),
('Pathaan', 'Action', 2023, 'Siddharth Anand', 'Shah Rukh Khan', 5.8, 146, 'Hindi', 'India', 15.00, 90.00),
('Jawan', 'Action', 2023, 'Atlee', 'Shah Rukh Khan', 7.0, 169, 'Hindi', 'India', 140.00, 35.00),

('Bajrangi Bhaijaan', 'Drama', 2015, 'Kabir Khan', 'Salman Khan', 8.1, 163, 'Hindi', 'India', 150.00, 15.00),
('Sultan', 'Sports', 2016, 'Ali Abbas Zafar', 'Salman Khan', 7.0, 170, 'Hindi', 'India', 8.00, 50.00),
('Drishyam', 'Thriller', 2015, 'Nishikant Kamat', 'Ajay Devgn', 8.2, 163, 'Hindi', 'India', 20.00, 6.00),
('Drishyam 2', 'Thriller', 2022, 'Abhishek Pathak', 'Ajay Devgn', 8.2, 140, 'Hindi', 'India', 42.00, 7.00),
('Andhadhun', 'Thriller', 2018, 'Sriram Raghavan', 'Ayushmann Khurrana', 8.2, 139, 'Hindi', 'India', 57.00, 4.00),

('Kahaani', 'Thriller', 2012, 'Sujoy Ghosh', 'Vidya Balan', 8.1, 122, 'Hindi', 'India', 15.00, 2.00),
('Queen', 'Comedy', 2013, 'Vikas Bahl', 'Kangana Ranaut', 8.1, 146, 'Hindi', 'India', 18.00, 3.00),
('Barfi', 'Romance', 2012, 'Anurag Basu', 'Ranbir Kapoor', 8.1, 151, 'Hindi', 'India', 5.00, 30.00),
('Rockstar', 'Drama', 2011, 'Imtiaz Ali', 'Ranbir Kapoor', 7.7, 159, 'Hindi', 'India', 20.00, 9.00),
('Tamasha', 'Romance', 2015, 'Imtiaz Ali', 'Ranbir Kapoor', 7.3, 139, 'Hindi', 'India', 10.00, 35.00),

('Gangs of Wasseypur', 'Crime', 2012, 'Anurag Kashyap', 'Manoj Bajpayee', 8.2, 160, 'Hindi', 'India', 4.00, 3.00),
('Article 15', 'Crime', 2019, 'Anubhav Sinha', 'Ayushmann Khurrana', 8.1, 130, 'Hindi', 'India', 4.00, 20.00),
('Badla', 'Mystery', 2019, 'Sujoy Ghosh', 'Amitabh Bachchan', 7.7, 118, 'Hindi', 'India', 20.00, 5.00),
('Pink', 'Drama', 2016, 'Aniruddha Roy Chowdhury', 'Amitabh Bachchan', 8.1, 136, 'Hindi', 'India', 16.00, 3.00),
('Piku', 'Comedy', 2015, 'Shoojit Sircar', 'Amitabh Bachchan', 7.6, 123, 'Hindi', 'India', 22.00, 4.00),

('RRR', 'Action', 2022, 'S S Rajamouli', 'N T Rama Rao Jr', 7.8, 187, 'Telugu', 'India', 160.00, 70.00),
('Baahubali', 'Action', 2015, 'S S Rajamouli', 'Prabhas', 8.0, 159, 'Telugu', 'India', 25.00, 25.00),
('Baahubali 2', 'Action', 2017, 'S S Rajamouli', 'Prabhas', 8.2, 167, 'Telugu', 'India', 250.00, 30.00),
('KGF Chapter 1', 'Action', 2018, 'Prashanth Neel', 'Yash', 8.2, 156, 'Kannada', 'India', 35.00, 12.00),
('KGF Chapter 2', 'Action', 2022, 'Prashanth Neel', 'Yash', 8.3, 168, 'Kannada', 'India', 12.00, 80.00),

('Kantara', 'Thriller', 2022, 'Rishab Shetty', 'Rishab Shetty', 8.2, 148, 'Kannada', 'India', 50.00, 2.00),
('Vikram', 'Action', 2022, 'Lokesh Kanagaraj', 'Kamal Haasan', 8.3, 175, 'Tamil', 'India', 55.00, 15.00),
('Jai Bhim', 'Drama', 2021, 'T J Gnanavel', 'Suriya', 8.7, 164, 'Tamil', 'India', 6.00, 25.00),
('96', 'Romance', 2018, 'C Prem Kumar', 'Vijay Sethupathi', 8.5, 158, 'Tamil', 'India', 12.00, 3.00),
('Premam', 'Romance', 2015, 'Alphonse Puthren', 'Nivin Pauly', 8.3, 156, 'Malayalam', 'India', 9.00, 2.00);