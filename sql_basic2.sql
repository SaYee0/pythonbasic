show databases;
use python;

create table test(
  id int auto_increment primary key
);

desc test;
show tables;

insert into test values(88);

select * from test;

select max(id)
  from test;
  
  
delete from test where id = 100;
select * from test;

-- 맨 마지막 값을 지우고 나서 다시 생성을 하면 한번 삭제된 primary key는 다시 생성되지 않는다. 다음 수인 101이 생성된다.  
insert into test values();
select * from test;


delete from test;
select * from test;

insert into test values();
select * from test;

show table status where name = 'test';

alter table test auto_increment = 1;


set @count=0;
update test set id=@count:=@count+1

delete from table1;

create table table2(
column1 varchar(10),
column2 varchar(10),
column3 varchar(10)
);

desc table2;

insert into table2(column1, column2, column3) values ('a','aa','aaa');
select * from table2;

insert into table2 values('b','bb','bbb');

update table2 set column1 = 'z';
update table2 set column1 = 'x' where column2 = 'aa';
update table2 
   set column1 = 'y',
       column2 = 'yy'
 where column2 = 'aa';



drop table if exists day_visitor_realtime;
create table if not exists day_visitor_realtime(
ipaddress varchar(16) not null,
iptime_first datetime,
before_url varchar(250),
device_info varchar(40),
os_info varchar(40),
session_id varchar(40));

desc day_visitor_realtime;

insert into day_visitor_realtime(
	ipaddress, iptime_first, before_url, device_info
)
values('192.168.0.1', '2021-12-19 16:14:28', 'localhost', 'PC'),
      ('192.168.0.2', '2021-12-23 16:14:31', 'localhost', 'iPhone');

select * from day_visitor_realtime;
desc day_visitor_realtime;

insert into day_visitor_realtime(
	ipaddress, iptime_first, before_url, device_info
);

delete from day_visitor_realtime where ipaddress = 'asdf';

insert into python.day_visitor_realtime(session_id) values('12345.567890');
insert into python.day_visitor_realtime(session_id) values('125.567890');
insert into python.day_visitor_realtime(session_id) values('12345.890');
insert into python.day_visitor_realtime(session_id) values('890');
insert into python.day_visitor_realtime(session_id) values('567');


select * from day_visitor_realtime;

DROP TABLE IF EXISTS day_visitor_realtime;
CREATE TABLE day_visitor_realtime (
  id INT,
  ipaddress varchar(16),
  iptime_first datetime,
  before_url varchar(250),
  device_info varchar(40),
  os_info varchar(40),
  session_id varchar(80),
  PRIMARY KEY(id)
); 

select * from day_visitor_realtime;
desc day_visitor_realtime;

CREATE TABLE orders (
  order_id INT,
  customer_id INT,
  order_date DATETIME,
  PRIMARY KEY(order_id)
);
desc orders;
select * from orders;

CREATE TABLE order_detail (
  order_id INT,
  product_id INT,
  product_name VARCHAR(200),
  order_date DATETIME,
  CONSTRAINT FK_ORDERS_ORDERID FOREIGN KEY (order_id) REFERENCES orders(order_id),
  PRIMARY KEY(order_id, product_id)
);
desc order_detail;
select * from order_detail;
select * from users;
desc users;
use python;
delete from users where id = 3;

CREATE TABLE `users` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `email` varchar(255) COLLATE utf8_bin NOT NULL,
    `password` varchar(255) COLLATE utf8_bin NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin
AUTO_INCREMENT=1 ;