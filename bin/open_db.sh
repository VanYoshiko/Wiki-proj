DB_FILE="/mnt/sharedlocal/home/irok/remotes/Courses_online.git/finance/finance.db"
sqlite3 "$DB_FILE" <<EOF
.read /mnt/sharedlocal/home/irok/Courses_online.git/finance/expenses.sql
SELECT * FROM transactions
EOF
