create database xworkz;
use xworkz;
CREATE TABLE movie_info (
    title VARCHAR(255),
    director VARCHAR(255),
    genre VARCHAR(255),
    release_year INT,
    budget BIGINT
);

ALTER TABLE movie_info ADD COLUMN rating VARCHAR(255);
ALTER TABLE movie_info ADD COLUMN duration INT;
ALTER TABLE movie_info ADD COLUMN box_office BIGINT;
ALTER TABLE movie_info ADD COLUMN language VARCHAR(255);
ALTER TABLE movie_info ADD COLUMN is_award_winning BOOLEAN;

ALTER TABLE movie_info RENAME COLUMN rating TO movie_rating;
ALTER TABLE movie_info RENAME COLUMN duration TO movie_duration;
ALTER TABLE movie_info RENAME COLUMN box_office TO total_box_office;
ALTER TABLE movie_info RENAME COLUMN language TO movie_language;
ALTER TABLE movie_info RENAME COLUMN is_award_winning TO award_winning;

-- 4. Insert 10 Data Rows
INSERT INTO movie_info (title, director, genre, release_year, budget, movie_rating, movie_duration, total_box_office, movie_language, award_winning)
VALUES
('RRR', 'S. S. Rajamouli', 'Action', 2022, 550000000, 'UA', 187, 1200000000, 'Telugu', TRUE),
('KGF: Chapter 2', 'Prashanth Neel', 'Action', 2022, 100000000, 'UA', 168, 1200000000, 'Kannada', TRUE),
('Pathaan', 'Siddharth Anand', 'Action', 2023, 250000000, 'UA', 146, 1100000000, 'Hindi', TRUE),
('Pushpa: The Rise', 'Sukumar', 'Action', 2021, 100000000, 'UA', 179, 350000000, 'Telugu', TRUE),
('Drishyam 2', 'Abhishek Pathak', 'Thriller', 2022, 20000000, 'UA', 142, 250000000, 'Hindi', TRUE),
('Radhe Shyam', 'Radha Krishna Kumar', 'Romance', 2022, 300000000, 'UA', 138, 100000000, 'Telugu', FALSE),
('Sooryavanshi', 'Rohit Shetty', 'Action', 2021, 160000000, 'UA', 145, 300000000, 'Hindi', TRUE),
('Jersey', 'Gowtam Tinnanuri', 'Drama', 2022, 100000000, 'UA', 170, 270000000, 'Hindi', FALSE),
('Shershaah', 'Vishnuvardhan', 'Biographical', 2021, 50000000, 'UA', 135, 200000000, 'Hindi', TRUE),
('83', 'Kabir Khan', 'Sports', 2021, 125000000, 'UA', 162, 193000000, 'Hindi', TRUE);

UPDATE movie_info SET budget = 600000000 WHERE title = 'RRR';
UPDATE movie_info SET release_year = 2021 WHERE title = 'KGF: Chapter 2';
UPDATE movie_info SET movie_duration = 150 WHERE title = 'Pathaan';
UPDATE movie_info SET total_box_office = 375000000 WHERE title = 'Pushpa: The Rise';
UPDATE movie_info SET genre = 'Crime Thriller' WHERE title = 'Drishyam 2';
UPDATE movie_info SET award_winning = TRUE WHERE title = 'Radhe Shyam';
UPDATE movie_info SET movie_language = 'Tamil' WHERE title = 'Sooryavanshi';
UPDATE movie_info SET budget = 110000000 WHERE title = 'Jersey';
UPDATE movie_info SET movie_rating = 'U' WHERE title = 'Shershaah';
UPDATE movie_info SET total_box_office = 200000000 WHERE title = '83';

DELETE FROM movie_info WHERE title = 'Radhe Shyam';
DELETE FROM movie_info WHERE title = 'Shershaah';
DELETE FROM movie_info WHERE title = '83';

SELECT * FROM movie_info WHERE genre = 'Action';

SELECT * FROM movie_info WHERE genre = 'Action' AND award_winning = TRUE;

SELECT * FROM movie_info WHERE genre = 'Action' OR genre = 'Thriller';

SELECT * FROM movie_info WHERE title IN ('RRR', 'KGF: Chapter 2', 'Pathaan');

SELECT * FROM movie_info WHERE title NOT IN ('RRR', 'KGF: Chapter 2', 'Pathaan');