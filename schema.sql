DROP TABLE bitcoin;
DROP TABLE litecoin;
DROP TABLE tesla;

CREATE TABLE bitcoin (
	index SERIAL,
	name VARCHAR NOT NULL,
	high DECIMAL,
	low DECIMAL,
	open DECIMAL,
	close DECIMAL,
	date VARCHAR NOT NULL PRIMARY KEY
);

CREATE TABLE litecoin (
	index SERIAL PRIMARY KEY,
	name VARCHAR NOT NULL,
	high DECIMAL,
	low DECIMAL,
	open DECIMAL,
	close DECIMAL,
	date VARCHAR NOT NULL,
	FOREIGN KEY (date) REFERENCES bitcoin (date)
);

CREATE TABLE tesla (
	index SERIAL PRIMARY KEY,
	high DECIMAL,
	low DECIMAL,
	open DECIMAL,
	close DECIMAL,
	date VARCHAR NOT NULL,
	FOREIGN KEY (date) REFERENCES bitcoin (date)
);
