-- Database: library_db

-- DROP DATABASE library_db;

CREATE DATABASE library_db
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

GRANT ALL ON DATABASE library_db TO postgres;

GRANT TEMPORARY, CONNECT ON DATABASE library_db TO PUBLIC;

GRANT ALL ON DATABASE library_db TO maryana;

CREATE TABLE Author (
                        id INTEGER PRIMARY KEY NOT NULL,
                        firstName VARCHAR(15),
                        lastName VARCHAR(15),
                        country VARCHAR(15),
                        age INTEGER
);

CREATE TABLE Book (
                      id INTEGER PRIMARY KEY,
                      authorId INTEGER REFERENCES Author(id),
                      title VARCHAR(30),
                      genre VARCHAR(20),
                      description VARCHAR(255),
                      rate INTEGER
);

INSERT INTO Author (id, firstName, lastName, country, age)
VALUES(1,'Elizabeth','Lim','USA',34);

INSERT INTO Author (id, firstName, lastName, country, age)
VALUES(2,'Pierce','Brown','USA',28);

INSERT INTO Author (id, firstName, lastName, country, age)
VALUES(3,'David','McCullough','Canada',70);

INSERT INTO Author (id, firstName, lastName, country, age)
VALUES(4,'Michael','Robotmhan','Australia',45);

INSERT INTO Author (id, firstName, lastName, country, age)
VALUES(5,'Ellison','Cooper','USA',47);

INSERT INTO Author (id, firstName, lastName, country, age)
VALUES(6,'Rachel','DeLoache','USA',32);

INSERT INTO Author (id, firstName, lastName, country, age)
VALUES(7,'Zara','Raheem','Indian',27);

INSERT INTO Author (id, firstName, lastName, country, age)
VALUES(8,'Elyssa','Friedland','Germany',23);

INSERT INTO Author (id, firstName, lastName, country, age)
VALUES(9,'Spencer','Quinn','Indian',40);

INSERT INTO Author (id, firstName, lastName, country, age)
VALUES(10,'Jay','McLean','USA',29);

INSERT INTO Author (id, firstName, lastName, country, age)
VALUES(11,'Becky','Wallace','USA',27);

INSERT INTO Author (id, firstName, lastName, country, age)
VALUES(12,'Kate','Meader','USA',43);

INSERT INTO Author (id, firstName, lastName, country, age)
VALUES(13,'Katy','Allen','USA',23);

INSERT INTO Author (id, firstName, lastName, country, age)
VALUES(14,'Elizabeth','Eulberg','USA',35);

INSERT INTO Author (id, firstName, lastName, country, age)
VALUES(15,'Tucker','Malarkey','Australia',48);

INSERT INTO Author (id, firstName, lastName, country, age)
VALUES(16,'Jeff','Gordinier','France',54);

INSERT INTO Author (id, firstName, lastName, country, age)
VALUES(17,'Daniel','Dauphinee','Colambia',55);

INSERT INTO Author (id, firstName, lastName, country, age)
VALUES(18,'Hugh','Amano','Japan',39);

INSERT INTO Author (id, firstName, lastName, country, age)
VALUES(19,'Dustin','Harder','USA',32);

INSERT INTO Author (id, firstName, lastName, country, age)
VALUES(20,'Winona','Guo','Italy',26);


INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(1,1,
       'Spin the dawn','Fantasy','About the girl who poses as a boy to compete for the role of imperial tailor',
       3);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(2,2,
       'Dark age','Fantasy','The #1 New York Times bestselling author of Morning Star returns to the Red Rising universe with the thrilling sequel to Iron Gold',
       2);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(3,3,
       'John Adams','Historical','The enthralling, ofthen suprising story of John Adams, one of the most important and fascinating americans who ever lived',
       4);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(4,3,
       'Truman','Biography','The biography of Harry S. Truman, whose presidency included momentous events from the atomic bombing of Japan',
       4);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(5,3,
       'The wright brothers','Historical','Dramatic story about the courageous brothers who taught the world how to fly',
       5);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(6,4,
       'Good girl,bad girl','Crime','A girl is discovered hiding in a secret room in the aftermath of a terrible crime',
       5);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(7,4,
       'Shatter','Thriller','Joe Loughlin is on familiar terriory-standing on a bridge high above a flooded gorge, trying to stop a distraught woman from jumping' ,
       3);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(8,5,
       'Buried','Thriller','Senior Special Agent Sayer Altair studied the minds of psychopaths',
       1);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(9,6,
       'My friend Anna','Crime','Story about Anna, a young con artist posing as a German heiress',
       5);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(10,7,
       'The marriage clock','Comedy','In Zara Raheems fresh,funny,smart debut,a young, Muslim-American woman is given three months to find the husband',
       5);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(11,8,
       'The floating feldmans','Comedy','Between the troublesome family secrets,old sibling rivalries',
       1);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(12,9,
       'Heart of barkness','Comedy','Chet the dog, the most lovable narrator in all of crime fiction',
       2);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(13,10,
       'First and Forever','Romance','F&F is the second book in the Heartache Duet, and must be read after Heartache and Hope',
       5);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(14,11,
       'Stealing home','Romance','Fight for your dreams, even if it means breaking a few rules',
       4);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(15,12,
       'Good guy','Fans can not enough of Levi Hunt, the Special Forces veteran',' ',
       5);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(16,13,
       'Falling from gravity','Romance','If I had not consider Amelia dangerous before, I certainly did now',
       3);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(17,14,
       'Past perfect life','Mystery','Smith loves her life the way it is spending quality time with her widower father and friends',
       2);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(18,15,
       'Stronghold','Environment','Guido Rahrs mission to save the wild Pacific salmon leads him into adventures',
       4);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(19,16,
       'Hungry','Travel','Book about not only the hunger for food, but for risk, for reinvention, for breakthroughs and for connection',
       5);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(20,17,
       'When you find my body','Travel','When Geraldine Largay first went missing on the Appalachian Trail in remote Main, the people were wrought',
       4);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(21,18,
       'Lets make ramen','Cookbooks','A comic book cookbook with accessible ramen recipes for the home cook',
       1);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(22,19,
       'Epic Vegan','Cookbooks','EV offers a step-by-step guide to creating timeless comfort foods that are over-the-top delicious',
       3);

INSERT INTO Book (id, authorId, title, genre, description, rate)
VALUES(23,20,
       'Tell me who you are','Sociology','Winona Guo recount her experiences talking to people from all walks of life about race and identity',
       4);

SELECT Author.firstName, Author.lastName, Book.title, Book.genre,
       Book.description, Book.id
FROM Book
         JOIN Author ON Author.id=Book.authorId;

SELECT id, title, description, rate
FROM Book
WHERE genre='Cookbooks';

SELECT title, genre
FROM Book
ORDER BY rate DESC;

SELECT title, MAX(rate) AS most_popular
FROM  Book
GROUP BY title
HAVING MAX(rate)>4;

SELECT Author.firstName, Author.lastName, Book.title, Book.description
FROM Book  JOIN Author ON Author.id=Book.authorId
WHERE Author.id=3;


SELECT Author.firstName, Author.lastName, Author.age FROM Author
ORDER BY age DESC;

SELECT Author.firstName, Author.lastName, COUNT(*) AS count_of_book
FROM Book
JOIN Author ON Author.id=Book.authorId
GROUP BY Author.id
HAVING COUNT(*)>1
ORDER BY count_of_book DESC;