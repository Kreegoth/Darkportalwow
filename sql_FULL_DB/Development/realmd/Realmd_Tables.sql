-- MySQL dump 10.11
--
-- Host: localhost    Database: realmd
-- ------------------------------------------------------
-- Server version    5.0.45-Debian_1ubuntu3.1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `realmd_db_version`
--

DROP TABLE IF EXISTS `realmd_db_version`;
CREATE TABLE `realmd_db_version` (
  `required_10008_01_realmd_realmd_db_version` bit(1) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Last applied sql update to DB';

--
-- Dumping data for table `realmd_db_version`
--

LOCK TABLES `realmd_db_version` WRITE;
/*!40000 ALTER TABLE `realmd_db_version` DISABLE KEYS */;
INSERT INTO `realmd_db_version` VALUES
(NULL);
/*!40000 ALTER TABLE `realmd_db_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) unsigned NOT NULL auto_increment COMMENT 'Identifier',
  `username`      varchar(32) NOT NULL default '',
  `sha_pass_hash` varchar(40) NOT NULL default '',
  `gmlevel` tinyint(3) unsigned NOT NULL default '0',
  `sessionkey` longtext,
  `v` longtext,
  `s` longtext,
  `email` text,
  `joindate` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `last_ip` varchar(30) NOT NULL default '0.0.0.0',
  `failed_logins` int(11) unsigned NOT NULL default '0',
  `locked` tinyint(3) unsigned NOT NULL default '0',
  `last_login` timestamp NOT NULL default '0000-00-00 00:00:00',
  `active_realm_id` int(11) unsigned NOT NULL default '0',
  `expansion` tinyint(3) unsigned NOT NULL default '0',
  `mutetime` bigint(40) unsigned NOT NULL default '0',
  `locale` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `idx_gmlevel` (`gmlevel`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci ROW_FORMAT=DYNAMIC COMMENT='Account System';

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES
(1,'ADMINISTRATOR','a34b29541b87b7e4823683ce6c7bf6ae68beaaac',3,'','0','0','','2006-04-25 10:18:56','127.0.0.1',0,0,'0000-00-00 00:00:00',0,0,0,0),
(2,'GAMEMASTER','7841e21831d7c6bc0b57fbe7151eb82bd65ea1f9',2,'','0','0','','2006-04-25 10:18:56','127.0.0.1',0,0,'0000-00-00 00:00:00',0,0,0,0),
(3,'MODERATOR','a7f5fbff0b4eec2d6b6e78e38e8312e64d700008',1,'','0','0','','2006-04-25 10:19:35','127.0.0.1',0,0,'0000-00-00 00:00:00',0,0,0,0),
(4,'PLAYER','3ce8a96d17c5ae88a30681024e86279f1a38c041',0,'','0','0','','2006-04-25 10:19:35','127.0.0.1',0,0,'0000-00-00 00:00:00',0,0,0,0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account_banned`
--

DROP TABLE IF EXISTS `account_banned`;
CREATE TABLE `account_banned` (
  `id` int(11) NOT NULL default '0' COMMENT 'Account id',
  `bandate` bigint(40) NOT NULL default '0',
  `unbandate` bigint(40) NOT NULL default '0',
  `bannedby` varchar(50) NOT NULL,
  `banreason` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL default '1',
  PRIMARY KEY  (`id`,`bandate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Ban List';

--
-- Dumping data for table `account_banned`
--

LOCK TABLES `account_banned` WRITE;
/*!40000 ALTER TABLE `account_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_banned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ip_banned`
--

DROP TABLE IF EXISTS `ip_banned`;
CREATE TABLE `ip_banned` (
  `ip` varchar(32) NOT NULL default '0.0.0.0',
  `bandate` bigint(40) NOT NULL,
  `unbandate` bigint(40) NOT NULL,
  `bannedby` varchar(50) NOT NULL default '[Console]',
  `banreason` varchar(255) NOT NULL default 'no reason',
  PRIMARY KEY  (`ip`,`bandate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Banned IPs';

--
-- Dumping data for table `ip_banned`
--

LOCK TABLES `ip_banned` WRITE;
/*!40000 ALTER TABLE `ip_banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `ip_banned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realmcharacters`
--

DROP TABLE IF EXISTS `realmcharacters`;
CREATE TABLE `realmcharacters` (
  `realmid` int(11) unsigned NOT NULL default '0',
  `acctid` bigint(20) unsigned NOT NULL,
  `numchars` tinyint(3) unsigned NOT NULL default '0',
  PRIMARY KEY  (`realmid`,`acctid`),
  KEY (acctid)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Realm Character Tracker';

--
-- Dumping data for table `realmcharacters`
--

LOCK TABLES `realmcharacters` WRITE;
/*!40000 ALTER TABLE `realmcharacters` DISABLE KEYS */;
/*!40000 ALTER TABLE `realmcharacters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realmlist`
--

DROP TABLE IF EXISTS `realmlist`;
CREATE TABLE `realmlist` (
  `id` int(11) unsigned NOT NULL auto_increment,
  `name` varchar(32) NOT NULL default '',
  `address` varchar(32) NOT NULL default '127.0.0.1',
  `port` int(11) NOT NULL default '8085',
  `icon` tinyint(3) unsigned NOT NULL default '0',
  `realmflags` tinyint(3) unsigned NOT NULL default '2' COMMENT 'Supported masks: 0x1 (invalid, not show in realm list), 0x2 (offline, set by mangosd), 0x4 (show version and build), 0x20 (new players), 0x40 (recommended)',
  `timezone` tinyint(3) unsigned NOT NULL default '0',
  `allowedSecurityLevel` tinyint(3) unsigned NOT NULL default '0',
  `population` float unsigned NOT NULL default '0',
  `realmbuilds` varchar(64) NOT NULL default '',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `idx_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Realm System';

--
-- Dumping data for table `realmlist`
--

LOCK TABLES `realmlist` WRITE;
/*!40000 ALTER TABLE `realmlist` DISABLE KEYS */;
INSERT INTO `realmlist` VALUES
(1,'MaNGOS','127.0.0.1',8085,1,0,1,0,0,'');
/*!40000 ALTER TABLE `realmlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uptime`
--

DROP TABLE IF EXISTS `uptime`;
CREATE TABLE `uptime` (
  `realmid` int(11) unsigned NOT NULL,
  `starttime` bigint(20) unsigned NOT NULL default '0',
  `startstring` varchar(64) NOT NULL default '',
  `uptime` bigint(20) unsigned NOT NULL default '0',
  `maxplayers` smallint(5) unsigned NOT NULL default '0',
  PRIMARY KEY  (`realmid`,`starttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Uptime system';

--
-- Dumping data for table `uptime`
--

LOCK TABLES `uptime` WRITE;
/*!40000 ALTER TABLE `uptime` DISABLE KEYS */;
/*!40000 ALTER TABLE `uptime` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2008-01-10 11:37:06


-- Refer a friend

  -- better not to drop table here, because of custom data comment out drop some people may clear table if they choose
-- DROP TABLE `account_friends`;
CREATE TABLE IF NOT EXISTS `account_friends` (
    `id` int(11) unsigned NOT NULL default '0',
    `friend_id` int(11) unsigned NOT NULL default '0',
    `bind_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Bring date',
    `expire_date` datetime NOT NULL DEFAULT 0 COMMENT 'Expire date',
    PRIMARY KEY (`id`, `friend_id`)
) DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='Stores accounts for refer-a-friend system.';

-- Warden data table structure from TOM_RUS
DROP TABLE IF EXISTS `warden_data_result`;
CREATE TABLE `warden_data_result` (
  `id` int(4) NOT NULL auto_increment,
  `check` int(3) default NULL,
  `data` tinytext,
  `str` tinytext,
  `address` int(8) default NULL,
  `length` int(2) default NULL,
  `result` tinytext,
  `comment` text,
  PRIMARY KEY  (`id`)
) DEFAULT CHARSET=utf8;

-- realmd table update for warden
ALTER TABLE `account`
    ADD COLUMN `os` VARCHAR(4) DEFAULT '' NOT NULL AFTER `locale`;

-- Warden data from TOM_RUS
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','07F223143C69271AA2A851FECF6DC883A9D3A7DBA6FE26CC','','710730','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','C7D18F99DBC446A4B36E78B9130B6FA2E365B3D2D4199DF5','','28940','17','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','AA1A8559776F873F26954F15E49E6041EDC2C3766AD87A59','','21826','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','5F342A4D0EA9DB35F93FAE6E32670D810F017309817AA7C0','','676970','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','C57BD89DD447131EA2083784AB4DA8BD58CF3E182F1D8AF6','','690106','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','69AA85EFE8A1A990DA5ECFED4FAFD5B14F1D52EF2548FD15','','12905','36','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','083ECAD073DE2D61E3564B4BF767C9D1F8F15AA0495F5A76','','41096','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','C774D64EF60AD5A141FC56F3D02AE78AC147770FAE25D8FE','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','502C59CAFEA11E9584C13BFE75F85EB79936AEEE31B44165','','12194860','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','4FBE8978A662428C616AABD71DA5562E4AC21F54BEB8ADBF','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','83D3F7FD7DCA144AD8219A6A4E20F0CFC6E7EA208C4144FF','','3033068','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','4623652','7','578B7D08578BF1',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','00523153EE2298A8D80D7B26B7067CA7B26AC06FF374FE7B','','673210','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','91BC368FA14A3FE3E13D0B1056F485F846925E613D8E8903','','12194860','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','10010636','12','8166443FFF1FFFD9565CD95E',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','8FEFDBC58301AB0E0D0F6EBC5FBDA5ED9A7126873A9AB337','','682394','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B40FF92D4F092599EA9014C88B474DE4352C3F1635109882','','448492','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','42B596FF923054531E4918DC39E08F8564FED16D559B494A','','29852','20','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','24291D6733A7CEFA3D54C3BCCAE95D56D8365BAB42AEE1CE','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','6C4E321E2D5A153F2BB664EB6EEDF8D67FDE7ECC8076D087','','3990720','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','FB649706C8F1AFF5990B5F3118DFE54FF6F9609C6991C161','','3045776','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','D1B451C906B81261B048FD4025217245950C11660815367F','','28920','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','40079A1083A6B57E3B713992BD395FB6650B631E4C4B8D4E','','29852','20','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','3F8FEFE08CB358D6613656AFDB498AB8C599BA18B5574FB6','','682378','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','EECA71B5536EE1992FD7825A5CCC4B7F9F3B413C0DA498B6','','29884','20','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B8786BFF2421ED1F1FB30F3F0BAF671FC1DAD5B3B33124C8','','28956','17','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','BF0C842D635D9D8B3F6FF84EF6DF7C963C485EBAF02D17B0','','28920','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','9672ED2A27C4972E04DF4471C95492C721024E241995170C','','36924','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','63532B056020A261251BD24AB026BBC5D4468AF863136044','','17906','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','7D38C80FEAB10B857A4A7BEF15D27A58FB43FD875E29C73C','','3990720','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','B158752316672A90BF29846E7AD64BA4FD1699C638BFD3B6','','2299116','33','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','4549AE7CA28700562D996CBC78FA7341DC05F644C01474E4','','3000288','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','EE77806A4F5723FD9C6FC6F43308C8AB448E0A139CB43700','','690106','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','046D6EA3E99E275F51CAA591BD8C478B6F964A3072018F43','','21660','15','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','B1682CE919907AD7D8990F3D8272CFF24A996162565D52B4','','676970','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','22E057649A8BF1D9672841EF47A4DA175AAC082FFEF059DA','','710730','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','7BA62D5F5CFEB545D1AE646962F4EB9A91B93EF8FFD5D1B0','','710554','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','702802D919D9E5C3FD42CA9188936C73E47F87CFA419025A','','3033068','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','FDA6D997BFB8A991B57755633D1AB3C7E567A74C1EC09937','','3070052','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','84F6BDD28490937867774E7BF8D5B78F68BF9EB43DE90F10','','477912','60','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','5A5B4BA32BD937FF253016AE836DD44B794F8D05982860A6','','447736','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','A243986665C7FCA1E60A9F209DE9431C3098D082DF1C4528','','682378','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','7CC89374CE3A9C07DCD685006690B828931D60085EE5FEE8','','710554','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','01F10590E6DFED79523D26C043D5424174BEF1011F3F4974','','477928','60','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','C9728BDC4B77BAA7B3515AFD3628EDB0986DFA20B46917B4','','672746','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','179B80E5E054521E44BA8F5978D5FC489CC9E514B350A3FF','','28956','17','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','5417948','5','7734FF2485',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','7769A67D6E2460450873133B0CFF99B67A58CE6C404A17F8','','17282','15','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','CF3896074EEBC0F93B539FD44E4D825227D4C1556B8F2279','','3990720','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','88F2833B5267A71A0CA72509C40819B99283A6E556FD9038','','198','10','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','8491566','5','8B4D10890D',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','F7229DF2D879A9E8D5BCEDCDC7046D75BAEE1C9D4DA41E55','','3638348','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','AE78585CD862134059B13669FC416B8124752EC6471DDCE6','','28940','17','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B408E9F9B475E4B6A81F9B7F2E060824F618FFDABBFFE805','','13634','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','A9DA016B83961F95097E08F2DEBE69517C7573FFF06D8C4B','','668874','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','0E74160C242EF826D09BCE4ED535E9A9D251B1CD20E31891','','24812','14','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','A58E4D44D952C1F9DB7B5E423167EE4C28AD02668C5B86AF','','710730','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','35A9FC42ACBF3A147B0C8CF67BA04EC979C6534B20249B45','','28956','12','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','5345746','7','746583F9177760',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','1430DC4A627EA5FA2CFF9C010CE16022F259F81DB6047879','','13634','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','85A005398AF851382267C01BB6FB04AEF2093213C20EC200','','360508','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','96916CD89649027A9A8BBFBD28AE190CD5D590E24BBAD451','','13033','36','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','056D57A5C1A46883400E1F69405750B23DE18C3032C3D91C','','27270','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','87C641E1EDBD96D9F170C7BE0FA13F45611DCDF41AC02526','','41127','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','1F378DF1E7BD99164DDC7401A98CA5E9551BD50B4A35D5AA','','34176','25','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','B5ED443D6CA2F6095BAC8DAFDC8F3413F7B473916357C17E','','209352','75','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','A2BC3FF01787A38CB88B3EF45C1CD97DA113157FC395D38C','','30012','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','190862E5018F1428E5B12BFDAD08283ECD057B34AD722846','','41228','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','6E0E55BE8690F64442E275559E6C9F8A3FDCAA00937D1C13','','49347','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B6FC4C07BB2CBE7C5C854CD99DAFEC0D1AE4101FC51460F9','','477912','60','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','3B5955C3B498489869990F08A4CAE566A7D689C23990518B','','156','8','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','7246064','6','8950108B450C',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','F24317DAA28AA477996EEBB9538A89569ABF9B185A3EA4E4','','718842','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','DA25A4134671325719833878E2556455EC4321A2207B6728','','198','10','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','DC9490A7BEB43C64585E013B5260BE843D126EB3BCEBAC11','','50040','26','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','4BB92BBD5CA8C192C9D0E1EDB6C21FF3F4A61ED1B151365F','','673210','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','13E8DD1C9F5501A270A59CC4B61311F6D5D18DC3F2AA351A','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','346CFA39FF98198BDE1C23673FBF51A50CFF5ADED784F077','','17522','15','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','0590FC57AB448975FA46C314A8AB75AF96DF0FD0A3D9FB23','Afd32uu','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','E37D413DC96A92D3CEAB8A482B8F5397587A0E654C9A0166','','672954','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','E7D5551799C2C7F0072BC3149A22F37D09EA1EB83F64C655','','3045912','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','7CC5260578671130CA5B3392BA5CFD0F3DE0BE1085E556B6','','9977','32','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','F44A40945F24385D089E040A733553EEFF92EFAAB0636323','','134968','32','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','D3122CF30EE55310CF4A710E61B190D2B108227B746B41AD','','679578','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','7E3CC1BC53477D84F05F623BBC94B9DE8D01A2607CA935DB','','41188','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','DC06565CC1512B5A91A848E08BC4FBC6DA705F6503667852','','41127','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','03DC47CDFBB14C5CF0D0010FA5424556F951585588A2180A','','29916','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','29EC91C4D87891FECDED381CE65A86A259F00DD788833E4D','','174688','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','31F024003681765368F6EFB667E83CE1D12799723AA99BF9','','685304','44','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','6A82AC1D0BFEF5DA7385510CBC57189FACD42E45E0D2A65E','','30012','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','3901FBD52655E12ADA4EEDED3B365B1DDFAAA925A140097F','','448492','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','6E9991A25EC347BEA5813EDE0A842D746779C97606565B5A','','17906','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','0AC9F2B104AC5AA9131FB14E669B98D30D056936625B0245','','27270','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','A338B3DA78A6683CBEE08A63C5EEFBE1AF33BF54983D583D','','684876','29','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','38759C29F2ACF42DA9D16EF35837A470DC7C42C3284B2A3C','','3049492','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','F35817564FC39F4DB7994021352FEEB86E2FEE86C11B8DBB','','360508','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','09FAC087283873DAEE0AD074ABF7DDB1B395F5CF6BC2141E','','28956','17','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','87FE57916743AF3C97CC3B583B29E89B6E503D31D1747B64','','676970','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','97D854645011BAD1F6625679511D78D1B7367A51EB0FCC6E','','668874','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','12369F6F1B875FB5CC5E67445ADEAE2B295D196596679317','','0','9','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','5034278808E93A3DFC9BEFFD8E180FEFA24DFC5056ED3BE1','','433168','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','55EF16220A7EF3F74A9D895821610DFBD2A757FB05C792D5','','209352','75','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','67445533AA0BB737D2F74C9258148C6C667794F0E3D07498','','45324','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','AA8649100B17A9C5BE227F47F867FADE51AD242BAAD39821','','3045632','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','85545FE9242B2474574EEBABBF452FBD11497073CB1E46A5','','41080','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','9DACD6981681F53650B681EAE68065D26F4803682058709D','','448456','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','96B74F1436A05E658E3282164BC3CBDF4DBBB2CF6A5B866F','','9977','32','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','033BD6861DF7878DC9470EC2F699772BB2F3D5000490866F','','90202','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','B797D0AF3164EE83167D5C054A511A5B209A70C6655C408B','IPSect','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','D91A2764435C5091D3F9471AB8B5F397E609330294694488','','710730','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','94EED02DCDB71789E50917DA401A03F4B91BDBEA050D8BCA','','3766400','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','2DF33CBB544E2D5238FB591F2547AC507B4D8A652D789F2B','','2303444','33','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','7860712','5','742DF6407C',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','81A74F35F0F887144D59F93647C18C70C5FEEF542A7F3782','','709322','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','2E1F8A68FDDF084A950B786A1EE7E0CE43E62449A56F92A3','','3045632','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B1F8988B6664A90E79503FA5D843C3CB97BFDC23EB8C7690','','433168','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','0277E26DE31814DFD675A59E526669E39080E033BAE88859','','0','9','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','10714892','8','BB8D243FD4D0313E',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','09BBFC19FCADC69D6B5BF655A5BB6350B4A8120C3EB557D2','','3990720','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','BF4ABDEB726B0060E74701C03180C3CB02170ADCB7DCB61C','','3049872','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','9990741','9','8B878000000089463C',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','D259A46A6D1855C436BFC96FB9376BDCDF5E9FFAE8B4147C','','3045616','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','F425A62A44097742D72A05669B6BE93AD9CEFE9E40D71E48','','3045976','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B134291F515D136B6576FFBC0133C7859755974611170D07','','20512','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','125BE691985D8DB37068DC14D74EA2DA1260E4A63D3F74BF','','45324','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','E06E3C5B356B34BA92F6765108556AD53ABB74B986D5810E','','3070052','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','8CC87DFF61F2EC82DE033865C9879010D94E1614369FE286','','710554','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','E1F5233450FEFFB6F0E8F2B17683047A485828FEDD3E5B80','','448456','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','31BA6EA4DF2362676AB71F4CB60B0D40FA51A3AABD25D5CB','','36924','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','C14630E1D519EB85C254C536FE81DC490977E869BD5CD884','','12985','36','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B337F892EEDD52A5B978C116A19D927134273626EFC4DAA3','','17890','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','D97560108AA21A487EC9278759F7615BFA304A933776A201','','18680','35','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','DA59505BA61459508532CBEAD246DCD2C8E7BF5C6D3CE676','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','5803CA69E5B7F1DF08D95219894D75F52EDB1AD429E562D9','','174688','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','8A1099E19139D91573286DBB3DED2CC093A99FD178F7FEC8','','3033068','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','0331B438B085F55C06F7F697160845BE953D9CE789AA62A4','','3000288','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','E844078A5671FF7DB0621E7F1C7EDDF9C92F5A9FA0477FCB','','41023','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','AAD7F47B231861913F353341FD26E5AA89AFB586FB6A5366','','672746','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','136DFB3FE66D2830DF46EE155FCAEADC9624FFE1410088DA','','3041472','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','C6015A0D5C9109768BA4233639A51F163CC7ED58749E5026','','25724','20','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','9C668CE4D328EEA9B6AB7AD5FF54169289B35B230275A43C','','3049872','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','FC3C95E71F968C46BD5DB5C9EF9B0A5BDCC5619B805046F5','','2299060','33','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','FBE3808C0E36BFBC1D1F5A0E508CA89E81E550CD2FDEEC48','','149','5','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','35A8252DBC65514E858256C497141153812EE61C724BF5A9','','710730','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','CC79AA9AE29A52A998181D183D38974221B8BAC0AB534E7D','','0','9','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','B89F25A249D295580E649F5ABE0C65EC24401F4889A4FB16','','668874','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','742A0A9997B9E857C355AA75797466506BAE73D44D26399D','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','E7975701601B2FDF8262098521B7BB4FF5CCC484F8E919E7','','3045776','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','43E81BE830F169F4EDD23B84ABFA9D15EF12C978FE134346','','60648','56','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','66CA9E464A2122E301A72FAEF13A4853D8CB1A45C177E854','','178504','96','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','0A3C294B0799FD2C9EC17C1CCBCD174A51B6A2ECC62FEF17','IPSect','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','6E9CE81BFCAF0C250705FCC599981D2D9E4D474A7E857B37','','2299108','33','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','8734D6E081D5C993DCE8161CFDFC6197F39A487E4083A3E1','','149','5','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','A33355AF7B5FF3CECB3A6059F6621F30AEE695D69421EA2B','','3049492','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','BF8CEA63013511BDE0B551DAAC492DFBB9608645140B88F7','','29916','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','8D5D5E99EAB2ED21A104913B05D6BD7A8E63ADA56B66CDED','','3022016','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','778256BFEF82EA60C4E0F25083655FB2BB75B83FD60A9C06','','18680','35','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','43FB8007D7DD7B01FFBEEA3EF9D0242778565544281EC761','','0','9','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','94DCF5D21FE2106F5303216C14AD55EEDC1B19FDC91D5F76','','28704','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','7EBBF90F7D8462D1453479DF9AC5943AF483FE2828C74FDD','','477928','60','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','A171148491E099B12CCD1708B784D8C3B09737772C7780C0','','401992','14','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','5350ACB75F9FA498FE0D2A371649C9FD9716BDDE2C32F5FB','','13634','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','85E53280630956C58D4CA7FD8DC5FE73C9A2A03314DFF294','','45223','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','391BC8A81D4EB6D526BAF0DC3468CAA36C9207B82E194B7A','','130380','14','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','0F88FA5CD9B9950F850C18FE76C948FF43CDDE3E75638FF1','','17938','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','EB63FC60164AFF92726DA658882BF1CE47CF0BF6C80B1B97','','690106','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','E30B2494142B416BBE95DA3DAE4A82CBDF3A020715F10E8B','','4011280','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','6CA1C19D0E9191CBC9CA3D5BC3CF1D19764D8F17C6B54AE4','','59620','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','4730B7A7EC70544A688211A5C754C357A090116092D3EC4D','','682378','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','10000022','6','894644894E54',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','713A7B79619AEF3C47E44102F86EDCE0D6AFBC5ABE87F861','','13538','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','575F1C6AF7C71085C7D9CB2291844D9F2DA3B71391C0B941','','36907','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','296F233E4FAC4CF419D5FBF2701AC4D5AA0866CB4D0DAEC6','','3045976','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','933C1A228C99E35DF309838B25B7D5EA3A8E961E81D81D32','','673194','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','9EC125252C3738478CA942DCB59030097194B284A9162B32','','59620','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','6665F3FB8DC6BE71C152C3674B5783D6E57FE8BF796D190C','','3634252','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','E120DD63042FEFF9E7FCEC0CA44D2544F03C5D4CDBA1C008','','12985','36','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','09BDABA6CB17BE561B4104124A3D0266C858D194A8765198','drvsys_mon','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','3AAE69E7088E4060EA32EF95E9B6D9532460F5B84EE4EC80','','684876','29','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','990D4E1C2D63C8E447F034642686D57B727064E3EDE13B00','','448500','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','E88F31BDC5513216CF3701CAF8BE954CCC7EAE0E7AC7D942','','594348','26','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','81229C1E56FA72E01B52E8CBB8BB5F55ED48A11B72E7729B','','710554','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B4D0CDE7D53493A1549328F711013F07DBD3A9BE88DB2EF9','','685304','44','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','D6CA6F94FF248F722F97037C1AE7C8DE0191D5F4D1E3A5B8','','156','8','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','9C9DF1E868BB33D43676F21096C4F75759C0807096EEB886','','60648','56','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','1C79B3B5A74A4F09A1FAE19BB15CDCF26B5F917861071F1C','','198','10','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','AC1AD3E831A4C758858350A8A197A24FE82583F4B0E39A85','','3049888','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','56E4980485E3129E94F370E7066E80B07141C4A669B9FC0F','','672746','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','C21574305E0377A3D2B72D1E1546B9D62DCFA8B1A4405F16','','3638348','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','AA74121AF835978BC1C1BB402A8B7388CB7C075C1227C253','','3049888','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','D6457A86DFADF9825D6093090AED2A807FE7DA6ECF5922AF','','3065956','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','1BAB7E6B5ACBEED8F54B667EDF13A385B9E146C0C50D9FB7','','448456','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','7517484','7','7518683B010000',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','01000FEAC61ED76FE04ED1169C40289D96C71A1564E38FCB','','690106','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','F095338ED87C658C916CC604A427F4ED95309C4A07B7898C','','34176','25','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','800E120187DF74A231722FB887B3944AD16A703FB8CB9D39','','28920','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','2CFCE981C322A54724E1418B6A6D1896B95D584630EEEA43','','38300','21','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','5081862','8','6840AAB600C60200',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','481751066D6C97AD5EE90173E8ED107BB1C9FD873B0CE55A','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','7FC57D49535798CDA7E4DC5DCEA2E085AAB9A68BF7F9469D','','149','5','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','33357C112DE0195F013FAAC4D57AB1BE77417934CE03A2B9','','3766400','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','BF8AC678DC3CD354BADBFE46C9173D34CC84D13302190EBB','','21826','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','4E2F9721D52A7552AE2728B9695F1523DD62DC0569237C3F','','2299108','33','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','9F015E7D8A11F30AA1954D9FEA7142D0247E3C09FF2BFF72','','12194860','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','1EB5AD39B94DB5CDC3294DF49FA589DFBE2C674D07E4B211','','710730','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','E9D67F07E035A64B89C9E91614DC1930FEF61DC3A5C1BBA6','','690106','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','36411C2FF2C3AC51B7F6A6B8DF61DBD4E5895C27438847BE','','59620','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','A77F30CBB8057E0DB37782367C8462FA98D4DB21DE936ECD','','3049492','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','7452688','10','8B81CC07000025000000',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','A8C806E1FB7CA3625E6BB6F5E4D9E2BF0EBDBE70BA7226F7','','3049872','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B3DD04807DEA2679045F4F197BDDAED5C7CCEEFE19622B43','','360508','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','B075C8B4D8C5D83FE703677319491DC816EA5103901B44A8','','682394','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','53DB506C0341B50BEA3897E2E3C0DD74C2CA2D8F5F34A2E4','','59620','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','E112F38956124FE0F48BF569F5E81B40E293DC6E16B544D6','','17282','15','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','0363EF2B1AAE09E6C2B1FA555E706F4EE094BE678DA27598','','3766400','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','EA256F01B6340C99E27611B39C5ED28CF2FA202436F0972F','','49564','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','A86C95C4E58495A10F5F1C9B5B62D3365132E8DC62863E8B','','198','12','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','56DD8D99991F83AFA2E169315B395BD388B248340E9C64D3','','30044','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','684B23E010C3D6B88CC12BD9F0B6B0CE00D692C71BFB84A8','','28940','17','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','83AEEFCDF4C2E80B18DDF93D99120A89F916C19206D257AB','','668874','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','D68651921F5CD387C7E860FB7C3B143409735748E3B2FB7F','','682394','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','A4D501A9DB9D84BD8695A8BF61FC853BF434D2D4B352C7A0','HideEx','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','5E77F12C032D4FEF559F9B837B85BDB9D95ADB10C9F56649','','448504','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','F08406AEDFA8F19B6FB7C9ADDE0BFEE82CB0D2E275593150','','2303444','33','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','AC0EC72522ADA5B2BFFAFAC92D6D0A0225E1D5C727CDFFA7','','672602','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','4D1A7D1C88AB04438510E3255184E51EAE2036BB09DB553A','','700714','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','68BBC36F75DC763B573DACAB1D6D8F70E667638AA894BEE9','','717898','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','2AC3C23FBDE2C1EC46C9ECFF71BD7F603F17C9DFC1328D1C','','3638348','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','C365E9FE00580EBB14EE863A5CE3C8139B1A59A610520AE7','','3766400','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','DB2A0451B9753100085C9D149B61CE47A195D77C8B709143','','178504','96','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','0871F69205FA62C74C2DDE200A3911FC3E41A4FB8BAB9817','','682378','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','0017307F2FF889462B0FA06018D99EB1F847F189B6CC9B99','','21826','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','0FEFCD6B0BF8C2816A9259AB5FD7B89231AEB8D92DE53D26','','3045356','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','87EAD79656133B3183C2E452886D8F00C5EC6C9D741673A2','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','C2B6C5E19FA98D121B2CDE51789BD2883A324015E7D131E0','','710554','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','B6F3A7D557A3E3BC4833C3D9B6B0B0609255591CC8AB3B65','','3022016','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','5283280','12','558BECB8084E0000E8731DF0',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','AEA87B23CD9463E9693B6C053C1D9030F8E229DA308DBF29','','90202','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','8C16C7E8EEAD49AE67E4E91E229FFBCE2F6590A48348914E','','3049888','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','7B2DCA97CD348E45490C288EADE9303CE270CF57F28EB1E4','','690106','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','BC10B10BE398F2397FA6962C4E59C8CF11FDD7158EC222A5','','29916','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','8E53EC1B8ABE90C9A5C087671DE0A3007BEA4488EE5415D0','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','65B5CE07A794164101F7E379D21A7A544EF1EC2A3A39A2D8','','27270','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','C6C8597824F249180A53196699421ADF7857A5C4E4F80D6F','','13033','36','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','FE677759E719178BC5CB49DA252D9B635F76030FC4C9876C','','673194','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','5265823','5','72118B5518',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','BA2D161EF412084B0229A08E64D5A445C4E9F9F2645535E5','','706314','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','0174B647A535F206711D3EEEF08D3F421BCABD7016A2F103','','17282','15','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','5F5F754FD6E7BAC9650B715387646CF992813730A2BA37DA','','2303444','33','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','D2CC7F98209E9A9BBA483BD1E9A916E40EB971EE2129AFF8','','3990720','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','E8C741CC79005898FFD0026821F61A2E4E67C695C6E1CE1C','','198','10','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','23B364A9012EF40A39EC4D04A91F9B60FC7EF7D85E3F240A','','18680','35','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','C9363F808D37F13FC09EBB7F700AD09EEB27DA046E41FD52','','36907','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','2D92FC5B8603E18F50D9CAA0922F5C7BB89E42A4656ED2D5','','3766400','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','EDEDBC5B1A3D92D2A91192118898FDBF840C967C82968D70','','3045912','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','BFEF06E80472106B57B15D711F94A25243F6ABA7FE354C95','ndis_x86','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','FB20B0EB9ACF571FE37C6B69CBE86F7906F96B996D7E5EFA','','2303444','33','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','917AC1C48C1FF354FD594A3705C70A2C356FE981275E7FB5','','22792','25','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','48CD29D8B39DC07B0FD071FD8C643E07A8FC2C9AFC2A3083','','3045356','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','11154396','8','D893FEC0488C11C1',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','FB13A8360C8E23B83ED7309625A7EFBAEE7DCF737068C5A6','','174688','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','3C8D85F85ED5DD0354561F84EACA575123DE05EE941C28D2','','56063','25','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','FBC20EEA52B5882209BC016EC14818376CA7BAF28780BCED','','22792','25','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','210D85A84F7BE48F3EB427E0CBCCD9C146320ABAAB5E28D8','','41096','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','953107F9F718795B6DF9E5E5BEE0EA949800CAD0EB71F891','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','FBBA36D0FC5434D12EE1509E148FF908D51F18719CCBEABC','IPSect','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','82CB32BA2A05B228F2F8D0313C185EB6FDC50A94340F40C8','','209352','75','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','079172B91B1768A2650A87BAB06AF700BB4C9A0B5E5B983B','','17522','15','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','881751DF112F817E799953E00E94543DA4610968437DB7C6','','12194860','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','9A47B274EAAC888FA2007B4EC0623580365458E3621CC416','','28956','17','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','77344CE014111FAAA66DEF35B670B2E76AE878B054F85285','','61874','42','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','0A74CBD8DFF245DA5E8691C1174F037D7ABE823E265226AB','','685656','44','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','0E13ADDD413B679E2984060D929440064FAC308FC2B90742','','3049872','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','D0D8CE5001596C6F4A766FE94726FE7E337F42469CB96CA1','','3065956','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','313C58F8401B47F716B220B88411CAD0E85966D95B301591','','13033','36','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','ACBDC68A4D748C48ED1180DD3DA52632EA6FC275BFC35D5B','','0','9','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','BACA83A742B9E09CD07787BC6B50389707EA94C41886BAD0','','448504','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','549B42D266E7F17B7F30B72E301A9CB3C5E3865DE9B7E90B','','60648','56','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','86DB854557D75BEEE7DA820FCA15669B08C760E8B165B06F','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','02D5FBD9E30D43ACED0EFD00CF16DAA69EDD262C292136AB','','178504','96','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B9D920131EFC38767012340CF0FFBFE154DBA28E6EF3B859','','61874','42','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','96E6CAE70AF690F5D552E0948C29CA9AA527DEBF9731B16B','','20512','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','375B22B4990997348A8AEDD53319897BE196398B4F1DBAC3','','30012','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','932F4622AE9F1B3990900F1F88375FA1DD7C238F7C6133C6','','684876','29','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','43583C7BCCD9DF14C64CC84710BEE44DD30E199F579890AE','','3049872','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','97CF98F0BCABA04BC2BAD40FBD4EBFB3C1FD8A7139D5C9B9','','433168','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','97A0E0F8F8ACE7F1E6492DAFADE8F45B366446E79C1B0419','','3049452','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','5284488','9','7507C7451400000000',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','C3546D16052E0DC1838E7A6E18936B88CC8A40C2AEC0BE3B','','21826','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','4179D6BD8C2F11AD5D5C103A7877504074009AB53AE4D8A6','','3045356','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','2C360CEAB996C8D6E5DE3FFAC30E412DED48E7814D1CE110','','20512','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','6F1486BE58078BD453F1B249947BB99CB8E17E9A355CE024','','41228','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','924F4631DC3167BCFAB02F92DDB49A871DA0C55122EF9EB8','','0','9','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','411029C5B28D942ED3C7BC1F4299162D874838A661410894','','700714','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B9093BAED730E86AF004119B3B7258938C56902915C2E8BA','','501956','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','63BD2D7FF6C5442795361031E5768C396A37AE38AF98DB11','','668874','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','754A2FE56037B971E128FFAA669032C511BDA3A62524CE03','','28956','12','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','9AEFDCDB62EBC2DABD6CEBF8C411C1145274FCA7CED890CB','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','3AC57BAC3B782AE5ADBB899CCC060D4E8F66E5217F7DF654','','676970','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','2F0D9702A58D6D5A8599529A0A816AA101AFE581D98416B2','','56063','25','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','77804219E627B4D38C9F95194301A895180B598AEFA9963F','','3022016','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','0D1B99EDC8E458705A88E72F7FDEEE9233DB21290A0098E6','','149','5','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','BB795B4069F985BF44C7418DE264C3B0E9BA6D61A116FF81','','90202','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','5A6EEBA1E6B9EE71BD4A5F63014E9928302C36FC806DC796','','3766400','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','BA5777AF7FFF3895935669878D662B585912A759A2DFCE68','','24812','14','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','5E690DB1AD8910886334158C6D4452FA2CE896634BCDDF40','','580768','52','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','42A8F651F55F697E783ADA1959A2833276F970F1EE0410C7','','41280','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','5296496','12','558BEC81ECE80D00006A0AE8',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','445A6894B8C1838462D7D0D29FBE6BF815B5E6C344971349','','31924','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','C010786A38F396503B7411FBADA0C1A68795F54A7AAE228E','','679578','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','E3185EE4428291F9D2E4080C2EB1B19ADB005AD26EF0A993','IPSect','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','7739760','11','01BE80000000E805B6FFFF',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','1995FA3235ADA4B25232DC6403E7463A8D1864528BF9FDD4','','12905','36','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','5124558','5','8BF08D4608',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','30A26827798B7F1646003A9E846E8A9A8FF10A9DF926825A','','49564','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','A567BBE4CA9D8E976083024E8D68903CF15CEA88C47C9961','','2299060','33','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','BEA7165D7DD8E24E31B1C3D791A47A28731E1BACD1189A17','','24812','14','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','0971A7CEB84D392670C7B8CBB61776762C25259D8E772CA5','','13538','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','13200A59A28561A413FADAADFFFE4521A209CB691EA199A5','','690106','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','5090917','8','E886EE1D0083C40C',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','56CABE081991356465BDE1DA3B8DED099DF9B6E746D1B531','','25724','20','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','F98469C704F8B8ABC1A251EF8FC1E4CB5CEF1E007BAB5EA5','','57602','42','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','6A64BF5AC652747B47E0B8E6593B7EEAC1EF38E0A84F4F5D','','3049452','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','978BCD17BC9C81B05A2F0A50EC2CC206EC5F6AB1FE40D38D','','28956','12','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','A28EDC898CEB14FB52591754DEF981C7168DD2421D0742FA','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','35E88DF07F0D48A0B7ABD53F4865DB762E6935529DC826DF','','360508','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','BF1FB7E4C3CDD5D5A93AA1B24FC822AA5537DBB59F696818','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','343F1AFF6DA7A967D2DB958C608A6E2A19F83E862F8E3954','','149','5','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','10694516','8','2F549A416F12033B',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','0B008034F97BD411A9F900D87578258AA1B79873850BC12B','','3049888','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','C5A35B72E6BC604BAC9AA218908B3747D6850769CEA79C0F','','2299092','33','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','FDDB2AA7F8884C8E3A7ED646B3E9E4AF5A8C0704130C39A7','','29852','20','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','F57343CEA7133DE6469B1CFD1A749845D553B8D806B2BAA4','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','565A63583AC736E3CAFB95EE5AF9A64D3A7D3C3A8B234121','','3045912','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','E26CF0E2ED92F608A80733CE703D7EA2C3DB83FE46182519','','3766400','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','2F44EE3A34EFF98303B3724005EF3A8AC89CB25F9CA1B8BC','','12985','36','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','C32F7CDB33BEF7B3093262F89263884DBB44E57D74D646B7','','12985','36','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','2357AD2012CEBA72283F93460AC5FF55E4E5719A5AB9F5B9','drvsys_mon','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','1C1595A1A64016D8725619CBC2FC7ABD41835320958A97FD','','676970','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','DB5765A8B8D5F636D619E44669E9D3EF968BD8011C5D6999','','36907','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','70B78734AC394D83D45427E0B7C88351E9BB108ED59C7E71','','37136','40','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','85F2A5072D2D7557155CBF5157CAA460B19470DEE8AF96BB','','22792','25','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','4609669','5','8986100F00',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','6C33FD80565B2860A76C87BB772E794E2FF444D813079A2F','','685656','44','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','F09BEAD15FDEBD09240316D9E2E736028B54972B13F14E5E','','673194','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','302E114D921D40EE54585BD9D63B9BDDFF7A2BD4D678DA97','','30044','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','24807D7810C58A4B9A070A21B8AE50A0385DD4B4C6BD8B6F','','3049872','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','B6BDECA858773B6F995AC6496923F5D0CBFDB1F76DB29C58','','198','12','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','5296823','7','75166824020000',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','C125EB3FD1B222ACE1B518959D96C5AC83EEAF109E9C6D20','','12194860','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','8AFF28C3E6367B10340FB963B093AB52E61B267C541D5659','','2299108','33','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','734D3EDDA69D9DD307032245FA0806456E2F02E90C2291E2','','36907','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','9CB5A848D90B7FA4F58801ABD8A68EF8FDF8C602063C2CD6','','13033','36','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','C8BCF785F8B7118D0270016E620E2C3DF6802E034471E5E4','','3033068','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','8FB282098C8BB4EC10C8398E44C630677C6E2785227E31D3','','0','9','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','2381BB2B613C58C364E962738335EBC2F3EFF81009DE49E4','','37180','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','AA2A24A7C90D149C7817640B0D2D46C8A4B4D52146837605','','501956','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','6815D749CCA8C1738A5F3236A737F0B70AE037E82D46033A','','448500','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','F9F131F27BCC37FEF638FB8EDDAC29400652020C290D4F75','','676970','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','319CBACC4CD2E1F54F8C8FC41EF44A3A9C492A652B00C622','','18700','32','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','A4A7DB31BF51180F1ACFEA6C0E59AC84B43D022CB4BB817D','','2299116','33','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','0DF639ED45B0C578DD616DD191014727A3C22C346E9FF73C','','50040','26','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','72944B7FED63C1D2FC9D2CF6A07B5788731BE2B02215CEE4','','447736','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','9148E18CF9213B25197C247F08CCA4C0DC60FEA73E3A247C','','13250','15','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','ADA39A6A805BDF59271BBCE21734E8F28182164563CA15AA','','29916','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','D5C852D85FA4393D027615506B7DEE07A1074AA4633019D8','','41023','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','D06EE8DDC2115E5895E96D26A2A2F11FC566297D1D21BD26','','56063','25','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','3AFE3B981D50B26FCAAC9DBE5A4BCB24F5BC3E9348AAA04B','','25724','20','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','058E826BD75C26BACE712DF9D67B0A751896515802E9DDAE','','501956','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','6E4C9CA0F7140E32D9284AF2E0EEB76419696771D4DDE887','','3634252','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','29E43B1309ACB344AC777636BE838F0BFE6A04570B7FB09C','','700714','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','5B7AC53977D57C5756A2F61582DD386EC93F5FE180FAB5DC','','27270','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','22BF8D63A306178F368016E4657CCFCA5B2B21EBC90B8DB2','','50040','26','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','1E8729EE000CD5BD8BABC49C368E0FF5AC08BC2B30921BC4','','709322','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','8A1304B9AB2579F392F92D8A592308728EF76B26AE258A41','','4011280','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','8A90AA547378BD5930D24FC415AEC08EF52E29B22073335F','','710730','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','4BBF42A918109CC23F231B8E657076A213601AD681C032D1','HideEx','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','06D9E92AE3953D13A0AC5FA31EC24B16C6A2260E2D32BF8E','','41096','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','D4D3A9950FA07FAEDAD0658F9128007ADE282C043210A201','','683146','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','94530FBCCC455105E8BB67E5B19BE0A4534A6F39A1201B52','','13291422','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','4198410','6','CCCCCCCCCCCC',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','2313AF1E20F446936533F9440B220BEA966D9EB3A0502DCF','','178504','96','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','F982BFDF01EB3BC6FFB70E897BFE21376232B2EEEFB25E58','','20512','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','26308A71C6F483CC7795A01A2F2CF7E7EE97787C12CACC52','','2299108','33','',NULL);

-- Warden data from TOM_RUS
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','7452688','10','8B81CC07000025000000',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','368334F9A3A549DFD3ABC9793E4EB83E837AA43F010354D1','ndis_x86','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','5DA702DF95570780875ADB4C64259E887CE0A867D9B67711','Afd32uu','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B51E8DA25AAE556552404F5172642D0808A89E2AFE870B23','','694376','44','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','4748EAC0350B1B56D8549157AAAAF4FF35438078A7E37AB5','','34176','25','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','FBE20B03C75572D992273F192CE72CE78A65E6764BF8E6F6','','36907','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','D8C1B9DEF3CA9CA59C5B827F055729B636FD55BA6242F9F0','','694376','44','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','448475EBCA685E5A4ECC5F810740C9181825B49613CDDDA8','','477928','60','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','2AF2DEE0CA5F307895E5773A083AEB862EA3D5210E037F06','','41080','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','1708C050FF0C98DE59FE8F070273D80F9C1A612D336AB9FC','','3049452','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','ED6BB184C9DD307229A023C1905E6EE73981D3E088D69FE6','','676970','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','EB63A86D51668323A18AE2F8CE2BDD1ADAE57375B5F76C6B','','45223','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','5837373EE8D4CCB5687045C04A4297450ACDE774FE973917','','673194','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','65CCA5E079D38DCF32053D8DEE6C5ECF88E6AD8E1CF5379B','','31924','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','FB895125A69DE5DB112B4731F6216668EB09C4F57943D85A','','706314','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','A388E8CE523DB7C3C501AC5DB2C8AAE58FD1831E75665C48','','401992','14','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','77C74B5E4CBCA9150FB64261E497AC4E7642A316C89B291A','','3045356','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','8A2C4F7F3367A4648744D8964BB9A6833182ECABFE015B00','','3022016','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','4609675','5','5E5DC20800',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','E8A24A78E6A716734CC666B48263B424804A42155C0BDB51','','18700','32','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','3C881D2F0634D9223A36DF5266A7CF36B503DCF424441FA5','','28928','17','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','7B3D92577810CAB5DA0134FDDA91CE6F36003C5373526774','','41023','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','7F794E0811DA99DABA76CD9925B3E78045425E32880F05D3','','672746','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','08235E08E4F83DDEA588D9FE32BD084FB26BDA6DEBB1E416','','668874','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','5EF7C22867612F48FE5B41E219A1CA389AE8D32D8F0FC46B','','21660','15','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','C7C78789911D6B30FA6E67198EF03B73CEE37576AEBFF5EA','','3045356','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','62BF4E6440FE3F28138094B46FB469CDEB35008DEB652B8B','','3045776','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','E24027620A1723C203E8084AD6269A852CD50D6F79D50530','','36544','55','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','49CA50FCF2699AE5F4A867156A5D8053C4239B36DACE170C','HideEx','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','073F4A76F248FE7C38F799437D475B9A2E9E81FA08B0C6BB','','17666','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','6ECA7966F2845B9B61C6D9356E4FE4C913FE917808C8AFFE','','684876','29','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','30BA488B3964465B142E75F6D1E1BA42DC9F489C3AC70BDA','','2299092','33','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','55492051D368975D444428D6218A7D731555ABF7C3391E7D','','3049888','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','94E0CEC4F7BDE7844C4D4ACF62E5C96ECF1D11FC2169CF8E','','433168','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','5003A599A1162170A30F1906C0AD5B16DC7041E72D28A4B4','','28956','17','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','686F700B2223502053CAFDF9977D8774E905E76B8C960E7C','','3049492','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','F5A776E794B34ABBF93CA93E9230B7224CA088AB741DCB57','','13291422','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','4A67D56DDA6B0E7D9117CFDB17EC6572E68B9300609FFE3C','','28956','17','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','1B695DF78AA0708221E0EC2F5A69AB7078ED8143B2EAD174','','668874','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','7C8CD40E29AE999923CD8EAFC233E619C73885A0258A6E3D','','21826','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','73407824E9064DF5F1161A204A272A9CD69026EB4DF1004A','','29916','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B21609972E46C9BC8C6A77A18161A77D0C1D4001DC892DF1','','41080','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','BB66A6AC45D02568067987834ECD8BF0A2BD0DAD06D12753','','17762','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','2550EB7C358B7FB86FAF0EACDDC3111118769F448D93BF7A','','49347','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','B6E4EF9350CA859576DB74D02C115D5A19C79AA58B0F6681','','684876','29','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','451D2C8FF751743B52109FF5D95ED633DDBD8BCDB80EB7A9','','17906','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','4A0161A4E5D50F11F58E1B23B281ABDA106625E3DC5A179C','','685304','44','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','E4F21910D4B5D3E7B5461ED384889F6D0969645AE83F7601','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','B9756E3E1093B54511AC5A7B85711E53CEBEA373EF4866EE','Afde32uu','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','A5AD6C8506004101E42165CD95051A7B5F13FBADD027461B','','710730','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','B8AE30A02C59219D144EE95228C6CC9F99916F6FE423C940','','700714','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','DAFD84BA8F977F5CFEEC9310C0EEF8F949F8EB6B827EBE71','','3990720','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B42986974893A82D73CC497B3252E9B844A11A99ACF46BEA','','41188','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','11287980','8','04000000903C9F00',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','0DC0953AE42E913121092DF17BC2BEE8BE133D1C53C8BFFD','','17762','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','72C81E9BA425C54DE57BF4B7745D9C8D6B44D56E8FE933BA','','3049888','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','100426CD22E80090502AA7A087B094B49ACFF4E7A09773ED','','30044','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','46C797D1E60CC458E6C9D874650B996D10FC52641C2E7AA7','','676970','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','DEA2C8A5775AA8CA86B8241BD418979D10DF4587E8E95C87','','250','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','8807783067F9FF2697A61DEE925760682EB894C6F0A798AE','Afd32uu','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','F63823A1F60619FDE6B4D6F3915EFB03EC03DEBEC82AFB9E','','673210','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','E4DFD66163F2A65ECDD2EE9CA8062D707CC51882336F6483','','130380','14','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','88182C96807A6025E628C90CE436C9EC54EC5FEC858A12B2','','690106','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','EC322863C90B861E66A0008554BB8702EA92E1406F6F1711','','3070052','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','9C851C7C05E54E5514E7BE038ABC5C669A3F5747EC573333','','3022016','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','11154396','8','D893FEC0488C11C1',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','46D70E5C13F6D16BDD01A7481D9AFA51B73202070CA5D712','','673210','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','CBEBB5F6F4EFB1324D17AB6CB48C573B639A37EAFD6299B4','','683146','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','684575AAC0D8BC30D5325D56D3D522380E85ABFF380FA80F','','17938','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','952BC8983C2CAEB6239BB2774F176A7F87A9F2DC10261205','','3045356','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','4EAE0459E341062DB99658136D494BD79511B883F00BCE6A','','57602','42','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','67E6E0A4006561DC5A67026886D1FF37AD14C5AA1AEA3CAD','','149','5','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','222FE6B0A70CE2CEE633597E018706B3F78C338D96F6D9DC','','38300','21','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','79747D68A5D6CD203671EF43029F17591E42BBCDB60B8B93','IPSect','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','77ECC7613D44E56210F7CCDD6046226B41C8F087E901C94D','','682394','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','77A59932BC8D497D992A213256ABD52C4D5F4FFB8A06002E','','49564','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','2D14DD3BC859535580D8D9DC3BE7D59865A4E3FD112598A5','drvsys_mon','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','9B487CD5032D00424A24FF3185AC4C17246729ECCE431951','','3049872','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','978D8D1F3E1EF11CEBC4B65B13F1C5CE6E9E220E71B255B9','','13033','36','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','1F5AD2397EB3CA814C5D156C6777C040F5D73085F3751C35','','433168','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','912807952F9397C8F2B718C9164424D720E4EFC681DA3099','','3045356','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','095F1A232F56B3DDA3338B5DE2CA310E5CF0EC0B6F72E87F','','17890','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','2A5E27A3EE36254F61795E168A98C055772F88CEA5CCD6F1','','3033068','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','4319BA4F2139568E87BAAC5F7C95121DD98D710B1C901E2B','','718842','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','74E55BA8CDEFB5BD54BF1C0B0D326721D756440BA33C3ECE','','27270','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','ED9FED6EE63B6C5E35C9E4615AC444603F6BF1FBC669D8B5','','13033','36','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','DF967A96C67C8D6CB1955D1CA06556F37EEFC88D26F1D684','','90202','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','2BDB1F4509561B2F846AAE7A5354008215C1EF4BDD0EA1D1','','49347','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','5124558','5','8BF08D4608',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','0F3B3F0934C1B1E32DC9F83F67308BF9CFCCEB0EFE10B2FA','','672602','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','E89980FFE6987D22DF5379283F53DA8DC3B5CD4862BA22C4','','335122','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','7517484','7','7518683B010000',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','4198410','6','CCCCCCCCCCCC',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','156B3F2929664A16C3DA2D47CE3050B3A1BC32F9C30E4776','','27270','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','65B03F581DEAA68B6A07C679C6B620A2623FD83EB4C4978B','','28940','17','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','044C63CB9F480E28E02D68426C1F3D69BD146B39A7F081B5','','0','9','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','B3BC7201BF77B362B943C8C13F9E70A751906F304F9AE133','','673210','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','5417948','5','7734FF2485',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','7246064','6','8950108B450C',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','10714892','8','BB8D243FD4D0313E',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','4783BF04A6BD423D63CD955407780BE0E15A70BC2643F853','','28928','17','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','A71B471FFB4C58A2C99FC6818DD0269C4AE4C5686D5FDA87','','690106','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','3EA0347F1F7D9BC9CAE387816DFBE4F492F53533400315B4','','17762','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','10010636','12','8166443FFF1FFFD9565CD95E',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','AA5ADEE929B0B2FB655080B35D19607695F611672E6AD364','','3045616','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','2DAAB5C524CA576967A7B0B713C1C34DA8EBF3990A86730C','','28704','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','D0042CAE82A7121F7783A1382F542074B34ABFDF50A1B13A','','22792','25','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','4D30286AD524AB2EB05C1A361A81036F787B1C0ACA36DD74','','30012','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','03F9E0F9328E7C7025C0D5C59585700F19E29E8C8F9BF5B4','','49564','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','430C4F44FD7CDF1A51F7A8FA5852ECCDA6CFA92C2A6ACB3A','','28920','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','A2886E2080C54F25867AEDACDADD8F5175545F44512A3B58','','672746','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','8438939BFCD0C550664ADE2DD75DD15FA23DC435EB5FC011','','3638348','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','5296823','7','75166824020000',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','66480AAA84C5C00B64EEABE96DD21EB3773228B144E25D0E','','20512','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','76C1B0FAC29E4E41FC6DAC31A0592CB0087BCE0D052904FE','','61874','42','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','DA219765DA22ABBDBE5486CF7DB01C283FBF9986732C9A91','','37180','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','F58BFE40291DD85F45C47E0E255594382DE0180AAE1F1FC9','','149','5','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','8D8A305C43A3DD47DE550F256BD5F4B1753EDCC079AF279E','','3070052','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','69CA60928A9A85D79ED39596C018DF899BD14C6219EFE088','','41080','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','8D9AA947B904C003D06ACDF4EA0C84104612B274696999C4','','17890','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','289CBF469FC750449980BFC2CA6AD7E42A69E14595D140A3','','209352','75','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','49961CDE71B612E5432EAB389E7AD193476E05BB2778B751','','700714','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','43818F9575A04BF426F4BE167052859015CC63622F7D4F3A','','672746','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','7828B55FDE24719EC377E29FAE55BA6324020D00CD42A99D','','360508','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','5432916108AFDFA313B6D88C886D87B5722E43EEBCAFC627','','0','8','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','106F24060B7A4FC87A7971A4B0EFC1021F7181A09598C336','','17906','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','13AA99805639421566A2652F0A7104939EA52EF0F77CFB03','','24812','14','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','D0938B578EC70162A30A25571CD5DC7E765780F6191EAE1B','','710730','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','70FA2C3749960F1B0D881FDB186DB9992D6EFD30C6674104','','580768','52','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','BCA2CC6F5740DEF5D01D314146879036A5B6965C01424B0C','','45223','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','47DD279576A64BCB3A4AF23D55895600C73BB5C214B70AEF','','3049452','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','09C9B53C215456866BF764553A7B7E4F1F20F33A8D2CB613','','3638348','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','3EC2D3876D82F424718D3B8E0B87562244C3F5A11A29F0E8','','682394','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','7B4E9BBDC89694CCAE5BA6996D4240EB2E0C9C7F03CC5D40','','59620','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','E2333772B05ABC620076EB66CFBB4AFE2313CCB6D719399F','','3065956','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','2EB4C04C0946264F5BC8EFBAA832CA97381A8A6523BAB093','','178504','96','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','0E3DE8374276C08D5DD241ABA2AC0AC1D2319F5CD22AAB52','','2303444','33','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','FDB8DF478DADD2E36619D63D04D106EDB86EBF8FB9EC8CB4','','3000288','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','BA76761FA5F569497047C3484FBC6FDDD8AFA71B96FE93C8','','24812','14','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','2496E15413F7008A01FA53AC109C01E45B80BF2C3BC2F205','','56063','25','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','CACB6383E8613E41489D93D7FE7235BE61214F9AE0825F44','','13291422','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','931C403D2562AEE58EEB2586D73D51323A3A739860290AA6','','690106','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','1A95AFB270B9C0D170E7280816891492C21E87D92E9EA6E5','','433168','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','7483929857AE7A16C2D9EB0857EB1D5E9477479C2EEF0B5C','','37180','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','379E1F6905F203E1026DB54A58AF588EF5726D9F50FCF369','Afde32uu','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','08394625CCD77F36897EF283FAA0C019EE9F36775182584F','Afd32uu','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','D9ADFC0283E75A86A3E1672BF50F5D1AD8E8466AE7086437','','27270','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','D37F6219417C0E5196D3A4473D57ED767E6D9B49BB2B9555','','0','9','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','93AAFBD4B8B50D6AE72F3BA7002D76791942D0EC0E61253A','','41127','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','F9B132A5E1FFF379EC7175C12A58683C85272CC96E03E161','','41023','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','1867D3CEC9379D1E6B8A1B9B667BDB1B6084B02ED9A60864','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','86548378A25632100F7E6E872ECF4D591B7542D977B623AE','','3049452','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','9E00F6F9AF1D63FA2628E60B7BF2B1D63EFDD42D69929A73','','41080','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','7DDD4CF1352822A1F9D19775498EE865FABB26C69F8FDEFE','','209352','75','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','3D793384AD147BDDE98743EBE1E943263EFD6CAD542E2757','','17522','15','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','9014AFDE93FDAC6C20971BEE76898FBB300A744CCBC24DA1','','28956','12','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','D1212D7155D2C3114DA596070139C0B3610597CA0CE1CB17','','149','5','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','BE18517661568A9D7F3CC9548592867F3A987A705866F60F','','3049888','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','5D833D8DF05A7AF50DF945F5AF6880D325AC52B3ABC815AF','','41188','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','1AA3B0D9AD368562F181E4E5D498652B3859210C126824D8','','672602','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','331E027A700CAFDBEAC9E80B68B8304D0895D52947447448','','501956','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','8E704337CE9F823A8A93947130ED1EE14A99F2EDB5458B94','','12194860','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','BB1C818F79DB2F1FF71B7CB181021EB4F425311D09DAAE81','','0','9','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','F1AD484D3F189A08EBF420C235D16ECAF1B485092FB063D6','','3045776','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','1CF7028BE4D68B7AC6BB8061BECBFF402860541D04C90C0C','','17906','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','2550D8249054E57086D4F4CF80396C686A71673C070711DA','','17890','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','E864BD00AEB4F3D18CFFA7AADEAC7926A9A1E3EA7588F17A','','29884','20','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','9E70338B4C8C845F8514925463DB624FC4423F9C467F5E62','','685304','44','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','FC5EF49EDEE7A5268395298071BBA270822547A7416AEFB1','','3634252','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','10694516','8','2F549A416F12033B',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','8282F57B7C3CD9B449B6363D5C9E792C2044EA2C3F381F9F','','17282','15','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B793EEE20E44B2942C6522F79343C58738A1A8489A381FB0','','24812','14','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','6178EE9E575927A3505835AC88DA31BE15F0622DA55B31EB','','28956','12','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','7BFD2D88793D6AB1A2351A3E8873B1E20CF44BF6563A0930','','3049888','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','4102F13984A4E146C134D3F607AE7CA1B3263A22B52308C6','','447736','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','EA1C4CA2A64548757BC2ED1C5BB6D2B5094AAD5B5C331F7D','','683146','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','BEB42A9DB2B656B2DFF3DD7D1B8D87033F1D99A019CD4BB5','','3045632','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','4E209437251EBB0CF31CF8A7CCF2C873A4D759B9563D573E','','34176','25','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','85EB9C8A36B32287F096CF73F7FAE8B57405321342E9B779','','17666','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','2EDE42629DD4A72669FFC9BBFBE15F357BF241853DBF7B2E','','27270','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','FF47A1D9514F4DD81BDA23FC9018F03D894F9096E26EF809','','18680','35','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','65185BBCA1D9995EA4B796E908B9F78923FDAE2D0C2500BC','','594348','26','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','BD55E51B55A8FAB82CBF45012D761B1BEEE9BC0DAD8A83CD','','28920','17','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','AACC3E694ACD478B1F99714734B5A43BD7D7A2A3565ED9B2','','3049492','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','4609669','5','8986100F00',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','F3C07663325C5358F58A547725FBDF8DEF591021CD94513D','','685304','44','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','503B5AB938616DE7672103919957B421FA8B6C98F72375F6','','20512','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','3B6EFA3FF9443BEF4CBD2E7CAE08DA1753C79E5EDFA8510F','','37136','40','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','3E5D1B5BBAD191442388FBD5236F5406CB2CA68EDF986328','','17666','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','D8AB51DCC7840369846821B2A6B229CBA2E42C0CA566792D','','0','9','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','F8004FA24C4925FAA3ED4993B0D457C5E4C5371915BB93D0','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','EAF4A696D564F6BC800BF0F6D732E4E92B50133DE02EE8C4','','0','9','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','30BDC2BC3E4A2055426FA0EC67DBDEB7705C58047EFFA4D6','','61874','42','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','3C8BCED97B2F9E5A52587E725004E136DED2B53AB2DB9D4F','','20512','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','0B586F15A8CFD6B7A96632FF2B48D0F71E9D06BFAC174002','','3049888','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B2B3043BF9CDF3DB535D52ABC45BE586E6B8097B58D82C45','','17890','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','9ED22064CDACF86DAC8C365C325EE428A87B628D137E038E','','28920','17','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','2254B046D6D8D1A47E5F9275474B5EEE7A96CD99E8D952E9','','682378','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','0A268B6DB28320A1956B54C36C61C625B02A48A4768A0823','Afd32uu','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','41B3450DB8D10C506A561C7B95354A7792286D837C08B437','','12194860','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','5CEDF5982800D9C6D16F9D357AEA17BBBAABADC8F3A12EC6','','45223','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','3399D1DE6156FDE8614333B6C4AB0F5B2354381AAB7AF818','','3049872','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','31DA5322A7B1F1715CA35F0976C201122A76D46A719F0C28','','335122','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','36172791F3ACC5EFD406A7AD6F5D218279B94D458BDD60C3','','700714','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','C64DDA3E5D94BD0DEFEDDB867DD304177B554C5771CF4DEF','','682378','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','701D57AFE1315795AFE1340C35E923FE69C36EFC670C0BA5','','0','9','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','D55BBE3C196C2FE07829CC54717C0A2A27C13A38ED4CF582','','30012','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','DAD3C22D23FAB30C9AA6796E19EAB23CB7DCCD639854C14F','','3045976','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','B3EC9710B55079104420F126BA7257F8FD7DC39D46880E5B','','2299060','33','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','7762CCDD012D51167BF42F775CC307238C35EA5DA55B999E','','41096','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','CEB7B2C893B8410CA8716C77DB679AB860F7F0E86BCF2D8E','','12194860','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','C584FF543FABE32DBA3206AB324CAFAD92497C4926BBF8B2','HideEx','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','122B96C9AD3D43FA5EE82ADFA464904F304EB7FD4CB5622D','','2299108','33','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','3EFBC5B273BFF42D9F704C74DC2381B8A0D50D61C2F1512E','','717898','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','8C5824E4A6D16714A2BFB5FC9D0CBF4706B8A2170DA87D7B','','0','9','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','402282B90E06579656CF454305C0B5A925C95FBF6A7CF265','','477928','60','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','71B36C6D650EF0D049328643E5B12E73DF95B58B2F30D0DC','','17938','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','7C49C303394E1493D897E802528CA8E558B6A7BFE8320F08','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','2C190F9E920AF2EF67DA4D06905C2A6A0A2BC63D0192BAC5','','3045632','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','E59168C40E1A0C9F8896EA9E2D684988D81A522FFCDC51D5','','3766400','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','3C825803D3ABF20A11495E54718A2D83A0B35FD7D741B5E1','','12905','36','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','DCF32E3E1C5DF813DFB137A2D9B21D95B0AF66CC2AD0F245','','41023','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','7B66BDB4A0A713A7B315888708B88F90CCF7313832CCE35E','','3045356','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','FFAF20DD14D7018A4156F000D1455DF36966513EB76F93E7','','2299116','33','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','0C59AA1F05D2D9D3C0C5ECF6A38D9FF57187A7A461DEE908','','717898','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','913AA6D16EBE73143FA4B4EF89C786668C6E7DD0B936DD18','','90202','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','A9F5CA81A547D8F8051928A287DD280F7FE835B2858CEED5','','20512','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','16B4D8897AEED4732A47239CDC99603D2F505D0AD602847F','','673210','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','23F29E10D55E8701A1A699A1C05CED4553676E9FBA5B51F5','','13634','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','9A65A024256C0D7D677C9F24A9C16A48BEA9B03CCA016098','','3000288','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','AA0004288ED58DE4324FA521F849807DB1EF33634C7FE8C3','','61874','42','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','E400A401BD0376A0475F1216731F5EE0DDF42C9A4FA805D2','','59620','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','5265823','5','72118B5518',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','FD434987A57E848192562B61CA0D67BDCEA2392514CDD0AF','','3000288','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','88C140A6580061C775D9141887FABD3F20E574DC4C0C4BBB','','9977','32','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','3623B441A5D414AFD6650C8B8623ECF3C3A9129E1F5A81C1','','672954','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','393A06D430D287FEC1C02F9945C34BA2A7954241C6357909','','335122','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','0955A3267A3E576B9BD823BB210E8200F37CCB0421BF208C','','685656','44','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','1A00ED18B456ADC1A1F39A5DEF572250FB0CCAC8BECA9DD8','','477928','60','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','370B9B6E3AA987595F986C5716BF9FFCF0369438D5DC5D11','','156','8','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','E8E85DFE24D8D20852A37D702CDF029C3B1FA30B99CAA4BE','','447736','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','5090917','8','E886EE1D0083C40C',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','FA24C5FEEAF4538DD4913F10C99F3F64380B7354EB318386','','3041472','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','C6AD92AC13B340575AB5D0769A1A7EED47BC42A5968E67D6','','37136','40','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','990EFFE367D44A29E82F62C57B6041A66F66C1D100B05639','','28956','12','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','631E42C3B6ED8A22F5AFA903176A7EB011754F5ABF2081EF','','3766400','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','D8AB4091C51177D7BBA7384EE12E0384A7EDB73E38D15920','','13291422','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','54AAA1926869D259C427870A620AE0C24AFC9B472F424633','','3049888','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','CC0E40919988E53DA0B447F0984A30D51CC42E9DB54A8F1F','','49564','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','396E7EC540DC2C74CD6709753CC627517E3A2DB8A1EF3633','','29916','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','84A5A077180DFB9841E8DF4A4EC49EADE886D905768EE032','','57602','42','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','072300C283F8DF72B3ED5F3CD8B7DF47574AECF7B21FBB59','','668874','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','D4FC9A6022B7CFA81904503E43B813631D4735D80BC61868','','9977','32','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','47B5A19B87234257CB6C1485AB2C0CB25513260F60094BEE','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B8B6F4BA5FD45F0ABDCB060F72987987B6EF62B80C9E378F','','12194860','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','261F2915266F20B7289A1560176F24198930C61540BEFA01','','3638348','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','019A378006B0677C0B2F42C6CA882EC571D504E7D8F5B05B','','17282','15','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','4E82DD9F04571D6DAB2FFCFCD638699D1D4C84917F720F32','','717898','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','EAA75F6AE049552C55AFFDABB7268682428B1A9BF028C4D4','','673194','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','F1431C669453FE0BD95430ECD8328EA0D3CD37BA658F094E','','198','12','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','8AD8C581E8BAF7A2140211C4298A93E229493F272F4EFF4A','','3045912','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','C154E3B6CE0B979BA98FEDAA1829DCCF2A7172642DEF9EFC','','37180','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','295A29C81B1B9CC9B6758440BED913ED4D8B5E05A90D7CE7','','41023','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','3ED9105E3D1F31AD1D4376C54B07D18348C56E7453D161B2','','690106','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','74C75B8F0147ADA8610F6C9BB80C4BDA543C1D95943ADCEB','','0','8','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','7BE7A7D3F4AD8B30A0A144D5D4AC5E569BB9A0D18AB590FC','','37180','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','0B5C54A4850924038D95A3F1C44F300921CEA1E13644842E','','57602','42','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','5081862','8','6840AAB600C60200',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','876743AA30D61C83444427F4F18203B2FF443C337E5DD190','','22792','25','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','C83A14C21D1E66345574E3E0E3613E924F702883A30A1809','','31924','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','8491566','5','8B4D10890D',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','2545F02B4FC2F5425960A2E5C0299936C99FF2EC68A5ECDB','','501956','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','85EF9C6353712A8D0E2E27B1702B510A95B1305473F86345','','41023','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','35282392AA86692A153FC159D6E13C74F9DF01661E4867D6','','13538','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','0D6CC3008615CD5BFB96A90620805B78D5BFBC6100B1AF0D','','13538','15','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','D573179188521C485CFD24A9EE9CDA77C540A31EE68E3E78','','41228','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','8FA80694C3766FC1B041103EB35EBA3B7C77081A5DA8FFD8','','28940','17','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','CD6B8F9D23612C807F7653D29F1F1C54BC8F917C5C5BD8F1','Afd32uu','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','FCB5CF830DB536208D4C58E5838D1C8798F0738247EF0867','','672602','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','4451680A3F41926C1545701887F93A0A49CC29C3E114AADB','','4011280','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','6BE2C4F29ADF49AE5BF0485A27A854087E775FA28047168C','','27270','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','016FF5D8685E37969B1B7C310756DCD93D4AB34256837031','','38300','21','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','4623652','7','578B7D08578BF1',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','6726DA4A8F112CC25DD78500CA9BF792DB688F7D8D1FBC4B','','57602','42','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','9F8B3A3C70027496420A619969CF1EB7AF447D245DA766A0','','29884','20','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','E74FFC8ADF5FE8A0FE0F10BCABCFCEDB3B2B9C2307340D7C','','3041472','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','B31302D6A47971059B2643B57D2D50EBEBEAA89BE483F1F4','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','2F761DEA3CD3394A0091D745FD2976B52F3B16BB0A48BC80','','29884','20','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','8E44EC966A93870696359D3E2474D12C071A381B9403B1B9','','673210','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','2424AFA7FEC48FF09E5E3BDAF93FAA74743A7551B6FB1495','','56063','25','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','ACCF5804D419F30643F87A650C4DC6E0E10266922692AECE','','682378','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','6EC19D6D1244E3FE787AE448EC905C509DBA3C01FBE34F24','','41280','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','5B2D2EE40383C33D381998995210918AC6B1AD67C5880F6D','','710554','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','83FFE0F8F224D5E56C38D731EFE8AD5AD1285B1AD4FA019B','','683146','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','9D67A809FD8FDA1E1504F0C038E21E1D5FC4C6D11F426228','','28940','17','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','2965EC092EC0A4B3D4A3C781F0A0A542824C77B7300BF50C','','45324','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','FE31901F5558E6555DA6BC5B1BC3415E82CB97DECBB486BB','','41096','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B35406A77D6501A50F41981C7C137AD5272EB612F4A74109','','29884','20','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','7275397E511B45264BCFA30E3A3F8101894AA3923D91BE6E','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','CA7D8D0E1F20385DCF6FC209799750CE9D0160B0C67196E7','','700714','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','F5CCDA244D826B3180E7C49193B3B0B5DBF651EC67DCB47A','','594348','26','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','7977F1E72B30179072EE1784396AB0406D06162051CA1EDB','','37136','40','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','603F8A015D8436CCBCD68B26FF6006E7A81BA9A8D9524B1F','','3045356','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','9631E9EBC78E0333010E522045852C7BEA44655080D418F3','','3049888','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','43BE7C00605D9FECAEFAE38D8FFEAED78B8382563A245F10','','9977','32','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','E493F1BAED1DBE7A0D429BF1A5D665636D29069060310BF0','','13291422','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','6C53203FA95EBE4DBB0A7F3E85994058DECA069A5244C29E','','130380','14','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','5A07E5A0525DBD5005CBDE16F7393EC8B795ADB2327C2F96','','3045356','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','D7665366F333BD580C5F8E2FF8971294F69E99EC7E3623F3','','717898','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','9990741','9','8B878000000089463C',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','FB87EB8F178C69D9F7576AC7FF75D0479467057A2B6C956D','','9977','32','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','292911AC98E7ED34DF021B562D5DEBE8DAA15570B552978B','','3000288','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','6618F45C49D47C4105070C085FD5C384254A62E4AB614DB9','','3634252','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','316E531545999AFC533814888434999501FEA8ABFBAF8655','','134968','32','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','9945ED64886F68664A4BDF50731F4B4DC680273AB2E0DBCB','','20512','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','1D4D6EC7B6B26553FC914D28BF9B62FD81D0B865DE606D97','','29884','20','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','63B2D2ACF6E912CDC68282B080A2D610BE6AFE8EBB95FD31','','3070052','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B0955BAC042D5441496103E7C45E38609A9AE3799D534BD9','','18680','35','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','6488E44D4E965581650F73F6E68DD8F863795162D99104F8','','682378','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','CC0D3F7D8FCF928A55F92F6414F4AEF7AD75DED5819BF870','','13538','15','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','CD3835965AF27EC338F828666CD06089B847B04A2DD56AE0','','17938','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','D04E9CF6A03D4767AFF1E4EE0EFBC333AEBA5B0552F15957','','0','9','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','120904F033D78A13DB0971F095C809852B7EB876D1A8AA01','','3045632','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','7DDD19DCF77E27DF0A31BC21C7F716FF85076AF065F102DC','','36924','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','5486E2CDD98AC3F25C223FD515CE7EF3FB09AC12ED338C86','','198','10','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','F8D6423F01E5369D16F6F70180083B936F0DDE3737B23308','','2299092','33','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','EC10CC349A8E654240B27B03EE1232B9CCED28F7104CCB71','','49347','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','29E064ACC509206873A1D548F4816DB60D29D6EE9FF63A56','','682378','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','E1A8A2A81920A7BA9F419A6D19CAC3DD9E292EF39F963234','','676970','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','32393EB09F7C829F58612E5E47018F7203C43218C3506C79','','20512','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','AFC4D19CACEDE8E9A2FDE3CC3D29CF8556AF4980872DFE1A','','3033068','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','09A2B97FD351B1D339030233AC51C741E0ECDC21AA7A152B','','3049452','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','2B2AF2171B8A9FC0D44EFE0ECDCB9DE1A55ACC8D83661E16','','41023','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','D111B236DC42EB338870E72FF6EE3141714D0437864B02AE','','3045356','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','E6DC6898929D1DA9F5768A9BFCBE848F8C1F31E8B6910FB8','','335122','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','85A32F8B5F8430A086D27E62EB17D878E49CE815F6AC91CA','IPSect','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B6CB7B905A6BDD64BC032BE71927C1FE31153D14D6CF87E1','','447736','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','40EE7F4EEE1D707ECB770CDBBB54730CB863CC8E268D4208','','3634252','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','D74E308262D8C52ACE81B66F1D90C160AC86B2E0508176C1','','0','8','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','E15287D29EE155299619F8E93E66B55B564FD921FA41CF50','','3049452','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','58DFAEE44A52F0D5A58B0C94F0E5E63C1C7F76206D7FA7CA','','22792','25','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','83705EAE8AAD9709494E52EB05AC0481C998C15730E61099','','30012','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','0271F4D624304A48CB7CDFA016E3A735DCA3170FAD557468','','3070052','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','217DFFE3C12F984992E1E0AE7B5864061572BA301B21D869','','178504','96','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','C5C7AC33D1E4CF33E661033006BFEDE08523B643CCF51261','','3045356','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','4618113','10','FF1554F79D003B470C89',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','D45144FC835266270E67CFB1F2900FD227B63204698A3EA7','','50040','26','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','B5BB832AEEC591196864E08A392592C5789D76D3DDDD4DBF','','27270','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','93582814E00150E2DD750ACAD7BD1719C4EBCD4C06F482AB','','28940','17','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','FD6B6AC7FA5F2E7828CB1B429A9442383BD93E762A5D7D00','','31924','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','51DF4EDECBBE42CC7C5D6723318F98E43E14A45F41CBD124','','41080','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','F2B2260FDD23E5F268FAAE4D1A48E74C452F2AC5D114765D','','57602','42','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','69FBDB69EC2E113EF691E47EDD46E40F03D1EBE226A1F7CE','','29884','20','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','E3E431D8F8FB38F0F2586D0F50D809BCCEB13651C5EF2619','','682394','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','2294015927F07D884FE2923FA17B3A8BCABC0A378930CF84','','679578','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','0A022AB25C52F94404A01F96687B2D6E6BE774237254BD05','','20512','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','65EEE243504EDC3319C3528B1A1E8061A3E75F4C25B61F95','','41228','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','877C654036A29FC108FE8D69D416361732D7A0270E51189D','','3022016','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','1A223564DF9E7BADD3CF858FB8250FE59F892232AC3B412D','','4011280','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','4FEDF58FB4DE45289C97ACCF16EB2DEA6FBC85C74A52D3C9','','37180','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','D4BE47EA1D68B92E2AD8307D139877705BE2B6A98B6A916E','','13033','36','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','9658AC7EF426A52C327BBC1ED71C6FA6DC5940E35DCC18C7','','18680','35','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','5345746','7','746583F9177760',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','1B17998CD8E0CDA4D84B0A0F9DB05E536DACE0348A883D24','ndis_x86','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','BB9B86ED12359A465B02387A1D727F11F78D35C8B7FCC2FC','','2299092','33','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','842BC1A8C53902D26018B1C5E05ADCD70D973A968E298331','','50040','26','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','3E894F9682573CC0AD54C7E9873C9026AC050929392D0B93','','3049452','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','4A31E3D24FD6D576D84EF1BFB813D0F066870DEB38C32E47','','21826','11','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','EEA122B4C066EC0B196F67511E633EBACB37C4EA6AE4BFF7','','41096','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','66211671BEF80FB973B1C9595A70B462AD79EC83530DFE89','','12905','36','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','3760BBD6FE99A0BBEE0AB61A8BD52A6ABCAC48FF3CB265B8','','3070052','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','70F425426612D0D8495386C2375F7A4183548C0D4E7DFA46','','594348','26','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','BB310E9DDE9259027123500E65F9FA1E8D9D0F5FE8381CD2','','3638348','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','5296496','12','558BEC81ECE80D00006A0AE8',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','6FFB5E4982D306680E0C59087DA961CD4F6B068E323C3BB4','','401992','14','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','6DDCA79B7460A1F3671532A28FDCEB331DE6CA550E3178D0','','3766400','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','A8F7B2FB37CF3BEF43D6CE5C0BF85E85077E681490BA1C4C','','37136','40','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','052F425E7528B3A7155C45EEE530F915DBB154E5C8876E25','','50040','26','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','5283280','12','558BECB8084E0000E8731DF0',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','D6DE200B631AF71BFBC76202D82649942FD6ED9BC4A9EF75','','198','12','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','7860712','5','742DF6407C',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','61077261C66B2CF9B199F115A3A656EA6A00068F151E3656','','706314','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','513FC0F0673A9DF86FA1FA05371040C14634CE08311ED619','','401992','14','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','5E0970A6EB246A79DDF427CB76D0D921F971E13921DD5D2C','','134968','32','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','53CAC3EF654610AC7E043C6AAD62709EF0B5400DBDE755EB','','149','5','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','566637D06BAEA9190B7CE510C697F72CD20FE3D958A95A25','','3049888','31','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('113','3C9B0CC7FE020EEBD43E6B1D88EDDF0EC46AC35974765068','drvsys_mon','0','0','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','BDFEE5DCDD37FC5B2A1B3E42FBE5F7997CFED35E86062EB6','','28920','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','7794AE60131E4D07860DB48047206784B885B30457EAB83E','','12194860','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','653A308BB00D914AE1ECD773BA4B0BA7724874BC62647D10','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','06B696C35F905E75B451A02E121BDA0330CD44E0D9B872BF','','60648','56','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','35E8CD9E8CBD879B1E53278926C634AA8B72B8D9A20009F9','','17522','15','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','9B13F2E744904ADAAA062F9113A576D11C2C450D1CD6A4AB','','13033','36','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','60851B4A6F7338632A84795FBBB20320E49AD2CC2034BA80','','28940','17','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','3BC0BE02AE0B6975974D3B13B811EC6BDACBF9EE122BE633','','90202','13','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','E47F7DD8D5B5C29B70AFFD4F25AA286167D411937F9BD247','','36907','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','35D1CDEE86A410DF087DE6D5F5AC6289C4888B9753293E73','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','2ED2EEB29EE0D48477779E5CA875F1F5F15CCE74CA85BDAA','','28956','17','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','78C3A74F7624B26478D4C98BAF1194D9A8E1B33D6AF89DD6','','174688','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','3D02551F548DFB58832626FE90A7AAA12824D93A54A0DC14','','709322','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','09D04CF8ABC51D06D874784442987E5F2631041550607255','','36544','55','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','F3CD473F8C85977895CA5BA9DC22185BCCBBF6B977205193','','448492','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','30E2F23DB1038D16D2DEEAB1D0F1790D961E468368DC5108','','30012','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','540D465F760320A63981289D30CD40CCC770EE126523C71D','','477912','60','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','C461E1BE054FE29A1FD58B33D33890BC4A1279DE4F572B47','','37180','24','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','1AC3D903CFCA11321E76A257BDA0608E5060030BE745CCF3','','130380','14','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('243','','','5284488','9','7507C7451400000000',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','96281A2887E61232007D7015E4A35DA118794841A8EC84BC','','3037164','22','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','8A1AC926B46A9E3D60D3BD87A59FF77D7B80A1510BC327A7','','710730','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','3620B6BDF3993B87FD35E906FE8376A04FF34684E2023D8E','','41280','16','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','025C373F05EC6E809EF5A86A903570FDA14D219286BCED5E','','448492','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('178','5C0E4EE98C4E34CBE44F6BD595C13DD675555164A8D491DA','','710554','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','BECE667BF9443EF6515E8E154F74FC2C5817455C8636DB72','','501956','48','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','94F1DA3E0D955761826D6BC932E26F44D321B4838C7567D8','','13538','15','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','EA3A3AD71FD14B038C98F256E80C1EFA1F45562A3DF92E7D','','22792','25','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','AD5A8CBF55EC436DA968EE0B9744C93F65D9E0D6E3C1B136','','174688','37','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','9B6B3B311BA9007C06CF0D146BB979B11CF295C58768DD4F','','31924','23','',NULL);
INSERT INTO `warden_data_result` (`check`, `data`, `str`, `address`, `length`, `result`, `comment`) values('191','A373FDB6A789CC46072A4CC51A429C817C40862DC6C0190F','','30012','16','',NULL);

DROP TABLE IF EXISTS account_forcepermission;
CREATE TABLE account_forcepermission (
    AccountID int(11) unsigned NOT NULL DEFAULT '0',
    realmID int(3) unsigned NOT NULL DEFAULT '0',
    Security int(3) unsigned NOT NULL DEFAULT '0',
    Comment varchar(32) NOT NULL DEFAULT '',
    PRIMARY KEY (AccountID, realmID)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



