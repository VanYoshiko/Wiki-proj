CREATE TABLE IF NOT EXISTS passwords (
	Title TEXT,
	URL TEXT,
	Username TEXT,
	Password TEXT,
	Notes TEXT,
	OTPAuth TEXT
);

.mode csv
.headers on
.output mypasswords.csv
SELECT * FROM passwords;
.output stdout

