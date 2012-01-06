# --------------------------------------------------------
# Host:                         127.0.0.1
# Server version:               5.0.45-community-nt - MySQL Community Edition (GPL)
# Server OS:                    Win32
# HeidiSQL version:             6.0.0.3968
# Date/time:                    2011-12-29 12:03:13
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping structure for table mangos.db_version_ytdb
DROP TABLE IF EXISTS `db_version_ytdb`;
CREATE TABLE IF NOT EXISTS `db_version_ytdb` (
  `version` varchar(120) NOT NULL,
  `613_FIX_11874` bit(1) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Used YTDB version notes';

# Dumping data for table mangos.db_version_ytdb: 59 rows
/*!40000 ALTER TABLE `db_version_ytdb` DISABLE KEYS */;
INSERT IGNORE INTO `db_version_ytdb` (`version`, `613_FIX_11874`) VALUES
	('555_FIX_10150 (3.3.5a)', NULL),
	('556_FIX_10188', NULL),
	('557_FIX_10223', NULL),
	('558_FIX_10271', NULL),
	('559_FIX_10309', NULL),
	('560_FIX_10344', NULL),
	('561_FIX_10372', NULL),
	('562_FIX_10408', NULL),
	('563_FIX_10434', NULL),
	('564_FIX_10480', NULL),
	('565_FIX_10512', NULL),
	('566_FIX_10554', NULL),
	('567_FIX_10554', NULL),
	('568_FIX_10602', NULL),
	('569_FIX_10625', NULL),
	('570_FIX_10650', NULL),
	('571_FIX_10675', NULL),
	('572_FIX_10709', NULL),
	('573_FIX_10726', NULL),
	('574_FIX_10779', NULL),
	('575_FIX_10803', NULL),
	('576_FIX_10842', NULL),
	('577_FIX_10878', NULL),
	('578_FIX_10905', NULL),
	('579_FIX_10930', NULL),
	('580_FIX_11000', NULL),
	('581_FIX_11043', NULL),
	('582_FIX_11073', NULL),
	('583_FIX_11100', NULL),
	('584_FIX_11124', NULL),
	('585_FIX_11175', NULL),
	('586_FIX_11202', NULL),
	('587_FIX_11213', NULL),
	('588_FIX_11235', NULL),
	('589_FIX_11260', NULL),
	('590_FIX_11278', NULL),
	('591_FIX_11299', NULL),
	('592_FIX_11321', NULL),
	('593_FIX_11346', NULL),
	('594_FIX_11385', NULL),
	('595_FIX_11402', NULL),
	('596_FIX_11429', NULL),
	('597_FIX_11468', NULL),
	('598_FIX_11504', NULL),
	('599_FIX_11539', NULL),
	('600_FIX_11581', NULL),
	('601_FIX_11581', NULL),
	('602_FIX_11630', NULL),
	('603_FIX_11700', NULL),
	('604_FIX_11736', NULL),
	('605_FIX_11765', NULL),
	('606_FIX_11781', NULL),
	('607_FIX_11789', NULL),
	('608_FIX_11800', NULL),
	('609_FIX_11817', NULL),
	('610_FIX_11853', NULL),
	('611_FIX_11847', NULL),
	('612_FIX_11857', NULL),
	('613_FIX_11874', NULL);
/*!40000 ALTER TABLE `db_version_ytdb` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
