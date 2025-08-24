-- Question-A
-- Table Creation (Incomplete and Erroneous - please fix the errors and complete this section)

CREATE TABLE Promotion (
	PromoID CHAR(3) NOT NULL PRIMARY KEY,
	PromoName VARCHAR(50) NOT NULL,
	PromoDiscount DECIMAL(4,1) NOT NULL
);

CREATE TABLE Category (
	CategoryID CHAR(5) NOT NULL PRIMARY KEY,
	CategoryName VARCHAR(50) NOT NULL,
	CategoryDesc VARCHAR(200) NOT NULL
);

CREATE TABLE Chocolate (
	ChocolateID CHAR(6) NOT NULL PRIMARY KEY,
	ChocolateName VARCHAR(50) NOT NULL,
	ChocolateDesc VARCHAR(200) NOT NULL,
	ChocolatePrice DECIMAL(5, 2) NOT NULL,
	ChocolateWeight INT NOT NULL,
	CategoryID CHAR(5) NOT NULL, 
	FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

CREATE TABLE Discount (
	PromoID CHAR(3) NOT NULL,
	ChocolateID CHAR(6) NOT NULL,
	StartDate DATETIME NOT NULL,
	EndDate DATETIME NOT NULL,
	PRIMARY KEY (PromoID, ChocolateID),
	FOREIGN KEY (PromoID) REFERENCES Promotion(PromoID),
	FOREIGN KEY (ChocolateID) REFERENCES Chocolate(ChocolateID)
);

CREATE TABLE Customer (
	CustomerID CHAR(6) NOT NULL PRIMARY KEY,
	CustomerName VARCHAR(70) NOT NULL, 
	CustomerEmail VARCHAR(100) NOT NULL,
	CustomerPhNum VARCHAR(32) NOT NULL 
);

CREATE TABLE Review (
	ReviewID CHAR(6) NOT NULL PRIMARY KEY,
	ReviewRating DECIMAL(2,0) NOT NULL,
	ReviewComment VARCHAR(255) NOT NULL,
	ReviewDate DATETIME NOT NULL,
	CustomerID CHAR(6) NULL,
	ChocolateID CHAR(6) NOT NULL,
	FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
	FOREIGN KEY (ChocolateID) REFERENCES Chocolate(ChocolateID)
);
-- Once successfully implemented, these insert statements should work.

INSERT INTO Promotion (PromoID, PromoName, PromoDiscount) VALUES
	('P01', 'Opening Sale', 50.0);
    
INSERT INTO Category (CategoryID, CategoryName, CategoryDesc) VALUES
	('CAT01', "Ecuador Single Origin", "Cocoa beans from a single Ecuadorian source");

INSERT INTO Chocolate (ChocolateID, ChocolateName, ChocolateDesc, ChocolatePrice, ChocolateWeight, CategoryID) VALUES
	('CHOC13', "Dark Chocolate Tablet", "Small, bite sized dark chocolate tablets", 17.99, 80, 'CAT01');

INSERT INTO Discount (PromoID, ChocolateID, StartDate, EndDate) VALUES
	('P01', 'CHOC13', '2023-02-01 08:00:00', '2023-02-02 18:00:00');

INSERT INTO Customer (CustomerID, CustomerName, CustomerEmail, CustomerPhNum) VALUES
	('CUS145', "Jon Snow", "j.snow@notreal.com",  "90861923");

INSERT INTO Review (ReviewID, ReviewRating, ReviewComment, ReviewDate, CustomerID, ChocolateID) VALUES
	('REV131', 8, "A delicious milk chocolate", '2023-02-02 13:22:54', 'CUS145','CHOC13');

-- Please ensure you INSERT atleast 5 records for every table and add it below

INSERT INTO Promotion (PromoID, PromoName, PromoDiscount) VALUES
	('P02', 'Holiday Discount', 25.0),
	('P03', 'Black Friday', 40.0),
	('P04', 'Summer Sale', 20.0),
	('P05', 'Winter Special', 30.0);
INSERT INTO Category (CategoryID, CategoryName, CategoryDesc) VALUES
	('CAT02', 'Peruvian Dark', 'Strong Peruvian dark chocolate with hints of fruit'),
	('CAT03', 'Milk Chocolate', 'Rich and creamy milk chocolate'),
	('CAT04', 'White Chocolate', 'Smooth white chocolate'),
	('CAT05', 'Vegan Chocolate', 'Dairy-free and vegan-friendly chocolate');

INSERT INTO Chocolate (ChocolateID, ChocolateName, ChocolateDesc, ChocolatePrice, ChocolateWeight, CategoryID) VALUES
	('CHOC14', 'Peruvian Dark Bar', 'A bar of strong Peruvian dark chocolate', 15.99, 100, 'CAT02'),
	('CHOC15', 'Milk Chocolate Bar', 'Rich and creamy milk chocolate bar', 10.99, 120, 'CAT03'),
	('CHOC16', 'White Chocolate Squares', 'Smooth white chocolate squares', 12.99, 110, 'CAT04'),
	('CHOC17', 'Vegan Chocolate Bites', 'Vegan-friendly chocolate bites', 18.99, 90, 'CAT05');

INSERT INTO Discount (PromoID, ChocolateID, StartDate, EndDate) VALUES
	('P02', 'CHOC14', '2023-12-01 08:00:00', '2023-12-31 18:00:00'),
	('P03', 'CHOC15', '2023-11-24 08:00:00', '2023-11-25 18:00:00'),
	('P04', 'CHOC16', '2023-06-01 08:00:00', '2023-06-30 18:00:00'),
	('P05', 'CHOC17', '2023-12-20 08:00:00', '2023-12-25 18:00:00');

INSERT INTO Customer (CustomerID, CustomerName, CustomerEmail, CustomerPhNum) VALUES
	('CUS146', 'Arya Stark', 'a.stark@notreal.com',  '90861924'),
	('CUS147', 'Sansa Stark', 's.stark@notreal.com',  '90861925'),
	('CUS148', 'Tyrion Lannister', 't.lannister@notreal.com',  '90861926'),
	('CUS149', 'Daenerys Targaryen', 'd.targaryen@notreal.com',  '90861927');

INSERT INTO Review (ReviewID, ReviewRating, ReviewComment, ReviewDate, CustomerID, ChocolateID) VALUES
	('REV132', 9, 'Very strong dark chocolate, I loved it!', '2023-12-02 10:12:34', 'CUS146', 'CHOC14'),
	('REV133', 7, 'Smooth and creamy, great for kids', '2023-02-15 15:43:12', 'CUS147', 'CHOC15'),
	('REV134', 6, 'Not a fan of white chocolate, but it was good', '2023-06-10 11:22:43', 'CUS148', 'CHOC16'),
	('REV135', 9, 'Great vegan option, loved the taste', '2023-12-22 09:15:22', 'CUS149', 'CHOC17');





-- Question-B
/* Explain in simple words what each query does and make sure you comment it
 */

-- An example of an answer to a Query

/* This query prints the names of all chocolates */

Select ChocolateName
from Chocolate;

-- Query 1: A query involving a single table with one condition. Insert your answer below

-- This query retrieves the names and prices of chocolates that cost more than $15.00.

SELECT ChocolateName, ChocolatePrice
FROM Chocolate
WHERE ChocolatePrice > 15.00;


-- Query 2: A query involving a single table with two conditions, with one of the conditions that uses a wild card operator. Insert your answer below

-- This query retrieves the names of chocolates that are less than $18.00 and contain the word 'chocolate' in their description.

SELECT ChocolateName, ChocolatePrice
FROM Chocolate
WHERE ChocolatePrice < 18.00
AND ChocolateDesc LIKE '%chocolate%';


-- Query 3: A query involving a join between at least two tables with an order by clause. Insert your answer below
-- This query retrieves the names of all chocolates and their associated promotion names, ordered by promotion discount in ascending order.

SELECT Chocolate.ChocolateName, Promotion.PromoName, Promotion.PromoDiscount
FROM Chocolate
JOIN Discount ON Chocolate.ChocolateID = Discount.ChocolateID
JOIN Promotion ON Discount.PromoID = Promotion.PromoID
ORDER BY Promotion.PromoDiscount ASC;

-- Query 4: A query involving a single table with an aggregate and group by function. Insert your answer below
-- This query calculates the average rating for each chocolate and lists the chocolate names along with the average rating.

SELECT Chocolate.ChocolateName, AVG(Review.ReviewRating) AS AverageRating
FROM Review
JOIN Chocolate ON Review.ChocolateID = Chocolate.ChocolateID
GROUP BY Chocolate.ChocolateName;

