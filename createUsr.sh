#!/bin/bash

read -p "Enter Nextcloud database username: " db_user
read -s -p "Enter password for user '$db_user': " db_pass
echo  # Move to the next line after password input

sudo mysql -u root <<EOF
CREATE DATABASE nextcloud;
CREATE USER '$db_user'@'localhost' IDENTIFIED BY '$db_pass';
GRANT ALL PRIVILEGES ON nextcloud.* TO '$db_user'@'localhost';
FLUSH PRIVILEGES;
EOF

echo "Database 'nextcloud' and user '$db_user' created successfully!"
