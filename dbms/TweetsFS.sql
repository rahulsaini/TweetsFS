SELECT User, Host, Password FROM mysql.user;

SELECT USER();

DROP USER tweetsfsUser;

CREATE USER 'tweetsfsUser'@'localhost' IDENTIFIED BY 'tweetsfs12345';

GRANT ALL PRIVILEGES ON mysql.* TO 'tweetsfsUser'@'localhost' IDENTIFIED BY 'tweetsfs12345' WITH GRANT OPTION;

GRANT ALL PRIVILEGES ON tweetsfs.* TO 'tweetsfsUser'@'localhost' IDENTIFIED BY 'tweetsfs12345' WITH GRANT OPTION;

UPDATE USER SET password=PASSWORD("") where User='root';

/* mysql -u root -proot