-- Spell disabled
-- Commit 70d09c64ce0d3263a7e4

DROP TABLE IF EXISTS `spell_disabled`;
CREATE TABLE `spell_disabled` (
    `entry` int(11) unsigned NOT NULL default 0 COMMENT 'spell entry',
    `ischeat_spell` tinyint(3) unsigned NOT NULL default 0 COMMENT 'mark spell as cheat',
    `active` tinyint(3) unsigned NOT NULL default 1 COMMENT 'enable check of this spell',
    PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Disabled Spell System';

-- 
-- Records
--

