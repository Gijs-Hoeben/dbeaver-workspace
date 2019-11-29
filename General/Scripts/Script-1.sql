
drop table Navigationsystem;

CREATE TABLE Navigationsystem (
	ID INT PRIMARY KEY,
	Satnavsystem Text NOT NULL,
	CountryOfOrigin INT NOT NULL,
	NumberOfSatellites INT NOT NULL,
	Since DATE NOT NULL,
	Status text NOT NULL,
	FOREIGN KEY (CountryOfOrigin) REFERENCES country(ID)
);
CREATE TABLE country (
	ID int PRIMARY KEY,
	countryname text
	
);

insert into country VALUES (0, 'united states');

insert into country VALUES (1, 'Rusland');

insert into country VALUES (2, 'China');

insert into Navigationsystem VALUES (0, 'gps', 0, 32, 1967, 'Operationeel' );

insert into Navigationsystem VALUES (1, 'glonass', 1, 24, 1982, 'Operationeel' );

INSERT into Navigationsystem VALUES (2, 'Beidou', 2, 33, )