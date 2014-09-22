create database shn;
create user 'shn'@'localhost' identified by 'violet';
grant all privileges on shn.* to 'shn'@'localhost' with grant option;
flush privileges;

insert into users values (1, 'duncanssmith@gmail.com', 'Duncan Smith', '2014-09-22 11:39:14', '2014-09-22 11:39:14');
insert into users values (2, 'joeblow@jb.com', 'Joe Blow', '2014-09-22 11:39:14', '2014-09-22 11:39:14');
insert into users values (3, 'sueblue@gmail.com', 'Sue Blue', '2014-09-22 11:39:14', '2014-09-22 11:39:14');
