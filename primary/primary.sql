
-- MySQL 5.6 -  MySQL 5.7
CREATE USER IF NOT EXISTS `repl`@`%` IDENTIFIED BY PASSWORD '*79536349C907C75D6CB57238E75EB257B429A751';
GRANT REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO `repl`@`%` IDENTIFIED BY PASSWORD '*79536349C907C75D6CB57238E75EB257B429A751';
GRANT SELECT, PROCESS, REPLICATION CLIENT ON *.* TO `monuser`@`%` IDENTIFIED BY PASSWORD '*EC6A383BDA085D07ECA7FE38DEA96477ECA56C76';
GRANT ALL PRIVILEGES ON *.* TO `klarsen`@`%` IDENTIFIED BY PASSWORD '*CC44899BBE450A06A0823407493390266377825C'; 
GRANT ALL PRIVILEGES ON *.* TO `flyway`@`%` IDENTIFIED BY PASSWORD '*DBC951CE0DF3D47F60C0BD71C691A62FF17AF156'; 
CREATE USER 'releem'@'%' identified by password '*8EFC024BD6D9F2D0B582304B719ED8200F3121FB';
GRANT PROCESS, REPLICATION CLIENT, SHOW VIEW ON *.* TO 'releem'@'%';
GRANT SELECT ON performance_schema.events_statements_summary_by_digest TO 'releem'@'%';

CREATE database sbtest;
CREATE USER sbtest@'%' IDENTIFIED BY PASSWORD '*906D9FF079E51F68EBEDC560F0B32E91AEE0AA30';
GRANT ALL PRIVILEGES ON sbtest.* to sbtest@'%';


SET GLOBAL server_id = 1;

-- Alter user root to use caching_sha2_password authentication plugin set grants to root@%:
ALTER USER 'root'@'localhost' IDENTIFIED BY 's3cr3t';
CREATE USER IF NOT EXISTS 'root'@'%';
ALTER USER 'root'@'%' IDENTIFIED BY 's3cr3t';
GRANT ALL ON *.* TO 'root'@'%' WITH GRANT OPTION;

 FLUSH PRIVILEGES;