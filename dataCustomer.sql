create database mydemo;

use mydemo;

show databases;

CREATE TABLE dataCustomer
(
	custid varchar(6) primary key,
    fname varchar(30),
    lastname varchar(30),
    city varchar(15),
    age int(10),
    mobileNo varchar(10),
    occupation varchar(10),
    dob date
);

show tables;

insert into dataCustomer values('C0001','')