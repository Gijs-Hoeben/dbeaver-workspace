
CREATE TABLE Navigationsystem (
	ID INT PRIMARY KEY,
	Satnavsystem Text NOT NULL,
	CountryOfOrigin INT NOT NULL,
	NumberOfSatellites INT NOT NULL,
	since DATE NOT NULL,
	Status text NOT NULL
);

