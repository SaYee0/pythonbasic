desc mysql.user;
show full columns from mysql.user;

# create user '아이디'@'접근가능한주소' identified by '비밀번호' 
select user, host from mysql.user;

create user 'test'@'localhost' identified by '1234';
create user 'anywhere'@'%' identified by '1234';
select user, host from mysql.user;
create user 'test2'@'192.168.0.%' identified by '1234';
create or replace user 'test'@'localhost' identified by '1234';
select user, host from mysql.user;
create user if no exists 'test'@'localhost' identified by '1234';
select user, host from mysql.user;
rename user 'test2'@'192.168.0.%' to 'test3'@'%';
select user, host from mysql.user;
set password for 'test3'@'%' = password('12345');
drop user 'test3'@'%';
drop user if exists 'anywhere'@'%';

# 데이터베이스 권한 부여하기_기존 권한 확인
show grants for 'test'@'localhost'; #권한 확인
show databases; #데이터베이스 보여줘
create database test; # test라는 데이터베이스 만들어줘
grant all privileges on test.* to 'test'@'localhost'; #테스트라는 데이터베이스에 있는 모든 테이블에 대한 권한 넘기기
flush privileges;
show grants for 'test'@'localhost'; #권한 다시 조회

revoke all on test.* From 'test'@'localhost';
flush privileges;
show grants for 'test'@'localhost'

create database `hohoh.o`;
show databases;

create database python;
use python;

CREATE TABLE table1 (column1 VARCHAR(100));

select database(); #현재 선택된 데이터베이스 확인
show tables; #그 안에 선택된 테이블 조회
rename table table1 to table2;
drop table table2;
show tables;

create table test_table(
	test_column1 int,
    test_column2 int,
    test_column3 int
);
desc test_table;

alter table test_table
add test_column4 int;
desc test_table;

alter table test_table
drop test_column1;
desc test_table;

alter table test_table
modify test_column4 int
first;
desc test_table;

alter table test_table
modify test_column4 int
after test_column2;
desc test_table;

alter table test_table
modify test_column4 int
before test_column2;
desc test_table;

alter table test_table
change test_column2 test_column2 VARCHAR(10);
desc test_table;