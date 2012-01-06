# --------------------------------------------------------
# Host:                         127.0.0.1
# Server version:               5.0.45-community-nt - MySQL Community Edition (GPL)
# Server OS:                    Win32
# HeidiSQL version:             6.0.0.3968
# Date/time:                    2011-12-29 12:03:02
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping structure for table mangos.creature_ai_summons
DROP TABLE IF EXISTS `creature_ai_summons`;
CREATE TABLE IF NOT EXISTS `creature_ai_summons` (
  `id` int(11) unsigned NOT NULL auto_increment COMMENT 'Location Identifier',
  `position_x` float NOT NULL default '0',
  `position_y` float NOT NULL default '0',
  `position_z` float NOT NULL default '0',
  `orientation` float NOT NULL default '0',
  `spawntimesecs` int(11) unsigned NOT NULL default '120',
  `comment` varchar(255) NOT NULL default '' COMMENT 'Summon Comment',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='EventAI Summoning Locations';

# Dumping data for table mangos.creature_ai_summons: 19 rows
/*!40000 ALTER TABLE `creature_ai_summons` DISABLE KEYS */;
INSERT IGNORE INTO `creature_ai_summons` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `comment`) VALUES
	(1, 8074.84, -3840, 690.061, 4.6, 180000, '10727'),
	(2, -472.02, 105.823, -94.6299, 0.0301925, 300000, '5721'),
	(3, -467.099, 85.2944, -94.7318, 3.95326, 300000, '5720'),
	(4, -9967.55, -135.956, 24.5909, 0.170326, 180000, '6846'),
	(5, -9958.49, -140.526, 24.2409, 4.0015, 180000, '6846'),
	(6, -9964.59, -140.567, 24.5105, 0.741307, 180000, '6846'),
	(7, -9232.11, 342.473, 74.4399, 4.31658, 180000, '5917'),
	(8, -1209.65, -2738.38, 102.646, 4.99352, 300000, '3395'),
	(9, 274.415, -416.159, -119.962, 4.86179, 18000000, '11460'),
	(10, 272.422, -418.679, -119.962, 4.76048, 18000000, '11460'),
	(11, 268.91, -417.027, -119.962, 5.03693, 18000000, '11460'),
	(12, 1809.49, 750.594, 18.0475, 4.56791, 18000000, '8138'),
	(13, 1824.58, 747.281, 21.1486, 3.70162, 18000000, '8138'),
	(14, 1796.56, 758.122, 14.7124, 5.03836, 18000000, '8138'),
	(15, 1783.9, 745.005, 16.111, 6.03896, 18000000, '8138'),
	(16, -1229.44, 1476.47, 68.557, 3.40581, 18000000, '17280'),
	(17, -1230.98, 1479.24, 68.5544, 3.3524, 18000000, '17280'),
	(18, -1227.86, 1479.93, 68.5529, 3.54404, 18000000, '17280'),
	(19, -1226.47, 1476.96, 68.5558, 3.46079, 18000000, '17280');
/*!40000 ALTER TABLE `creature_ai_summons` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
