--
-- Create & load e_t_s.user table
--

CREATE DATABASE IF NOT EXISTS `e_t_s`;
USE `e_t_s`;

--
-- Host: localhost    Database: e_t_s
-- ------------------------------------------------------
-- Server version       5.5.17

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`
 (
  `User`      char(8)          NOT NULL DEFAULT '',
  `Pswd`      char(16)         NOT NULL DEFAULT '',
  `Nm_Pfx`    char(20)         NOT NULL DEFAULT '',
  `Nm_Fst`    char(20)         NOT NULL DEFAULT '',
  `Nm_Mid`    char(20)         NOT NULL DEFAULT '',
  `Nm_Lst`    char(20)         NOT NULL DEFAULT '',
  `Nm_Sfx`    char(20)         NOT NULL DEFAULT '',
  `Addr`      int(10) unsigned NOT NULL DEFAULT '0',
  `Phn`       char(12)         NOT NULL DEFAULT '',
  `Phn2`      char(12)         NOT NULL DEFAULT '',
  `Email`     char(60)         NOT NULL DEFAULT '',
  `Email2`    char(60)         NOT NULL DEFAULT '',
  `TMS_Crtd`  timestamp        NOT NULL DEFAULT '0000-00-00 00:00:00',
  `User_Crtd` char(8)          NOT NULL DEFAULT '',
  `TMS_Updt`  timestamp        NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `User_Updt` char(8)          NOT NULL DEFAULT '',
  PRIMARY KEY (`User`),
  KEY `User_Address_fk01` (`Addr`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Load initial data for table `user`
--

LOCK TABLES `user` WRITE;
ALTER TABLE `user` DISABLE KEYS;
INSERT INTO `user`
  VALUES ('ETS_USER','pswd','','ETS','','User','','1','801-776-5081','801-682-6855','ETS.User@GMail.com','','2012-02-03 17:47:34','ETS_USER','2012-02-08 17:29:18','ETS_USER');
INSERT INTO `user`
  VALUES ('DJM001','pswd','','Dan','','Merkling','','3','801-776-5081','801-682-6855','Dan.Merkling@GMail.com','Dan.Merkling@GMail.com','2012-02-03 17:47:34','ETS_USER','2012-02-08 17:29:18','ETS_USER');
INSERT INTO `user`
  VALUES ('DXE001','pswd','','Dave','','Erekson','','4','801-776-5081','801-682-6855','EreksonD@GMail.com','EreksonD@GMail.com','2012-02-03 17:47:34','ETS_USER','2012-02-08 17:29:18','ETS_USER');
INSERT INTO `user`
  VALUES ('RXF001','pswd','','Ron','','Floisand','','5','801-776-5081','801-682-6855','Ron.Floisand@GMail.com','Ron.Floisand@GMail.com','2012-02-03 17:47:34','ETS_USER','2012-02-08 17:29:18','ETS_USER');
INSERT INTO `user`
  VALUES ('BXC001','pswd','','Brian','','Corcoran','','6','801-776-5081','801-682-6855','BPCorky1@GMail.com','BPCorky1@GMail.com','2012-02-03 17:47:34','ETS_USER','2012-02-08 17:29:18','ETS_USER');
INSERT INTO `user`
  VALUES ('RXP001','pswd','','Ricardo','','Pozo','','7','801-776-5081','801-682-6855','RicardoP9900@GMail.com','RicardoP9900@GMail.com','2012-02-03 17:47:34','ETS_USER','2012-02-08 17:29:18','ETS_USER');
INSERT INTO `user`
  VALUES ('RXM001','pswd','','Ron','','Murdoch','','8','801-776-5081','801-682-6855','Ron.Murdoch1945@GMail.com','Ron.Murdoch1945@GMail.com','2012-02-03 17:47:34','ETS_USER','2012-02-08 17:29:18','ETS_USER');
INSERT INTO `user`
  VALUES ('JXL001','pswd','','James','','Bollinger','','9','801-776-5081','801-682-6855','jamesleticiab@GMail.com','jamesleticiab@GMail.com','2012-02-03 17:47:34','ETS_USER','2012-02-08 17:29:18','ETS_USER');

-- ALTER TABLE `user` ENABLE KEYS;
UNLOCK TABLES;

--
-- Create & load e_t_s.vendor table
--

CREATE DATABASE IF NOT EXISTS `e_t_s`;
USE `e_t_s`;

--
-- Host: localhost    Database: e_t_s
-- ------------------------------------------------------
-- Server version       5.5.17
--

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
CREATE TABLE `vendor`
 (
  `Vndr`      char(16)         NOT NULL DEFAULT '',
  `Typ`       char(4)          NOT NULL DEFAULT '',
  `Nm`        char(40)         NOT NULL DEFAULT '',
  `Addr`      int(10) unsigned NOT NULL DEFAULT '0',
  `Phn`       char(12)         NOT NULL DEFAULT '',
  `Phn2`      char(12)         NOT NULL DEFAULT '',
  `Email`     char(60)         NOT NULL DEFAULT '',
  `Email2`    char(60)         NOT NULL DEFAULT '',
  `TMS_Crtd`  datetime         NOT NULL DEFAULT '0000-00-00 00:00:00',
  `User_Crtd` char(8)          NOT NULL DEFAULT '',
  `TMS_Updt`  datetime         NOT NULL DEFAULT '0000-00-00 00:00:00',
  `User_Updt` char(8)          NOT NULL DEFAULT '',
  PRIMARY KEY (`Vndr`),
  KEY `Vendor_Address_fk01` (`Addr`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Load initial data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
ALTER TABLE `vendor` DISABLE KEYS;

INSERT INTO `vendor`
  VALUES ('Ford','AMKR','Ford Motor Company',2,'','','','','2012-01-09 14:17:36','ETS_USER','2012-02-08 10:30:05','ETS_USER');

-- ALTER TABLE `vendor` ENABLE KEYS;
UNLOCK TABLES;

--
-- Create & load e_t_s.vehicle table
--

CREATE DATABASE IF NOT EXISTS `e_t_s`;
USE `e_t_s`;

--
-- Host: localhost    Database: e_t_s
-- ------------------------------------------------------
-- Server version       5.5.17
--

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE `vehicle`
 (
  `Stck_No`    int(10) unsigned NOT NULL DEFAULT '0',
  `VIN`        char(18)         NOT NULL DEFAULT '',
  `Typ`        char(4)          NOT NULL DEFAULT 'A',
  `Vndr`       char(16)         NOT NULL DEFAULT '',
  `Mdl`        char(10)         NOT NULL DEFAULT '',
  `Yr`         int(4) unsigned  NOT NULL DEFAULT '1990',
  `Clr`        char(4)          NOT NULL DEFAULT '',
  `Descr`       char(40)         NOT NULL DEFAULT '',
  `Stat`       char(4)          NOT NULL DEFAULT '',
  `Dt_Buy`     date             NOT NULL DEFAULT '1900-01-01',
  `Amt_Buy`    decimal(12,2)    NOT NULL DEFAULT '0.00',
  `Miles_Buy`  int(10) unsigned NOT NULL DEFAULT '0',
  `User_Buy`   char(8)          NOT NULL DEFAULT '',
  `Typ_Warr`   char(4)          NOT NULL DEFAULT '',
  `Miles_Warr` int(10) unsigned NOT NULL DEFAULT '0',
  `YN_Trade`   char(1)          NOT NULL DEFAULT 'N',
  `Vndr_Trade` char(16)         NOT NULL DEFAULT '',
  `Mdl_Trade`  char(10)         NOT NULL DEFAULT '',
  `Yr_Trade`   int(4) unsigned  NOT NULL DEFAULT '1990',
  `Dt_Sell`    date             NOT NULL DEFAULT '2199-12-31',
  `Amt_Sell`   decimal(9,2)     NOT NULL DEFAULT '0.00',
  `Miles_Sell` int(10) unsigned NOT NULL DEFAULT '0',
  `User_Sell`  char(8)          NOT NULL DEFAULT '',
  `TMS_Crtd`   datetime         NOT NULL DEFAULT '0000-00-00 00:00:00',
  `User_Crtd`  char(8)          NOT NULL DEFAULT '',
  `TMS_Updt`   datetime         NOT NULL DEFAULT '0000-00-00 00:00:00',
  `User_Updt`  char(8)          NOT NULL DEFAULT '',
  PRIMARY KEY (`Stck_No`),
  UNIQUE KEY `Stck_No_UNIQUE` (`Stck_No`),
  UNIQUE KEY `VIN_UNIQUE` (`VIN`),
  KEY `Vehicle_User_fk01` (`User_Buy`),
  KEY `Dt_Buy_idx01` (`Dt_Buy`,`VIN`),
  KEY `Dt_Sell_idx01` (`Dt_Sell`,`VIN`),
  KEY `Vehicle_Vendor_fk01` (`Vndr`),
  CONSTRAINT `Vehicle_User_fk01` FOREIGN KEY (`User_Buy`) REFERENCES `user` (`User`) ON DELETE NO ACTION ON UPDATE NO ACTION
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Load initial data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
ALTER TABLE `vehicle` DISABLE KEYS;

INSERT INTO `vehicle`
  VALUES (1,'123ABC456DEF','AUTO','Ford','TAUR',2006,'BRG','SE Sedan','WRKG','2011-12-01',2000.00,0,'ETS_USER','',0,'N','','',1990,'1900-12-31',0.00,0,'','2012-02-03 10:41:22','ETS_USER','2012-02-03 12:21:38','ETS_USER');

-- ALTER TABLE `vehicle` ENABLE KEYS;
UNLOCK TABLES;

--
-- Create & load e_t_s.tax table
--

CREATE DATABASE IF NOT EXISTS `e_t_s`;
USE `e_t_s`;

--
-- Host: localhost    Database: e_t_s
-- ------------------------------------------------------
-- Server version       5.5.17
--

--
-- Table structure for table `tax`
--

DROP TABLE IF EXISTS `tax`;
CREATE TABLE `tax`
 (
  `State`     char(2)               NOT NULL DEFAULT 'UT',
  `County`    char(10)              NOT NULL DEFAULT '',
  `City`      char(10)              NOT NULL DEFAULT '',
  `Dt_Eff`    date                  NOT NULL DEFAULT '1900-01-01',
  `Rate`      decimal(4,4) unsigned NOT NULL DEFAULT '0.0000',
  `TMS_Crtd`  datetime              NOT NULL DEFAULT '0000-00-00 00:00:00',
  `User_Crtd` char(8)               NOT NULL DEFAULT '',
  `TMS_Updt`  datetime              NOT NULL DEFAULT '0000-00-00 00:00:00',
  `User_Updt` char(8)               NOT NULL DEFAULT '',
  PRIMARY KEY (`State`,`County`,`City`,`Dt_Eff`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Load initial data for table `tax`
--

LOCK TABLES `tax` WRITE;
ALTER TABLE `tax` DISABLE KEYS;

INSERT INTO `tax`
  VALUES ('','','','1900-01-01',0.0100,'2012-02-03 10:46:57','ETS_USER','2012-01-09 14:59:00','ETS_USER');
INSERT INTO `tax`
  VALUES ('UT','','','1900-01-01',0.0650,'2012-02-03 10:46:57','ETS_USER','2012-01-09 14:59:00','ETS_USER');
INSERT INTO `tax`
  VALUES ('UT','DAVIS','','1900-01-01',0.0680,'2012-02-03 10:46:57','ETS_USER','2012-01-09 14:59:00','ETS_USER');
INSERT INTO `tax`
  VALUES ('UT','DAVIS','SYRCS','1900-01-01',0.0720,'2012-02-03 10:46:27','ETS_USER','2012-01-09 14:59:00','ETS_USER');

-- ALTER TABLE `tax` ENABLE KEYS;
UNLOCK TABLES;

--
-- Create & load e_t_s.stck_cust table
--

CREATE DATABASE IF NOT EXISTS `e_t_s`;
USE `e_t_s`;

--
-- Host: localhost    Database: e_t_s
-- ------------------------------------------------------
-- Server version       5.5.17
--

--
-- Table structure for table `stck_cust`
--

DROP TABLE IF EXISTS `stck_cust`;
CREATE TABLE `stck_cust`
 (
  `Stck_No` int(10) unsigned NOT NULL DEFAULT '0',
  `Cust`    int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Stck_No`,`Cust`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Load initial data for table `stck_cust`
--

LOCK TABLES `stck_cust` WRITE;
ALTER TABLE `stck_cust` DISABLE KEYS;

INSERT INTO `stck_cust`
  VALUES ('1','1');

-- ALTER TABLE `stck_cust` ENABLE KEYS;
UNLOCK TABLES;

--
-- Create & load e_t_s.nxt_nmbr table
--

CREATE DATABASE IF NOT EXISTS `e_t_s`;
USE `e_t_s`;

--
-- Host: localhost    Database: e_t_s
-- ------------------------------------------------------
-- Server version       5.5.17
--

--
-- Table structure for table `nxt_nmbr`
--

DROP TABLE IF EXISTS `nxt_nmbr`;
CREATE TABLE `nxt_nmbr`
 (
  `Sys`       char(4)          NOT NULL DEFAULT 'ETS',
  `Desc01`    char(40)         NOT NULL DEFAULT '',
  `NN01`      int(10) unsigned NOT NULL DEFAULT '0',
  `Desc02`    char(40)         NOT NULL DEFAULT '',
  `NN02`      int(10) unsigned NOT NULL DEFAULT '0',
  `Desc03`    char(40)         NOT NULL DEFAULT '',
  `NN03`      int(10) unsigned NOT NULL DEFAULT '0',
  `Desc04`    char(40)         NOT NULL DEFAULT '',
  `NN04`      int(10) unsigned NOT NULL DEFAULT '0',
  `Desc05`    char(40)         NOT NULL DEFAULT '',
  `NN05`      int(10) unsigned NOT NULL DEFAULT '0',
  `Desc06`    char(40)         NOT NULL DEFAULT '',
  `NN06`      int(10) unsigned NOT NULL DEFAULT '0',
  `Desc07`    char(40)         NOT NULL DEFAULT '',
  `NN07`      int(10) unsigned NOT NULL DEFAULT '0',
  `Desc08`    char(40)         NOT NULL DEFAULT '',
  `NN08`      int(10) unsigned NOT NULL DEFAULT '0',
  `Desc09`    char(40)         NOT NULL DEFAULT '',
  `NN09`      int(10) unsigned NOT NULL DEFAULT '0',
  `Desc10`    char(40)         NOT NULL DEFAULT '',
  `NN10`      int(10) unsigned NOT NULL DEFAULT '0',
  `Desc11`    char(40)         NOT NULL DEFAULT '',
  `NN11`      int(10) unsigned NOT NULL DEFAULT '0',
  `Desc12`    char(40)         NOT NULL DEFAULT '',
  `NN12`      int(10) unsigned NOT NULL DEFAULT '0',
  `Desc13`    char(40)         NOT NULL DEFAULT '',
  `NN13`      int(10) unsigned NOT NULL DEFAULT '0',
  `Desc14`    char(40)         NOT NULL DEFAULT '',
  `NN14`      int(10) unsigned NOT NULL DEFAULT '0',
  `Desc15`    char(40)         NOT NULL DEFAULT '',
  `NN15`      int(10) unsigned NOT NULL DEFAULT '0',
  `Desc16`    char(40)         NOT NULL DEFAULT '',
  `NN16`      int(10) unsigned NOT NULL DEFAULT '0',
  `TMS_Crtd`  datetime         NOT NULL DEFAULT '0000-00-00 00:00:00',
  `User_Crtd` char(8)          NOT NULL DEFAULT '',
  `TMS_Updt`  datetime         NOT NULL DEFAULT '0000-00-00 00:00:00',
  `User_Updt` char(8)          NOT NULL DEFAULT '',
  PRIMARY KEY (`Sys`),
  UNIQUE KEY `Sys_UNIQUE` (`Sys`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Load initial data for table `nxt_nmbr`
--

LOCK TABLES `nxt_nmbr` WRITE;
ALTER TABLE `nxt_nmbr` DISABLE KEYS;

INSERT INTO `nxt_nmbr`
  VALUES ('ETS','Stock Number',1,'Customer ID',1,'Address ID',8,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'',0,'2012-02-03 10:45:32','ETS_USER','2012-02-03 12:36:03','ETS_USER');

-- ALTER TABLE `nxt_nmbr` ENABLE KEYS;
UNLOCK TABLES;


--
-- Create & load e_t_s.address table
--

CREATE DATABASE IF NOT EXISTS `e_t_s`;
USE `e_t_s`;

--
-- Host: localhost    Database: e_t_s
-- ------------------------------------------------------
-- Server version       5.5.17

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`
 (
  `Addr`      int(10) unsigned NOT NULL DEFAULT '0',
  `Street`    char(40)         NOT NULL DEFAULT '',
  `Street2`   char(40)         NOT NULL DEFAULT '',
  `City`      char(10)         NOT NULL DEFAULT '',
  `State`     char(2)          NOT NULL DEFAULT 'UT',
  `Zip`       char(10)         NOT NULL DEFAULT '',
  `TMS_Crtd`  datetime         NOT NULL DEFAULT '0000-00-00 00:00:00',
  `User_Crtd` char(8)          NOT NULL DEFAULT '',
  `TMS_Updt`  datetime         NOT NULL DEFAULT '0000-00-00 00:00:00',
  `User_Updt` char(8)          NOT NULL DEFAULT '',
  PRIMARY KEY (`Addr`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Load initial data for table `address`
--

LOCK TABLES `address` WRITE;
ALTER TABLE `address` DISABLE KEYS;

INSERT INTO `address`
  VALUES (1,'123 Main St.','','WVC','UT','84101','2012-01-09 14:13:57','ETS_USER','2012-01-09 14:13:57','ETS_USER');
INSERT INTO `address`
  VALUES (2,'Ford Blvd.','','DTRT','MI','12345','2012-01-09 14:13:57','ETS_USER','2012-01-09 14:13:57','ETS_USER');
INSERT INTO `address`
  VALUES (3,'1648 W. 925 South','','SYRCS','UT','84075','2012-02-08 10:28:24','ETS_USER','2012-02-08 10:28:24','ETS_USER');
INSERT INTO `address`
  VALUES (4,'Dave Home','','SYRCS','UT','84075','2012-02-08 10:28:24','ETS_USER','2012-02-08 10:28:24','ETS_USER');
INSERT INTO `address`
  VALUES (5,'Ron Home','','SYRCS','UT','84075','2012-02-08 10:28:24','ETS_USER','2012-02-08 10:28:24','ETS_USER');
INSERT INTO `address`
  VALUES (6,'Brian Home','','SYRCS','UT','84075','2012-02-08 10:28:24','ETS_USER','2012-02-08 10:28:24','ETS_USER');
INSERT INTO `address`
  VALUES (7,'Ricardo Home','','SYRCS','UT','84075','2012-02-08 10:28:24','ETS_USER','2012-02-08 10:28:24','ETS_USER');
INSERT INTO `address`
  VALUES (8,'Jim Home','','SYRCS','UT','84075','2012-02-08 10:28:24','ETS_USER','2012-02-08 10:28:24','ETS_USER');
  
-- ALTER TABLE `address` ENABLE KEYS;
UNLOCK TABLES;

--
-- Create & load e_t_s.cd_typ table
--

CREATE DATABASE IF NOT EXISTS `e_t_s`;
USE `e_t_s`;

--
-- Host: localhost    Database: e_t_s
-- ------------------------------------------------------
-- Server version       5.5.17

--
-- Table structure for table `cd_typ`
--

DROP TABLE IF EXISTS `cd_typ`;
CREATE TABLE `cd_typ`
 (
  `Sys`       char(4)          NOT NULL DEFAULT 'MVA',
  `Sgmt`      char(4)          NOT NULL DEFAULT '',
  `Desc`      char(40)         NOT NULL DEFAULT '',
  `Len`       int(10) unsigned NOT NULL DEFAULT '1',
  `YN_Num`    char(1)          NOT NULL DEFAULT 'N',
  `YN_UCase`  char(1)          NOT NULL DEFAULT 'Y',
  `TMS_Crtd`  datetime         NOT NULL DEFAULT '0000-00-00 00:00:00',
  `User_Crtd` char(8)          NOT NULL DEFAULT '',
  `TMS_Updt`  datetime         NOT NULL DEFAULT '0000-00-00 00:00:00',
  `User_Updt` char(8)          NOT NULL DEFAULT '',
  PRIMARY KEY (`Sys`,`Sgmt`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Load initial data for table `cd_typ`
--

LOCK TABLES `cd_typ` WRITE;
ALTER TABLE `cd_typ` DISABLE KEYS;

INSERT INTO `cd_typ`
  VALUES ('ETS','CLR','Color',4,'N','Y','2012-02-03 10:43:24','ETS_USER','2012-01-09 14:34:48','ETS_USER');
INSERT INTO `cd_typ`
  VALUES ('ETS','CNTY','County Code',10,'N','Y','2012-02-03 10:43:24','ETS_USER','2012-01-09 14:34:48','ETS_USER');
INSERT INTO `cd_typ`
  VALUES ('ETS','CTY','City Code',10,'N','Y','2012-02-03 10:43:24','ETS_USER','2012-01-09 14:34:48','ETS_USER');
INSERT INTO `cd_typ`
  VALUES ('ETS','EXPT','Expense Type',4,'N','Y','2012-02-03 12:49:37','ETS_USER','2012-02-03 12:53:07','ETS_USER');
INSERT INTO `cd_typ`
  VALUES ('ETS','MDL','Vehicle Model',10,'N','Y','2012-02-03 10:43:24','ETS_USER','2012-02-03 11:51:50','ETS_USER');
INSERT INTO `cd_typ`
  VALUES ('ETS','ST','State Abbreviation',2,'N','Y','2012-02-03 10:43:24','ETS_USER','2012-01-09 14:25:17','ETS_USER');
INSERT INTO `cd_typ`
  VALUES ('ETS','STAT','Status Code',4,'N','Y','2012-02-03 12:49:37','ETS_USER','2012-02-03 12:53:07','ETS_USER');
INSERT INTO `cd_typ`
  VALUES ('ETS','VEHT','Vehicle Type',4,'N','Y','2012-02-03 12:49:37','ETS_USER','2012-02-03 12:53:07','ETS_USER');
INSERT INTO `cd_typ`
  VALUES ('ETS','VNDT','Vendor Type',4,'N','Y','2012-02-03 12:49:37','ETS_USER','2012-02-03 12:53:07','ETS_USER');
INSERT INTO `cd_typ`
  VALUES ('ETS','WARR','Warranty Type',2,'N','Y','2012-02-03 12:49:37','ETS_USER','2012-02-03 12:53:07','ETS_USER');
INSERT INTO `cd_typ`
  VALUES ('ETS','YN','Yes/No',1,'N','Y','2012-02-03 11:48:58','ETS_USER','2012-02-03 11:49:17','ETS_USER');

-- ALTER TABLE `cd_typ` ENABLE KEYS;
UNLOCK TABLES;


--
-- Create & load e_t_s.cd_val table
--

CREATE DATABASE IF NOT EXISTS `e_t_s`;
USE `e_t_s`;

--
-- Host: localhost    Database: e_t_s
-- ------------------------------------------------------
-- Server version       5.5.17
--

--
-- Table structure for table `cd_val`
--

DROP TABLE IF EXISTS `cd_val`;
CREATE TABLE `cd_val`
 (
  `Sys`       char(4)  NOT NULL DEFAULT 'ETS',
  `Sgmt`      char(4)  NOT NULL DEFAULT '',
  `Cd`        char(10) NOT NULL DEFAULT '',
  `Val`       char(40) NOT NULL DEFAULT '',
  `Val2`      char(40) NOT NULL DEFAULT '',
  `TMS_Crtd`  datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `User_Crtd` char(8)  NOT NULL DEFAULT '',
  `TMS_Updt`  datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `User_Updt` char(8)  NOT NULL DEFAULT '',
  PRIMARY KEY (`Sys`,`Sgmt`,`Cd`),
  KEY `Cd_Val_Typ_fk01` (`Sys`,`Sgmt`),
  CONSTRAINT `Cd_Val_Typ_fk01`
    FOREIGN KEY (`Sys`, `Sgmt`)
     REFERENCES `cd_typ` (`Sys`, `Sgmt`)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Load initial data for table `cd_val`
--

LOCK TABLES `cd_val` WRITE;
ALTER TABLE `cd_val` DISABLE KEYS;

INSERT INTO `cd_val`
  VALUES ('ETS','CLR','BLK','Black','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','CLR','BLU','Blue','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','CLR','BRG','Burgundy','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','CLR','GRN','Green','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','CLR','RED','Red','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','CLR','WHT','White','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','CNTY','DAVIS','Davis','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','CNTY','SALTLAKE','Salt Lake','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','CNTY','UTAH','Utah','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','CNTY','WEBER','Weber','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','CTY','DTRT','Detroit','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','CTY','NSL','North Salt Lake','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','CTY','SLC','Salt Lake City','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','CTY','SYRCS','Syracuse','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','CTY','WVC','West Valley City','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','EXPT','FEE','Fees','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','EXPT','PANT','Paint','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','EXPT','PART','Parts','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','EXPT','TAX','Taxes','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','EXPT','TIRE','Tires','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','MDL','AVEO','Aveo','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','MDL','JETT','Jetta','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','MDL','ODYS','Odyssey','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','MDL','TAUR','Taurus','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','MDL','VETT','Corvette','','2012-02-03 10:45:01','ETS_USER','2012-01-09 14:52:21','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','ST','CO','Colorado','Centennial State','2012-02-03 10:45:01','ETS_USER','2012-02-06 11:20:03','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','ST','ID','Idaho','Gem State','2012-02-03 10:45:01','ETS_USER','2012-02-06 11:20:03','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','ST','UT','Utah','Beehive State','2012-02-03 10:45:01','ETS_USER','2012-02-06 11:20:03','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','VEHT','AUTO','Automobile','','2012-02-03 10:45:01','ETS_USER','2012-02-03 12:50:40','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','VEHT','MCYC','Motorcycle','','2012-02-03 10:45:01','ETS_USER','2012-02-03 12:50:40','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','VEHT','TRCK','Pickup Truck','','2012-02-03 10:45:01','ETS_USER','2012-02-03 12:50:40','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','VNDT','AMKR','Auto Maker','','2012-02-03 10:45:01','ETS_USER','2012-02-03 12:50:40','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','VNDT','MACH','Machine Shop','','2012-02-03 10:45:01','ETS_USER','2012-02-03 12:50:40','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','VNDT','PANT','Paint Shop','','2012-02-03 10:45:01','ETS_USER','2012-02-03 12:50:40','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','VNDT','PART','Auto Parts Supplier','','2012-02-03 10:45:01','ETS_USER','2012-02-03 12:50:40','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','YN','N','No','','2012-02-03 12:11:14','ETS_USER','2012-02-03 12:11:37','ETS_USER');
INSERT INTO `cd_val`
  VALUES ('ETS','YN','Y','Yes','','2012-02-03 12:11:14','ETS_USER','2012-02-03 12:11:37','DJM001');

-- ALTER TABLE `cd_val` ENABLE KEYS;
UNLOCK TABLES;


--
-- Create & load e_t_s.customer table
--

CREATE DATABASE IF NOT EXISTS `e_t_s`;
USE `e_t_s`;

--
-- Host: localhost    Database: e_t_s
-- ------------------------------------------------------
-- Server version       5.5.17
--

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`
 (
  `Cust`      int(11)          NOT NULL DEFAULT '0',
  `TIN`       char(12)         NOT NULL DEFAULT '',
  `Nm_Fst`    char(20)         NOT NULL DEFAULT '',
  `Nm_Lst`    char(20)         NOT NULL DEFAULT '',
  `Addr`      int(10) unsigned NOT NULL DEFAULT '0',
  `Phn`       char(12)         NOT NULL DEFAULT '',
  `Phn2`      char(12)         NOT NULL DEFAULT '',
  `Email`     char(60)         NOT NULL DEFAULT '',
  `Email2`    char(60)         NOT NULL DEFAULT '',
  `TMS_Crtd`  datetime         NOT NULL DEFAULT '0000-00-00 00:00:00',
  `User_Crtd` char(8)          NOT NULL DEFAULT '',
  `TMS_Updt`  datetime         NOT NULL DEFAULT '0000-00-00 00:00:00',
  `User_Updt` char(8)          NOT NULL DEFAULT '',
  PRIMARY KEY (`Cust`),
  UNIQUE KEY `Cust_UNIQUE` (`Cust`),
  UNIQUE KEY `TIN_UNIQUE` (`TIN`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Load initial data for table `customer`
--

LOCK TABLES `customer` WRITE;
ALTER TABLE `customer` DISABLE KEYS;

INSERT INTO `customer`
  VALUES (1,'123-45-6789','Dummy','Customer','1','123-456-7890',' ','Dummy.Customer@GMail.com',' ','2012-01-09 14:13:57','ETS_USER','2012-01-09 14:13:57','ETS_USER');

-- ALTER TABLE `customer` ENABLE KEYS;
UNLOCK TABLES;


--
-- Create & load e_t_s.expense table
--

CREATE DATABASE IF NOT EXISTS `e_t_s`;
USE `e_t_s`;

--
-- Host: localhost    Database: e_t_s
-- ------------------------------------------------------
-- Server version       5.5.17
--

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
CREATE TABLE `expense`
 (
  `Stck_No`   int(10) unsigned NOT NULL DEFAULT '0',
  `Seq`       int(10) unsigned NOT NULL DEFAULT '0',
  `Dt`        date             NOT NULL DEFAULT '0000-00-00',
  `Typ`       char(4)          NOT NULL DEFAULT '',
  `Vndr`      char(16)         NOT NULL DEFAULT '',
  `Desc`      char(40)         NOT NULL DEFAULT '',
  `Qty`       decimal(5,3)     NOT NULL DEFAULT '0.000',
  `Price`     decimal(7,3)     NOT NULL DEFAULT '0.000',
  `Tax`       decimal(5,2)     NOT NULL DEFAULT '0.00',
  `TMS_Crtd`  datetime         NOT NULL DEFAULT '0000-00-00 00:00:00',
  `User_Crtd` char(8)          NOT NULL DEFAULT '',
  `TMS_Updt`  datetime         NOT NULL DEFAULT '0000-00-00 00:00:00',
  `User_Updt` char(8)          NOT NULL DEFAULT '',
  PRIMARY KEY (`Stck_No`,`Seq`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Load initial data for table `expense`
--

LOCK TABLES `expense` WRITE;
ALTER TABLE `expense` DISABLE KEYS;

INSERT INTO `expense`
  VALUES (1,1,'2012-01-01','PART','Ford','Replacement alternator',1.0,123.45,32.32,'2012-01-09 14:13:57','ETS_USER','2012-01-09 14:13:57','ETS_USER');

-- ALTER TABLE `expense` ENABLE KEYS;
UNLOCK TABLES;