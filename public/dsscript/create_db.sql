drop database shn;

create database shn;
create user 'shn'@'localhost' identified by 'violet';
grant all privileges on shn.* to 'shn'@'localhost' with grant option;
flush privileges;

