# Update the package list to make sure you have the latest information
sudo apt update

# Install PostgreSQL
sudo apt install postgresql

# Switch to the PostgreSQL system user
sudo -i -u postgres

# Access the PostgreSQL interactive terminal
psql

# Create a new PostgreSQL user (replace 'your_user' and 'your_password' with your desired values)
CREATE USER postgres WITH PASSWORD 'test_password';

# Create a new database (replace 'your_database' with your desired database name)
CREATE DATABASE test_db;

# Grant privileges to the user on the database
GRANT ALL PRIVILEGES ON DATABASE test_db TO postgres;

# Exit the PostgreSQL interactive terminal
\q

# Exit the PostgreSQL system user shell
exit


[databases]
* = host=3.83.206.124 port=5432 dbname=test_db user=postgres password=test_password

[pgbouncer]
listen_addr = 0.0.0.0
listen_port = 6432
auth_type = md5
auth_file = /etc/pgbouncer/userlist.txt
logfile = /var/log/pgbouncer/pgbouncer.log

"pg_user" "pg_password"
