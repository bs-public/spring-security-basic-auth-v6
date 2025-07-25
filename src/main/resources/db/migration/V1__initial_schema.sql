-- V<Version>__<Description>.sql
CREATE TABLE role (
  id INT AUTO_INCREMENT PRIMARY KEY,
  rolename varchar(255) NOT NULL
);

CREATE TABLE user (
  id int(11) AUTO_INCREMENT PRIMARY KEY,
  email varchar(255) NOT NULL,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  role_id int(11) NOT NULL,
  FOREIGN KEY (role_id) REFERENCES role (id)
);
