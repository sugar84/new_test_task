#!/usr/bin/env perl
use warnings;
use 5.34.0;

my $create_tables = q{

CREATE TABLE IF NOT EXISTS domains (
    domain_id INT AUTO_INCREMENT PRIMARY KEY,
    dname VARCHAR(255),
    user_id INT NOT NULL
)  ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
)  ENGINE=INNODB;

CREATE INDEX domain_user_id ON domains(user_id);

};


my $result_query = q{SELECT d.dname FROM domains d JOIN users u ON d.user_id = u.user_id WHERE u.name="Иван Иванов";};


say $result_query;