Create database data;
Use data;

CREATE TABLE `bookstore`(
  `ISBN` varchar(20) NOT NULL PRIMARY KEY,
  `BOOK NAME` varchar(45),
  `AUTHORS` varchar(45),
  `DESCRIPTION` varchar(300),
  `PRICE` float,
  `PUBLISHER ID` int
);

INSERT INTO `DATA`.`BOOKSTORE` (`ISBN`, `BOOK NAME`, `AUTHORS`, `DESCRIPTION`, `PRICE`, `PUBLISHER ID`) VALUES ('A101', 'A LITTLE LIFE', 'HANYA YANAGIHARA', 'A Little Life depicts the everyday experience of living with trauma, chronic pain, and disability, demonstrating the inherent intersections with one another.', '1200', '16');
INSERT INTO `DATA`.`BOOKSTORE` (`ISBN`, `BOOK NAME`, `AUTHORS`, `DESCRIPTION`, `PRICE`, `PUBLISHER ID`) VALUES ('A102', 'ALICE IN WONDERLAND', 'LEWIS CARROLL', 'It tells of a young girl named Alice, who falls through a rabbit hole into a subterranean fantasy world populated by peculiar, anthropomorphic creatures.', '800', '15');
INSERT INTO `DATA`.`BOOKSTORE` (`ISBN`, `BOOK NAME`, `AUTHORS`, `DESCRIPTION`, `PRICE`, `PUBLISHER ID`) VALUES ('A103','BRAVE NEW WORLD','ALDOUS HUXLEY',' Brave New World warns of the dangers of giving the state control over new and powerful technologies.','1500','10');


CREATE DATABASE DATA;
USE DATA;
CREATE TABLE `users`(
Name varchar(50) not null primary key,
City varchar(300) not null
);
users