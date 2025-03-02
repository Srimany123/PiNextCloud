read -p "enter the username for the mysql" usrname
read -p "enter the password for the mysql" usrpass
sudo mysql -u $usrname -p '$usrpass'
