create user 'aurelioanselmo'@'localhost' Identified WITH SHA256_PASSWORD by 'Ljpwzp1VLMMZ3!';
GRANT ALL ON *.* TO 'aurelioanselmo'@'localhost';

create user 'mikejohnson'@'localhost' Identified WITH SHA256_PASSWORD by 'XyoJSYHHNYtp6!';
  GRANT select,insert,update,delete,show view
on finaldb.* to 'mikejohnson'@'localhost';

create user 'guestfisherman'@'localhost' Identified WITH SHA256_PASSWORD by '7I5M96ftCDx0y!';
  GRANT select on finaldb.* to 'guestfisherman'@'localhost';
