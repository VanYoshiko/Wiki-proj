#/bin/sh

CREATE TABLE IF NOT EXISTS transactions (
	transaction_id INTEGER 'PRIMARY KEY AUTOINCREMENT,'
	date TEXT,
	time INTEGER,
	category TEXT,
	description TEXT,
	amount INTEGER,
	item TEXT,
	client TEXT
);

-- CREATE TABLE IF NOT EXISTS categories (
-- 	categories_id INTEGER 'PRIMARY KEY AUTOINCREMENT,'
-- 	category TEXT,
-- 	description TEXT,
-- 	yearly INTEGER,
-- 	monthly INTEGER,
-- 	weekly INTEGER,
-- );

.mode csv
.headers ON
.import "/mnt/sharedlocal/home/irok/remotes/Courses_online.git/finance/finance.csv" transactions
