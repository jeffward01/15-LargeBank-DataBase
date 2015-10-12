USE LargeBank;
go

create table Customer
(
	CustomerId VARCHAR(30) primary key,
	CreatedDate DateTime NOT NULL,
	FirstName VARCHAR(25) NOT NULL UNIQUE,
	LastName VARCHAR(25) NOT NULL,
	Address1 VARCHAR(30) NOT NULL,
	Address2 VARCHAR(30),
	City VARCHAR(30)NOT NULL,
	State VARCHAR(30)NOT NULL,
	Zip VARCHAR NOT NULL
);


CREATE TABLE Accounts
(
	AccountId VARCHAR(30) Primary key,
	CustomerId VARCHAR(30) FOREIGN KEY REFERENCES Customer(CustomerId), 
	AccountNumber VARCHAR(30) NOT NULL,
	CreatedDate DATETIME NOT NULL,
	Balance money NOT NULL

);

create table Transactions
(
	TransactionId VARCHAR(30) PRIMARY KEY,
	AccountId VARCHAR(30) FOREIGN KEY REFERENCES Accounts(AccountId),
	TransactionDate DATETIME,
	Amount money
);

CREATE TABLE Statements
(
	StatementID VARCHAR(30) PRIMARY KEY,
	AccountID VARCHAR(30) FOREIGN KEY REFERENCES Accounts(AccountId),
	CreatedDate DATETIME NOT NULL,
	StartDate DATETIME NOT NULL,
	EndDate DATETIME
);


INSERT INTO Customer (CreatedDate, FirstName, LastName, Address1, City, State, Zip) VALUES (2013-06-09, 'John', 'Doe', '123 Fake Street', 'San Diego', 'CA', '92101');

INSERT INTO Accounts (CreatedDate, AccountNumber, Balance) VALUES (2013-06-09, '1000', 937.67);

INSERT INTO Transactions (TransactionDate, Amount) VALUES  (2013-06-09, 1000);
INSERT INTO Transactions (TransactionDate, Amount) VALUES (2013-06-09, -55.34);
INSERT INTO Transactions (TransactionDate, Amount) VALUES (2013-06-09, -6.99);

INSERT INTO Statements (StartDate,EndDate) VALUES (2013-06-09, 2013-06-30);
INSERT INTO Statements (StartDate,EndDate) VALUES (22013-07-01, 2013-07-31);

INSERT INTO Customer (CreatedDate, FirstName, LastName, Address1, City, State, Zip) VALUES (2014-02-01, 'Jane', 'Doe', '124 Fake Street', 'San Diego', '92101');

INSERT INTO Accounts (CreatedDate, AccountNumber, Balance) VALUES (2014-02-01, '1002', 1197465.05);

INSERT INTO Transactions (TransactionDate, Amount) VALUES  (2014-02-01, 1200000);
INSERT INTO Transactions (TransactionDate, Amount) VALUES (2014-02-10, -2534.95);

INSERT INTO Statements (StartDate,EndDate) VALUES (2014-02-01, 2014-02-28);


