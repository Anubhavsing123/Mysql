/*What does LIKE '__' mean?
In SQL LIKE:
- _ → exactly one character
- __ → exactly two characters
- ___ → exactly three characters
- % → zero or more characters
So your query returns star values containing exactly 2 characters.*/
SELECT name FROM movies WHERE name LIKE "___";
