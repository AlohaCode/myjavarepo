DROP TABLE IF EXISTS Quotes, Authors;

CREATE TABLE IF NOT EXISTS Authors(Id INT PRIMARY KEY AUTO_INCREMENT, 
    Name VARCHAR(25)) ENGINE=InnoDB;
CREATE TABLE IF NOT EXISTS Quotes(Id INT PRIMARY KEY AUTO_INCREMENT, 
    AuthorId INT, Quote VARCHAR(100), 
    FOREIGN KEY(AuthorId) REFERENCES Authors(Id) ON DELETE CASCADE)
    ENGINE=InnoDB;

INSERT INTO Authors(Id, Name) VALUES(1, 'Bruce Lee');
INSERT INTO Authors(Id, Name) VALUES(2, 'Mr Miyagi');
INSERT INTO Authors(Id, Name) VALUES(3, 'Rocky Balboa');
INSERT INTO Authors(Id, Name) VALUES(4, 'Christie Brinkley');
INSERT INTO Authors(Id, Name) VALUES(5, 'Peter Griffen');

INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(1, 1, 'All arrays Chuck Norris declares are of infinite size, because Chuck Norris knows no bounds.');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(2, 1, 'Chuck Norris can compile syntax errors');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(3, 2, 'Chuck Norris hosting is 101% uptime guaranteed');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(4, 2, 'Chuck Norris burst the dot com bubble');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(5, 3, 'Chuck Norris can access the DB from the UI');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(6, 4, 'Chuck Norris doesn\u0027t need try-catch, exceptions are too afraid to raise');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(7, 4, 'When Chuck Norris throws exceptions, it\u0027s across the room');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(8, 5, 'Chuck Norris\u0027s log statements are always at the FATAL level');
INSERT INTO Quotes(Id, AuthorId, Quote) VALUES(9, 5, 'The Chuck Norris Eclipse plugin made alien contact');