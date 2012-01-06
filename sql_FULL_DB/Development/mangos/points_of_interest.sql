# --------------------------------------------------------
# Host:                         127.0.0.1
# Server version:               5.0.45-community-nt - MySQL Community Edition (GPL)
# Server OS:                    Win32
# HeidiSQL version:             6.0.0.3968
# Date/time:                    2011-12-29 12:03:32
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping structure for table mangos.points_of_interest
DROP TABLE IF EXISTS `points_of_interest`;
CREATE TABLE IF NOT EXISTS `points_of_interest` (
  `entry` mediumint(8) unsigned NOT NULL default '0',
  `x` float NOT NULL default '0',
  `y` float NOT NULL default '0',
  `icon` mediumint(8) unsigned NOT NULL default '0',
  `flags` mediumint(8) unsigned NOT NULL default '0',
  `data` mediumint(8) unsigned NOT NULL default '0',
  `icon_name` text NOT NULL,
  PRIMARY KEY  (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table mangos.points_of_interest: 494 rows
/*!40000 ALTER TABLE `points_of_interest` DISABLE KEYS */;
INSERT IGNORE INTO `points_of_interest` (`entry`, `x`, `y`, `icon`, `flags`, `data`, `icon_name`) VALUES
	(1013, -9386.55, -118.731, 7, 99, 0, 'Lee Brown'),
	(1015, -8851, 856.599, 7, 99, 0, 'Stormwind Inscription'),
	(1016, -9060.71, 149.236, 7, 99, 0, 'Herbalist Pomeroy'),
	(1017, -9376.12, -75.2306, 7, 99, 0, 'Adele Fielder'),
	(1018, -9381.13, -70.1127, 7, 99, 0, 'Helene Peltskinner'),
	(1019, -9536.92, -1212.76, 7, 99, 0, 'Eldrin'),
	(1020, -8812.57, 666.354, 7, 99, 0, 'Stormwind Auction House'),
	(1021, -8885.39, 640.052, 7, 99, 0, 'Stormwind Bank'),
	(1023, -8573.47, 990.095, 7, 0, 0, 'Stormwind Harbor'),
	(1025, -8387.53, 565.012, 7, 99, 0, 'The Deeprun Tram'),
	(1026, -8867.65, 673.634, 7, 99, 0, 'The Gilded Rose'),
	(1027, -8839.35, 487.546, 7, 99, 0, 'Stormwind Gryphon Master'),
	(1028, -8886.4, 595.38, 7, 99, 0, 'Stormwind Visitor\'s Center'),
	(1029, -8425.37, 627.621, 7, 103, 0, 'Stormwind Locksmith'),
	(1030, -8432.87, 555.121, 7, 99, 0, 'Jenova Stoneshield'),
	(1031, -8796.2, 613.098, 7, 99, 0, 'Woo Ping'),
	(1032, -8762.39, 401.972, 7, 99, 0, 'Champions\' Hall'),
	(1034, -8392.92, 272.087, 7, 99, 0, 'Battlemasters Stormwind'),
	(1035, -8755.01, 657.7, 7, 99, 0, 'Stormwind Barber'),
	(1036, -8749.69, 1075.78, 7, 99, 0, 'The Park'),
	(1037, -8430.27, 559.87, 7, 99, 0, 'Hunter Lodge'),
	(1038, -9008.55, 857.193, 7, 99, 0, 'Wizard\'s Sanctum'),
	(1039, -8621.68, 777.189, 7, 99, 0, 'Cathedral Of Light'),
	(1040, -8621.68, 777.189, 7, 99, 0, 'Cathedral Of Light'),
	(1041, -8782.15, 353.099, 7, 99, 0, 'Stormwind - Rogue House'),
	(1042, -9031.59, 549.835, 7, 99, 0, 'Farseer Umbrua'),
	(1043, -8938.57, 986.894, 7, 99, 0, 'The Slaughtered Lamb'),
	(1044, -8714.84, 342.761, 7, 99, 0, 'Stormwind Barracks'),
	(1045, -8975.3, 778.865, 7, 99, 0, 'Alchemy Needs'),
	(1046, -8433.29, 610.413, 7, 99, 0, 'Therum Deepforge'),
	(1048, -8641.24, 423.502, 7, 99, 0, 'Pig and Whistle Tavern'),
	(1049, -8838.32, 782.35, 7, 99, 0, 'Lucan Cordell'),
	(1050, -8348.42, 640.412, 7, 99, 0, 'Lilliam Sparkspindle'),
	(1051, -8515.48, 804.505, 7, 99, 0, 'Shaina Fuller'),
	(1052, -8793.17, 741.886, 7, 99, 0, 'Arnold Leland'),
	(1053, -8975.3, 778.865, 7, 99, 0, 'Alchemy Needs'),
	(1054, -8851, 856.599, 7, 99, 0, 'Stormwind Inscription'),
	(1055, -8707.42, 462.037, 7, 99, 0, 'The Protective Hide'),
	(1056, -8416.23, 672.791, 7, 99, 0, 'Gelman Stonehand'),
	(1057, -8707.42, 462.037, 7, 99, 0, 'The Protective Hide'),
	(1058, -8940.58, 771.346, 7, 99, 0, 'Duncan\'s Textiles'),
	(1059, -4957.39, -911.604, 7, 99, 0, 'Ironforge Auction House'),
	(1060, -4891.91, -991.48, 7, 99, 0, 'The Vault'),
	(1066, -5021.06, -996.453, 7, 99, 0, 'Ironforge Visitor\'s Center'),
	(1067, -4821.52, -1152.3, 7, 99, 0, 'Ironforge Gryphon Master'),
	(1068, -4850.48, -872.571, 7, 99, 0, 'Stonefire Tavern'),
	(1069, -4845.7, -880.552, 7, 99, 0, 'Ironforge Mailbox'),
	(1071, -5010.21, -1262.03, 7, 99, 0, 'Ulbrek Firehand'),
	(1072, -5040.01, -1201.88, 7, 99, 0, 'Bixi and Buliwyf'),
	(1075, -4839.48, -917.295, 7, 99, 0, 'Ironforge Barber'),
	(1076, -5042.66, -1269.78, 7, 99, 0, 'Battlemasters Ironforge'),
	(1077, -5023.08, -1253.68, 7, 99, 0, 'Hall of Arms'),
	(1078, -4627.02, -926.459, 7, 99, 0, 'Hall of Mysteries'),
	(1079, -4627.02, -926.459, 7, 99, 0, 'Hall of Mysteries'),
	(1080, -4627.02, -926.459, 7, 99, 0, 'Hall of Mysteries'),
	(1082, -4647.83, -1124, 7, 99, 0, 'Ironforge Rogue Trainer'),
	(1084, -4605.03, -1110.46, 7, 99, 0, 'Ironforge Warlock Trainer'),
	(1085, -5023.08, -1253.68, 7, 99, 0, 'Hall of Arms'),
	(1086, -4722.59, -1151.39, 7, 99, 0, 'Ironforge Shaman Trainer'),
	(1087, -4858.5, -1241.84, 7, 99, 0, 'Berryfizz\'s Potions and Mixed Drinks'),
	(1088, -4796.98, -1110.17, 7, 99, 0, 'The Great Forge'),
	(1089, -4835.28, -1294.7, 7, 99, 0, 'Deeprun Tram'),
	(1090, -4803.72, -1196.53, 7, 99, 0, 'Thistlefuzz Arcanery'),
	(1092, -4799.56, -1250.24, 7, 99, 0, 'Springspindle\'s Gadgets'),
	(1093, -4881.6, -1153.13, 7, 99, 0, 'Ironforge Physician'),
	(1094, -4597.91, -1091.93, 7, 99, 0, 'Traveling Fisherman'),
	(1095, -4881.6, -1153.13, 7, 99, 0, 'Ironforge Physician'),
	(1097, -4801.79, -1189.09, 7, 99, 0, 'Ironforge Inscription'),
	(1098, -4745.01, -1027.58, 7, 99, 0, 'Finespindle\'s Leather Goods'),
	(1099, -4705.06, -1116.43, 7, 99, 0, 'Deepmountain Mining Guild'),
	(1100, -4745.01, -1027.58, 7, 99, 0, 'Finespindle\'s Leather Goods'),
	(1101, -4719.61, -1056.97, 7, 99, 0, 'Stonebrow\'s Clothier'),
	(1102, -5584.11, -510.862, 7, 99, 0, 'Thunderbrew Distillery'),
	(1106, -5606.17, -513.008, 7, 99, 0, 'Shelby Stoneflint'),
	(1107, -5618.73, -453.72, 7, 99, 0, 'Grif Wildheart'),
	(1109, -5584.69, -542.492, 7, 99, 0, 'Azar Stronghammer'),
	(1110, -5587.37, -539.037, 7, 99, 0, 'Magis Sparkmantle'),
	(1111, -5589.19, -530.288, 7, 99, 0, 'Maxan Anvol'),
	(1112, -5604.48, -540.089, 7, 99, 0, 'Hogral Bakkan'),
	(1113, -5639.5, -528.501, 7, 99, 0, 'Gimrizz Shadowcog'),
	(1114, -5605.01, -530.145, 7, 99, 0, 'Granis Swiftaxe'),
	(1115, -5582.17, -430.441, 7, 99, 0, 'Tognus Flintfire'),
	(1116, -5594.46, -544.573, 7, 99, 0, 'Gremlock Pilsnor'),
	(1118, -5604.89, -521.037, 7, 99, 0, 'Thamner Pol'),
	(1119, -5198.56, 53.3649, 7, 99, 0, 'Paxton Ganter'),
	(1120, -4801.79, -1189.09, 7, 99, 0, 'Ironforge Inscription'),
	(1122, -5529.12, -660.912, 7, 99, 0, 'Yarr Hammerstone'),
	(1123, 9862.37, 2339.19, 7, 99, 0, 'Darnassus Auction House'),
	(1124, 9938.46, 2512.35, 7, 99, 0, 'Darnassus Bank'),
	(1125, 9945.65, 2618.95, 7, 99, 0, 'Rut\'theran Village'),
	(1127, 10076.4, 2199.59, 7, 99, 0, 'Darnassus Guild Master'),
	(1128, 10133.3, 2222.52, 7, 99, 0, 'Darnassus Inn'),
	(1129, 9942.18, 2495.49, 7, 99, 0, 'Darnassus Mailbox'),
	(1130, 10167.2, 2522.67, 7, 99, 0, 'Alassin'),
	(1131, 9907.11, 2329.71, 7, 99, 0, 'Ilyenia Moonfire'),
	(1132, 9982.61, 2319.79, 7, 99, 0, 'Battlemasters Darnassus'),
	(1133, 10186, 2570.47, 7, 99, 0, 'Darnassus Druid Trainer'),
	(1134, 10177.3, 2511.1, 7, 99, 0, 'Darnassus Hunter Trainer'),
	(1135, 9659.13, 2524.89, 7, 99, 0, 'Temple of the Moon'),
	(1136, 10122, 2599.13, 7, 99, 0, 'Darnassus Rogue Trainer'),
	(1137, 9951.91, 2280.39, 7, 99, 0, 'Warrior\'s Terrace'),
	(1138, 10075.9, 2356.76, 7, 99, 0, 'Darnassus Alchemy Trainer'),
	(1139, 10088.6, 2419.22, 7, 99, 0, 'Darnassus Cooking Trainer'),
	(1140, 10146.1, 2313.43, 7, 99, 0, 'Darnassus Enchanting Trainer'),
	(1141, 10150.1, 2390.44, 7, 99, 0, 'Darnassus First Aid Trainer'),
	(1142, 9836.21, 2432.18, 7, 99, 0, 'Darnassus Fishing Trainer'),
	(1143, 9757.18, 2430.17, 7, 99, 0, 'Darnassus Herbalism Trainer'),
	(1144, 10131.8, 2323.74, 7, 99, 0, 'Darnassus Inscription'),
	(1145, 10086.6, 2255.77, 7, 99, 0, 'Darnassus Leatherworking Trainer'),
	(1146, 10081.4, 2257.19, 7, 99, 0, 'Darnassus Skinning Trainer'),
	(1147, 10079.7, 2268.2, 7, 99, 0, 'Darnassus Tailor'),
	(1148, 9821.49, 960.138, 7, 99, 0, 'Dolanaar Inn'),
	(1149, 9808.37, 931.106, 7, 99, 0, 'Seriadne'),
	(1150, 9741.58, 963.705, 7, 99, 0, 'Kal'),
	(1151, 9815.12, 926.283, 7, 99, 0, 'Dazalar'),
	(1152, 9906.16, 986.636, 7, 99, 0, 'Laurna Morninglight'),
	(1153, 9789.02, 942.865, 7, 99, 0, 'Jannok Breezesong'),
	(1154, 9821.97, 950.616, 7, 99, 0, 'Kyra Windblade'),
	(1155, 9767.6, 878.817, 7, 99, 0, 'Cyndra Kindwhisper'),
	(1157, 10677.6, 1946.56, 7, 99, 0, 'Alanna Raveneye'),
	(1158, 9751.19, 906.132, 7, 99, 0, 'Zarrin'),
	(1159, 9903.12, 999.095, 7, 99, 0, 'Byancie'),
	(1161, 9773.78, 875.884, 7, 99, 0, 'Malorne Bladeleaf'),
	(1162, 10131.8, 2323.74, 7, 99, 0, 'Darnassus Inscription'),
	(1163, 10152.6, 1681.47, 7, 99, 0, 'Nadyia Maneweaver'),
	(1164, 10135.6, 1673.18, 7, 99, 0, 'Radnaal Maneweaver'),
	(1165, 338.709, -4688.87, 7, 99, 0, 'Razor Hill Inn'),
	(1166, 330.313, -4710.67, 7, 99, 0, 'Shoja\'my'),
	(1167, 276.067, -4706.73, 7, 99, 0, 'Thotar'),
	(1168, -839.33, -4935.61, 7, 99, 0, 'Un\'Thuwa'),
	(1169, 296.225, -4828.11, 7, 99, 0, 'Tai\'jin'),
	(1171, 265.765, -4709.01, 7, 99, 0, 'Kaplak'),
	(1172, 307.797, -4836.97, 7, 99, 0, 'Swart'),
	(1173, 355.88, -4836.46, 7, 99, 0, 'Dhugru Gorelust'),
	(1174, 312.308, -4824.66, 7, 99, 0, 'Tarshaw Jaggedscar'),
	(1175, -800.253, -4894.34, 7, 99, 0, 'Miao\'zan'),
	(1176, 373.248, -4716.45, 7, 99, 0, 'Dwukk'),
	(1177, 368.96, -4723.96, 7, 99, 0, 'Mukdrak'),
	(1178, 327.175, -4825.62, 7, 99, 0, 'Rawrk'),
	(1179, -1065.49, -4777.43, 7, 99, 0, 'Lau\'Tiki'),
	(1182, 1842.32, -4477.72, 7, 99, 0, 'Orgrimmar Inscription'),
	(1184, 366.941, -4705.09, 7, 99, 0, 'Krunn'),
	(1185, -836.254, -4896.9, 7, 99, 0, 'Mishiki'),
	(1186, 1631.51, -4375.33, 7, 99, 0, 'Bank of Orgrimmar'),
	(1188, 1576.93, -4294.75, 7, 99, 0, 'Horde Embassy'),
	(1189, 1676.61, -4332.72, 7, 99, 0, 'The Sky Tower'),
	(1190, 1644.51, -4447.28, 7, 99, 0, 'Orgrimmar Inn'),
	(1192, 1622.53, -4388.8, 7, 99, 0, 'Orgrimmar Mailbox'),
	(1193, 1679.22, -4450.11, 7, 99, 0, 'Orgrimmar Auction House'),
	(1195, 1172.65, -4169.5, 7, 99, 0, 'Orgrimmar Western Zeppelin Tower'),
	(1196, 2092.56, -4823.95, 7, 99, 0, 'Sayoc & Hanashi'),
	(1199, 2133.12, -4663.93, 7, 99, 0, 'Xon\'cha'),
	(1201, 1633.56, -4249.37, 7, 99, 0, 'Hall of Legends'),
	(1202, 1989.66, -4796.6, 7, 99, 0, 'Battlemasters Orgrimmar'),
	(1203, 1764.9, -4343.83, 7, 99, 0, 'Orgrimmar Barber'),
	(1204, 2114.84, -4625.32, 7, 99, 0, 'Orgrimmar Hunter\'s Hall'),
	(1205, 1842.32, -4477.72, 7, 99, 0, 'Orgrimmar Inscription'),
	(1207, 1451.26, -4223.33, 7, 99, 0, 'Darkbriar Lodge'),
	(1208, 1955.17, -4475.8, 7, 99, 0, 'Yelmak\'s Alchemy and Potions'),
	(1209, 1442.22, -4183.24, 7, 99, 0, 'Spirit Lodge'),
	(1210, 1925.35, -4181.89, 7, 99, 0, 'Thrall\'s Fortress'),
	(1211, 1773.39, -4278.97, 7, 99, 0, 'Shadowswift Brotherhood'),
	(1212, 1849.58, -4359.69, 7, 99, 0, 'Darkfire Enclave'),
	(1213, 1983.92, -4794.21, 7, 99, 0, 'Hall of the Brave'),
	(1214, 1925.35, -4181.89, 7, 99, 0, 'Thrall\'s Fortress'),
	(1215, 2054.34, -4831.85, 7, 99, 0, 'The Burning Anvil'),
	(1216, 1780.97, -4481.31, 7, 99, 0, 'Borstan\'s Firepit'),
	(1220, 1917.5, -4434.95, 7, 99, 0, 'Godan\'s Runeworks'),
	(1222, 2038.46, -4744.76, 7, 99, 0, 'Nogg\'s Machine Shop'),
	(1223, 1485.22, -4160.91, 7, 99, 0, 'Survival of the Fittest'),
	(1224, 1994.15, -4655.7, 7, 99, 0, 'Lumak\'s Fishing'),
	(1225, 1898.62, -4454.94, 7, 99, 0, 'Jandi\'s Arboretum'),
	(1226, 1842.32, -4477.72, 7, 99, 0, 'Orgrimmar Inscription'),
	(1227, 1852.83, -4562.32, 7, 99, 0, 'Kodohide Leatherworkers'),
	(1228, 2029.79, -4704.08, 7, 99, 0, 'Red Canyon Mining'),
	(1229, 1852.83, -4562.32, 7, 99, 0, 'Kodohide Leatherworkers'),
	(1230, 1802.66, -4560.66, 7, 99, 0, 'Magar\'s Cloth Goods'),
	(1231, 1337.37, -4632.7, 7, 99, 0, 'Orgrimmar Eastern Zeppelin Tower'),
	(1232, 1595.64, 232.456, 7, 99, 0, 'Undercity Bank'),
	(1233, 1565.9, 271.435, 7, 99, 0, 'Undercity Bat Handler'),
	(1234, 1594.17, 205.572, 7, 99, 0, 'Undercity Guild Master'),
	(1235, 1639.43, 220.998, 7, 99, 0, 'Undercity Inn'),
	(1236, 1632.69, 219.403, 7, 99, 0, 'Undercity Mailbox'),
	(1237, 1650.31, 240.191, 7, 99, 0, 'Undercity Auction House'),
	(1238, 2059.04, 274.869, 7, 99, 0, 'Undercity Zeppelin'),
	(1239, 1670.31, 324.666, 7, 99, 0, 'Archibald'),
	(1240, 1634.18, 226.768, 7, 99, 0, 'Anya Maulray'),
	(1241, 1299.13, 347.983, 7, 99, 0, 'Battlemasters Undercity'),
	(1242, 1576.99, 195.566, 7, 99, 0, 'Undercity Barber'),
	(1245, 1696, 285.042, 7, 99, 0, 'Undercity Blacksmithing Trainer'),
	(1246, 1419.83, 417.197, 7, 99, 0, 'The Apothecarium'),
	(1247, 1596.35, 274.684, 7, 99, 0, 'Undercity Cooking Trainer'),
	(1248, 1488.54, 280.194, 7, 99, 0, 'Undercity Enchanting Trainer'),
	(1249, 1408.59, 143.431, 7, 99, 0, 'Undercity Engineering Trainer'),
	(1251, 1519.65, 167.199, 7, 99, 0, 'Undercity First Aid Trainer'),
	(1252, 1679.9, 89.0227, 7, 99, 0, 'Undercity Fishing Trainer'),
	(1253, 1558.09, 349.37, 7, 99, 0, 'Undercity Herbalism Trainer'),
	(1256, 1502.57, 285.859, 7, 99, 0, 'Undercity Inscription'),
	(1257, 1498.76, 196.433, 7, 99, 0, 'Undercity Leatherworking Trainer'),
	(1258, 1642.88, 335.588, 7, 99, 0, 'Undercity Mining Trainer'),
	(1259, 1498.61, 196.466, 7, 99, 0, 'Undercity Skinning Trainer'),
	(1260, 1499.75, 53.1442, 7, 103, 0, 'Undercity Locksmith'),
	(1261, 1689.55, 193.023, 7, 99, 0, 'Undercity Tailoring Trainer'),
	(1262, 1781.09, 53.0096, 7, 99, 0, 'Undercity Mage Trainers'),
	(1263, 1299.26, 316.787, 7, 99, 0, 'Champion Cyssa Dawnrose'),
	(1264, 1758.34, 401.507, 7, 99, 0, 'Undercity Priest Trainers'),
	(1265, 1418.56, 65.0243, 7, 99, 0, 'Undercity Rogue Trainers'),
	(1266, 1780.92, 53.1697, 7, 99, 0, 'Undercity Warlock Trainers'),
	(1267, 1775.6, 418.193, 7, 99, 0, 'Undercity Warrior Trainers'),
	(1268, 2266.98, 242.754, 7, 99, 0, 'Gallows\' End Tavern'),
	(1270, 2268.67, 318.876, 7, 99, 0, 'Morganus'),
	(1271, 2259.58, 235.865, 7, 99, 0, 'Cain Firesong'),
	(1272, 2264.43, 248.158, 7, 99, 0, 'Dark Cleric Beryl'),
	(1274, 2267.61, 243.924, 7, 99, 0, 'Marion Call'),
	(1275, 2257.46, 247.402, 7, 99, 0, 'Rupert Boch'),
	(1276, 2257.99, 240.487, 7, 99, 0, 'Austil de Mon'),
	(1277, 2264.81, 344.257, 7, 99, 0, 'Carolai Anise'),
	(1278, 2280.69, 244.714, 7, 99, 0, 'Vance Undergloom'),
	(1279, 2247.01, 242.789, 7, 99, 0, 'Nurse Neela'),
	(1280, 2299.92, 1.16547, 7, 99, 0, 'Clyde Kellen'),
	(1281, 2270.57, 329.97, 7, 99, 0, 'Faruza'),
	(1282, 1502.57, 285.859, 7, 99, 0, 'Undercity Inscription'),
	(1283, 2027.81, 80.1105, 7, 99, 0, 'Shelene Rhobart'),
	(1284, 2031.33, 71.8599, 7, 99, 0, 'Rand Rhobart'),
	(1285, 2161.7, 658.172, 7, 99, 0, 'Bowen Brisboise'),
	(1286, -2361.39, -349.193, 7, 99, 0, 'Bloodhoof Village Inn'),
	(1287, -2338.86, -357.564, 7, 99, 0, 'Seikwa'),
	(1288, -2312.16, -443.693, 7, 99, 0, 'Gennia Runetotem'),
	(1289, -2178.15, -406.144, 7, 99, 0, 'Yaw Sharpmane'),
	(1292, -2345.44, -494.114, 7, 99, 0, 'Krang Stonehoof'),
	(1293, -2301.5, -439.871, 7, 99, 0, 'Narm Skychaser'),
	(1296, -2263.34, -287.91, 7, 99, 0, 'Pyall Silentstride'),
	(1297, -2353.52, -355.821, 7, 99, 0, 'Vira Younghoof'),
	(1298, -2349.22, -241.376, 7, 99, 0, 'Uthan Stillwater'),
	(1299, -999.381, 213.664, 7, 99, 0, 'Thunder Bluff Inscription'),
	(1301, -2257.12, -288.633, 7, 99, 0, 'Chaw Stronghide'),
	(1302, -2252.95, -291.324, 7, 99, 0, 'Yonn Deepcut'),
	(1303, -1257.8, 24.1431, 7, 99, 0, 'Thunder Bluff Bank'),
	(1304, -1196.44, 28.2654, 7, 99, 0, 'Wind Rider Roost'),
	(1305, -1296.5, 127.579, 7, 99, 0, 'Thunder Bluff Civic Information'),
	(1306, -1296.07, 39.7075, 7, 99, 0, 'Thunder Bluff Inn'),
	(1307, -1263.6, 44.3601, 7, 99, 0, 'Thunder Bluff Mailbox'),
	(1308, -1198.32, 102.054, 7, 99, 0, 'Thunder Bluff Auction house'),
	(1309, -1282.31, 89.563, 7, 99, 0, 'Ansekhwa'),
	(1310, -1270.2, 48.8459, 7, 99, 0, 'Bulrug'),
	(1311, -1385.74, -85.4147, 7, 99, 0, 'Battlemasters Thunder Bluff'),
	(1312, -1027.62, 322.681, 7, 99, 0, 'Thunder Bluff Zeppelin'),
	(1314, -1054.48, -285.076, 7, 99, 0, 'Hall of Elders'),
	(1315, -1416.33, -114.285, 7, 99, 0, 'Hunter\'s Hall'),
	(1317, -1061.21, 195.505, 7, 99, 0, 'Pools of Vision'),
	(1318, -1061.21, 195.505, 7, 99, 0, 'Pools of Vision'),
	(1319, -989.541, 278.253, 7, 99, 0, 'Hall of Spirits'),
	(1320, -1416.33, -114.285, 7, 99, 0, 'Hunter\'s Hall'),
	(1323, -1239.75, 104.888, 7, 99, 0, 'Karn\'s Smithy'),
	(1324, -1085.57, 27.2931, 7, 99, 0, 'Bena\'s Alchemy'),
	(1325, -1214.5, -21.2327, 7, 99, 0, 'Aska\'s Kitchen'),
	(1326, -1112.65, 48.2609, 7, 99, 0, 'Dawnstrider Enchanters'),
	(1327, -996.586, 200.504, 7, 99, 0, 'Spiritual Healing'),
	(1328, -1169.36, -68.878, 7, 99, 0, 'Mountaintop Bait & Tackle'),
	(1329, -1137.71, -1.51698, 7, 99, 0, 'Holistic Herbalism'),
	(1330, -999.381, 213.664, 7, 99, 0, 'Thunder Bluff Inscription'),
	(1331, -1156.23, 66.8664, 7, 99, 0, 'Thunder Bluff Armorers'),
	(1332, -1249.17, 155.028, 7, 99, 0, 'Stonehoof Geology'),
	(1333, -1148.57, 51.1842, 7, 99, 0, 'Mooranta'),
	(1334, -1156.23, 66.8664, 7, 99, 0, 'Thunder Bluff Armorers'),
	(1000, -9459.35, 42.0805, 7, 99, 0, 'Lion\'s Pride Inn'),
	(1001, -9466.62, 45.8709, 7, 99, 0, 'Erma'),
	(1002, -9471.12, 33.4441, 7, 99, 0, 'Zaldimar Wefhellt'),
	(1003, -9469, 108.053, 7, 99, 0, 'Brother Wilhelm'),
	(1004, -9461.07, 32.996, 7, 99, 0, 'Priestess Josetta'),
	(1005, -9465.14, 13.2936, 7, 99, 0, 'Keryn Sylvius'),
	(1006, -9473.22, -4.08464, 7, 99, 0, 'Maximillian Crowe'),
	(1007, -9461.82, 109.505, 7, 99, 0, 'Lyria Du Lac'),
	(1008, -9057.04, 153.637, 7, 99, 0, 'Alchemist Mallory'),
	(1009, -9456.59, 87.9022, 7, 99, 0, 'Smith Argus'),
	(1010, -9467.54, -3.16732, 7, 99, 0, 'Tomas'),
	(1011, -9456.82, 30.4947, 7, 99, 0, 'Michelle Belle'),
	(1012, -9386.55, -118.731, 7, 99, 0, 'Lee Brown'),
	(1335, -4127.58, -12467.4, 7, 583, 0, 'Azure Watch: Innkeeper'),
	(1337, -4146.42, -12492.7, 7, 583, 0, 'Azure Watch: Stable Master'),
	(1338, -4203.5, -12526.5, 7, 583, 0, 'Azure Watch: Hunter Trainer'),
	(1340, -4149.82, -12530, 7, 583, 0, 'Azure Watch: Mage Trainer'),
	(1341, -4138.99, -12468.5, 7, 583, 0, 'Azure Watch: Paladin Trainer'),
	(1342, -4131.64, -12478.7, 7, 583, 0, 'Azure Watch: Priest Trainer'),
	(1343, -4162.3, -12456, 7, 583, 0, 'Azure Watch: Shaman Trainer'),
	(1344, -4165.05, -12536.4, 7, 583, 0, 'Azure Watch: Warrior Trainer'),
	(1345, -4191.44, -12469.6, 7, 583, 0, 'Azure Watch: Alchemy Trainer'),
	(1346, -4726.42, -12386.9, 7, 583, 0, 'Odesyus Landing: Blacksmith'),
	(1348, -4708.6, -12400.1, 7, 583, 0, 'Odesyus Landing: Cook'),
	(1351, -4199.09, -12469.9, 7, 583, 0, 'Azure Watch: First Aid Trainer'),
	(1352, -4266.37, -12985.4, 7, 583, 0, 'Ammen Vale: Fisherman'),
	(1353, -4189.08, -12459.5, 7, 583, 0, 'Azure Watch: Herbalism'),
	(1354, -3887.39, -11485, 7, 99, 0, 'Exodar Inscription Trainer'),
	(1356, -3442.57, -12322.4, 7, 583, 0, 'Stillpine Hold: Leatherworker'),
	(1357, -4179.96, -12493.1, 7, 583, 0, 'Azure Watch: Mining Trainer'),
	(1358, -3431.29, -12316.5, 7, 583, 0, 'Stillpine Hold: Skinner'),
	(1359, -4711.48, -12386.7, 7, 583, 0, 'Odesyus Landing: Tailor'),
	(1400, 9379.46, -7166, 7, 99, 0, 'Silvermoon: Wind Master'),
	(1401, 9476.83, -6859.16, 7, 583, 0, 'Falconwing Square: Innkeeper'),
	(1402, 9487.66, -6830.49, 7, 583, 0, 'Falconwing Square: Stable Master'),
	(1403, 9529.19, -6864.51, 7, 583, 0, 'Falconwing Square: Hunter Trainer'),
	(1404, 9462.34, -6853.61, 7, 583, 0, 'Falconwing Square: Mage Trainer'),
	(1414, 9479.51, -6880.07, 7, 583, 0, 'Falconwing Square: First Aid'),
	(1405, 9516, -6871.03, 1, 0, 0, 'Falconwing Square: Paladin Trainer'),
	(1406, 9466.73, -6844.34, 7, 583, 0, 'Falconwing Square: Priest Trainer'),
	(1407, 9534.22, -6876.03, 7, 583, 0, 'Falconwing Square: Rogue Trainer'),
	(1408, 9467.62, -6862.82, 7, 583, 0, 'Falconwing Square: Warlock Trainer'),
	(1409, 8661.25, -6367.09, 7, 583, 0, 'Saltheril\'s Haven: Alchemist'),
	(1410, 8986.45, -7418.87, 7, 583, 0, 'Farstrider Retreat: Blacksmith'),
	(1411, 9494.83, -6879.43, 7, 583, 0, 'Falconwing Square: Cook'),
	(1412, 8657.49, -6366.78, 7, 583, 0, 'Saltheril\'s Haven: Enchanter'),
	(1415, 8678.66, -6329.33, 7, 583, 0, 'Saltheril\'s Haven: Herbalist'),
	(1416, 9956.29, -7238.35, 7, 99, 0, 'Silvermoon: Inscription Trainer'),
	(1417, 9484.8, -6876.82, 7, 583, 0, 'Falconwing Square: Jewelcrafter'),
	(1418, 9363.7, -7130.73, 7, 583, 0, 'Eversong Woods: Leatherworker'),
	(1420, 8680.7, -6327.05, 7, 583, 0, 'Saltheril\'s Haven: Tailor'),
	(1421, 9362.82, -7134.61, 7, 583, 0, 'Eversong Woods: Skinning Trainer'),
	(1422, 9648.04, -7135.57, 7, 99, 0, 'Silvermoon: Western Auction House'),
	(1423, 9683.17, -7518.94, 7, 99, 0, 'Silvermoon: Royal Exchange Auction House'),
	(1424, 9525.04, -7215.4, 7, 99, 0, 'Silvermoon: Bank'),
	(1425, 9792.68, -7488.06, 7, 99, 0, 'Silvermoon: Bank'),
	(1426, 9379.46, -7166, 7, 99, 0, 'Silvermoon: Wind Master'),
	(1427, 9484.73, -7345.1, 7, 99, 0, 'Silvermoon: Guild House'),
	(1429, 9673.15, -7370.3, 7, 99, 0, 'Silvermoon: City Inn'),
	(1430, 9673.15, -7370.3, 7, 99, 0, 'Silvermoon: City Inn'),
	(1431, 9561.12, -7216.6, 7, 99, 0, 'Silvermoon: Wayfarer\'s Rest tavern'),
	(1432, 9743.59, -7466.39, 7, 99, 0, 'Silvermoon: Mailbox'),
	(1434, 9903.8, -7404.16, 7, 99, 0, 'Silvermoon: Stable Master'),
	(1435, 9839.98, -7505.83, 7, 99, 0, 'Silvermoon: Weapon Master'),
	(1436, 9850.67, -7565.29, 7, 99, 0, 'Silvermoon: Battlemaster'),
	(1437, 9700.38, -7265.52, 7, 99, 0, 'Silvermoon: Druid Trainer'),
	(1438, 9934.22, -7411.71, 7, 99, 0, 'Silvermoon: Hunter Trainer'),
	(1439, 9998.34, -7106.58, 7, 99, 0, 'Silvermoon: Mage Trainer'),
	(1440, 9850.89, -7512.63, 7, 99, 0, 'Silvermoon: Paladin Trainer'),
	(1441, 9936.98, -7058.41, 7, 99, 0, 'Silvermoon: Priest Trainer'),
	(1442, 9740.59, -7370.85, 7, 99, 0, 'Silvermoon: Rogue Trainer'),
	(1443, 9801.76, -7322.78, 7, 99, 0, 'Silvermoon: Warlock Trainer'),
	(1444, 9746.89, -7073.7, 7, 99, 0, 'Silvermoon: Mana Spinning Machine Tools'),
	(1445, 10007.6, -7213.23, 7, 99, 0, 'Silvermoon: Alchemy Trainer'),
	(1446, 9841.22, -7367.58, 7, 99, 0, 'Silvermoon: Blacksmithing Trainer'),
	(1447, 9577.93, -7240.72, 7, 99, 0, 'Silvermoon: Cooking Trainer'),
	(1448, 9956.17, -7244.75, 7, 99, 0, 'Silvermoon: Enchanting Trainer'),
	(1449, 9826.92, -7323.3, 7, 99, 0, 'Silvermoon: Engineering Trainer'),
	(1450, 9592.15, -7343.07, 7, 99, 0, 'Silvermoon: First Aid Trainer'),
	(1451, 9605, -7328.44, 7, 99, 0, 'Silvermoon: Fishing Trainer'),
	(1453, 10000.4, -7209.03, 7, 99, 0, 'Silvermoon: Herbalism Trainer'),
	(1454, 9956.29, -7238.35, 7, 99, 0, 'Silvermoon: Inscription Trainer'),
	(1456, 9489.78, -7430.7, 7, 99, 0, 'Silvermoon: Leatherworking Trainer'),
	(1457, 9553.46, -7501.89, 7, 99, 0, 'Silvermoon: Jewelcrafting Trainer'),
	(1458, 9810, -7358.41, 7, 99, 0, 'Silvermoon: Mining Trainer'),
	(1459, 9512.51, -7425.99, 7, 99, 0, 'Silvermoon: Skinning Trainer'),
	(1460, 9732.46, -7086.61, 7, 99, 0, 'Silvermoon: Tailor'),
	(1500, -1758.28, 5162.92, 7, 99, 0, 'Shattrath: Grocery Store'),
	(1501, -1725.93, 5498.33, 7, 99, 0, 'Shattrath: Aldor Bank'),
	(1502, -2002.22, 5360.94, 7, 99, 0, 'Shattrath: Scryers Bank'),
	(1503, -1900.6, 5769.12, 7, 99, 0, 'Shattrath: Aldor Inn'),
	(1504, -2183.82, 5402.48, 7, 99, 0, 'Shattrath: Scryers Inn'),
	(1505, -1833.51, 5300.31, 7, 99, 0, 'Shattrath: Flight Master'),
	(1506, -1725.93, 5498.33, 7, 99, 0, 'Shattrath: Aldor Bank'),
	(1507, -1900.6, 5769.12, 7, 99, 0, 'Shattrath: Aldor Inn'),
	(1508, -2002.22, 5360.94, 7, 99, 0, 'Shattrath: Scryers Bank'),
	(1509, -2183.82, 5402.48, 7, 99, 0, 'Shattrath: Scryers Inn'),
	(1511, -1890.23, 5759.71, 7, 99, 0, 'Shattrath: Aldor Stable'),
	(1512, -2170.07, 5403.83, 7, 99, 0, 'Shattrath: Scryers Stable'),
	(1513, -1770.71, 5259.79, 7, 99, 0, 'Shattrath: Alliance Battlemasters'),
	(1515, -1964.78, 5264.26, 7, 99, 0, 'Shattrath: Horde Battlemasters'),
	(1516, -1961.79, 5175.17, 7, 99, 0, 'Shattrath: Arena Battlemasters'),
	(1517, -1643.77, 5669.46, 7, 99, 0, 'Shattrath: Aldor Gem Merchant'),
	(1518, -2194.36, 5422.41, 7, 99, 0, 'Shattrath: Scryers Gem Merchant'),
	(1520, -1657.63, 5537.62, 7, 99, 0, 'Shattrath: Alchemist'),
	(1521, -1847.52, 5221.92, 7, 99, 0, 'Shattrath: Weaponsmith and Armorsmith'),
	(1523, -2067.64, 5316.79, 7, 99, 0, 'Shattrath: Cook'),
	(1524, -2254.67, 5560.77, 7, 99, 0, 'Shattrath: Enchanters'),
	(1527, -1590.89, 5263.1, 7, 99, 0, 'Shattrath: First Aid'),
	(1528, -1653.91, 5665.03, 7, 99, 0, 'Shattrath: Jewelcrafter'),
	(1529, -2061.01, 5256.46, 7, 99, 0, 'Shattrath: Leatherworker'),
	(1530, -2047.96, 5299.78, 7, 99, 0, 'Shattrath: Skinning Trainer'),
	(1532, -2074.01, 5265.15, 7, 99, 0, 'Shattrath: Mana Spinning Machine Tools'),
	(1533, -1644.85, 5566.95, 7, 99, 0, 'Shattrath: Alchemy Laboratory'),
	(1534, 5802.76, 552.28, 7, 99, 0, 'Dalaran: Eastern Sewer Entrance'),
	(1535, 5816.39, 760.085, 7, 99, 0, 'Dalaran: Western Sewer Entrance'),
	(1536, 5879.9, 652.782, 7, 99, 0, 'Dalaran: Well'),
	(1537, 5758.11, 715.641, 7, 99, 0, 'Dalaran: Silver Enclave'),
	(1538, 5857.26, 595.421, 7, 99, 0, 'Dalaran: Sunreaver\'s Sanctuary'),
	(1544, 5889.37, 622.227, 7, 99, 0, 'Dalaran: Barber'),
	(1548, 5857.26, 595.421, 7, 99, 0, 'Dalaran: Sunreaver\'s Sanctuary'),
	(1549, 5813.97, 449.107, 7, 99, 0, 'Dalaran: Flight Master'),
	(1551, 5756.87, 620.785, 7, 99, 0, 'Dalaran: Visitor Center'),
	(1561, 5731.46, 678.199, 7, 99, 0, 'Dalaran: Alliance Inn'),
	(1562, 5848.26, 636.675, 7, 99, 0, 'Dalaran: Inn'),
	(1564, 5934.05, 575.626, 7, 99, 0, 'Dalaran: Locksmith'),
	(1566, 5885.62, 521.776, 7, 99, 0, 'Dalaran: Horde Inn'),
	(1571, 5848.26, 636.675, 7, 99, 0, 'Dalaran: Inn'),
	(1573, 5966.82, 613.917, 7, 99, 0, 'Dalaran: Northern Bank'),
	(1574, 5640.99, 687.532, 7, 99, 0, 'Dalaran: Southern Bank'),
	(1578, 5831.51, 508.617, 7, 99, 0, 'Dalaran: Krasus\' Landing'),
	(1579, 5758.11, 715.641, 7, 99, 0, 'Dalaran: Silver Enclave'),
	(1580, 5857.26, 595.421, 7, 99, 0, 'Dalaran: Sunreaver\'s Sanctuary'),
	(1581, 5797.48, 794.906, 7, 99, 0, 'Dalaran: Violet Citadel'),
	(1582, 5691.49, 500.56, 7, 99, 0, 'Dalaran: Violet Hold'),
	(1583, 5802.76, 552.28, 7, 99, 0, 'Dalaran: Eastern Sewer Entrance'),
	(1584, 5816.39, 760.085, 7, 99, 0, 'Dalaran: Western Sewer Entrance'),
	(1585, 5879.9, 652.782, 7, 99, 0, 'Dalaran: Well'),
	(1587, 5899.21, 728.851, 7, 99, 0, 'Dalaran: Trade District'),
	(1588, 5831.51, 508.617, 7, 99, 0, 'Dalaran: Krasus\' Landing'),
	(1589, 5952.15, 674.611, 7, 99, 0, 'Dalaran: Antonidas Memorial'),
	(1590, 5804.6, 639.554, 7, 99, 0, 'Dalaran: Runeweaver Square'),
	(1591, 5710.33, 645.397, 7, 99, 0, 'Dalaran: Eventide'),
	(1592, 5851.66, 766.287, 7, 99, 0, 'Dalaran: Cemetary'),
	(1593, 5859.73, 557.745, 7, 99, 0, 'Dalaran: Stable Master'),
	(1594, 5860.68, 702.517, 7, 99, 0, 'Dalaran: Inscription Trainer'),
	(1597, 5831.51, 508.617, 7, 99, 0, 'Dalaran: Krasus\' Landing'),
	(1598, 5808.53, 581.308, 7, 99, 0, 'Dalaran: Mage Trainer'),
	(1602, 5885.62, 521.776, 7, 99, 0, 'Dalaran: Horde Inn'),
	(1616, 5790.16, 689.124, 7, 99, 0, 'Dalaran: Cloth Armor & Clothing'),
	(1617, 5671.76, 629.458, 7, 99, 0, 'Dalaran: Mail & Leather Armor'),
	(1618, 5671.76, 629.458, 7, 99, 0, 'Dalaran: Mail & Leather Armor'),
	(1619, 5912.78, 665.419, 7, 99, 0, 'Dalaran: Plate & Shields'),
	(1620, 5912.78, 665.419, 7, 99, 0, 'Dalaran: Plate & Shields'),
	(1621, 5790.16, 689.124, 7, 99, 0, 'Dalaran: Cloth Armor & Clothing'),
	(1622, 5758.11, 715.641, 7, 99, 0, 'Dalaran: Silver Enclave'),
	(1623, 5857.26, 595.421, 7, 99, 0, 'Dalaran: Sunreaver\'s Sanctuary'),
	(1624, 5773.1, 576.271, 7, 99, 0, 'Dalaran: Flowers'),
	(1625, 5750.41, 695.409, 7, 99, 0, 'Dalaran: Fruit Vendor'),
	(1626, 5684.03, 617.319, 7, 99, 0, 'Dalaran: General & Trade Store'),
	(1627, 5873.86, 721.729, 7, 99, 0, 'Dalaran: Jewelcrafting Trainer'),
	(1628, 5847.11, 567.15, 7, 99, 0, 'Dalaran: Pet Store'),
	(1629, 5906.35, 628.194, 7, 99, 0, 'Dalaran: Pie, Pastry & Cake'),
	(1630, 5765.6, 734.329, 7, 99, 0, 'Dalaran: Reagents'),
	(1631, 5814.42, 690.78, 7, 99, 0, 'Dalaran: Toy Store'),
	(1633, 5890.97, 704.071, 7, 99, 0, 'Dalaran: Alchemy Trainer'),
	(1634, 5752.08, 645.427, 7, 99, 0, 'Dalaran: Trinkets'),
	(1635, 5727.33, 603.694, 7, 99, 0, 'Dalaran: Melee Weapons'),
	(1636, 5780.4, 558.349, 7, 99, 0, 'Dalaran: Ranged Weapons'),
	(1637, 5667.76, 645.391, 7, 99, 0, 'Dalaran: Staves & Wands'),
	(1638, 5884.7, 608.281, 7, 99, 0, 'Dalaran: Wine & Cheese'),
	(1640, 5904.31, 680.889, 7, 99, 0, 'Dalaran: Blacksmithing Trainer'),
	(1642, 5731.46, 678.199, 7, 99, 0, 'Dalaran: Alliance Inn'),
	(1644, 5837.26, 722.8, 7, 99, 0, 'Dalaran: Enchanting Trainer'),
	(1646, 5920.67, 728.168, 7, 99, 0, 'Dalaran: Engineering Trainer'),
	(1648, 5862.84, 743.351, 7, 99, 0, 'Dalaran: First Aid Trainer'),
	(1650, 5704.84, 613.969, 7, 99, 0, 'Dalaran: Fishing Fountain'),
	(1652, 5875.57, 691.28, 7, 99, 0, 'Dalaran: Herbalism Trainer'),
	(1654, 5860.68, 702.517, 7, 99, 0, 'Dalaran: Inscription Trainer'),
	(1658, 5873.86, 721.729, 7, 99, 0, 'Dalaran: Jewelcrafting Trainer'),
	(1660, 5903.03, 750.206, 7, 99, 0, 'Dalaran: Leatherworking Trainer'),
	(1662, 5919.47, 709.664, 7, 99, 0, 'Dalaran: Mining Trainer'),
	(1664, 5903.01, 750.314, 7, 99, 0, 'Dalaran: Skinning Trainer'),
	(1665, 5684.03, 617.319, 7, 99, 0, 'Dalaran: General & Trade Store'),
	(1666, 5882.51, 745.847, 7, 99, 0, 'Dalaran: Tailoring Trainer'),
	(1667, 5758.11, 715.641, 7, 99, 0, 'Dalaran: Silver Enclave'),
	(1668, -4020.99, -11733.5, 7, 99, 0, 'Exodar: Auction House'),
	(1669, -3918.91, -11550.1, 7, 99, 0, 'Exodar: Bank'),
	(1671, -4053.44, -11787.7, 7, 99, 0, 'Exodar: Hippogryph Master'),
	(1673, -4099.8, -11630, 7, 99, 0, 'Exodar: Guild Master'),
	(1675, -3913.49, -11607.6, 7, 99, 0, 'Exodar: Mailbox'),
	(1676, -3761.47, -11696.2, 7, 99, 0, 'Exodar: Inn'),
	(1677, -3792.05, -11703.7, 7, 99, 0, 'Exodar: Stable Master'),
	(1679, -4214.02, -11630, 7, 99, 0, 'Exodar: Weapon Master'),
	(1680, -4000.54, -11372.1, 7, 99, 0, 'Exodar: Battlemaster'),
	(1681, -3725.4, -11688.4, 7, 99, 0, 'Exodar: Arena Battlemaster'),
	(1682, -4272.53, -11495.5, 7, 99, 0, 'Exodar: Druid Trainer'),
	(1683, -4239.43, -11558.2, 7, 99, 0, 'Exodar: Hunter Trainer'),
	(1684, -4048.61, -11559.9, 7, 99, 0, 'Exodar: Mage Trainer'),
	(1685, -4178.41, -11477, 7, 99, 0, 'Exodar: Paladin Trainer'),
	(1686, -3975.49, -11486.1, 7, 99, 0, 'Exodar: Priest Trainer'),
	(1687, -3848.49, -11392.7, 7, 99, 0, 'Exodar: Shaman Trainer'),
	(1688, -4194.44, -11649.1, 7, 99, 0, 'Exodar: Warrior Trainer'),
	(1689, -4043.39, -11364.8, 7, 99, 0, 'Exodar: Alchemy Trainer'),
	(1690, -4241.27, -11713.5, 7, 99, 0, 'Exodar: Blacksmithing Trainer'),
	(1691, -3887.9, -11493.7, 7, 99, 0, 'Exodar: Enchanting Trainer'),
	(1693, -4259.47, -11643.8, 7, 99, 0, 'Exodar: Engineering Trainer'),
	(1695, -3766.02, -11477.7, 7, 99, 0, 'Exodar: First Aid Trainer'),
	(1697, -3726.26, -11387.1, 7, 99, 0, 'Exodar: Fishing Trainer'),
	(1698, -4050.22, -11360, 7, 99, 0, 'Exodar: Herbalist Trainer'),
	(1701, -3887.39, -11485, 7, 99, 0, 'Exodar: Inscription Trainer'),
	(1702, -3785.75, -11544, 7, 99, 0, 'Exodar: Jewelcrafting Trainer'),
	(1703, -4138.51, -11768.5, 7, 99, 0, 'Exodar: Leatherworking Trainer'),
	(1704, -4223.68, -11694.7, 7, 99, 0, 'Exodar: Mining Trainer'),
	(1705, -4137.33, -11761.8, 7, 99, 0, 'Exodar: Skinning Trainer'),
	(1706, -4092.56, -11743.8, 7, 99, 0, 'Exodar: Tailor Trainer'),
	(1707, -3798.62, -11654.5, 7, 99, 0, 'Exodar: Cooking Trainer'),
	(1708, 5777.99, 607.481, 7, 99, 0, 'Dalaran: Sewer Arena'),
	(1709, 5765.75, 731.147, 7, 99, 0, 'Dalaran: Sewer Bank'),
	(1710, 5761.09, 714.637, 7, 99, 0, 'Dalaran: Sewer Inn'),
	(1711, 5777.54, 743.632, 7, 99, 0, 'Dalaran: Sewer Tunnel'),
	(1712, 5924.84, 565.286, 7, 99, 0, 'Dalaran: Sewer Vendors'),
	(1713, 1174.56, -4292.92, 7, 75, 0, 'Goblin Brewfest Souvenirs'),
	(1714, 1282.99, -4410.59, 7, 75, 0, 'Goblin Brewfest Ram Racing'),
	(1715, 1473.56, -4211.43, 7, 75, 0, 'Brew of the Month Club, Orgrimmar'),
	(1716, -5176.78, -623.99, 7, 75, 0, 'Brewfest Souvenirs'),
	(1717, -5200.93, -484.682, 7, 75, 0, 'Brewfest Ram Racing'),
	(1718, -4847.83, -862.606, 7, 75, 0, 'Brew of the Month Club, Ironforge'),
	(1719, -1742.32, 5456.68, 7, 99, 0, 'Guns Darkmoon Faire');
/*!40000 ALTER TABLE `points_of_interest` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
