-- -----------------
-- Vehicle Support -
-- -----------------

-- Vehicle Tables
-- Commit 3be940faa44326abc801

ALTER TABLE `creature_template`
    ADD COLUMN `spell5` mediumint(8) unsigned NOT NULL default '0' AFTER `spell4`,
    ADD COLUMN `spell6` mediumint(8) unsigned NOT NULL default '0' AFTER `spell5`,
    ADD COLUMN `spell7` mediumint(8) unsigned NOT NULL default '0' AFTER `spell6`,
    ADD COLUMN `spell8` mediumint(8) unsigned NOT NULL default '0' AFTER `spell7`,
    ADD COLUMN `PowerType` tinyint(3) unsigned NOT NULL default '0' AFTER `MaxHealth`;

-- DB DATA

UPDATE creature_template SET vehicle_id = 23 WHERE entry = 23693;
UPDATE creature_template SET vehicle_id = 108 WHERE entry = 24083;
UPDATE creature_template SET vehicle_id = 8  WHERE entry = 24418;
UPDATE creature_template SET vehicle_id = 16 WHERE entry = 24705;
UPDATE creature_template SET vehicle_id = 17 WHERE entry = 24750;
UPDATE creature_template SET vehicle_id = 26 WHERE entry = 25334;
UPDATE creature_template SET vehicle_id = 29 WHERE entry = 25596;
UPDATE creature_template SET vehicle_id = 72 WHERE entry = 25743;
UPDATE creature_template SET vehicle_id = 27 WHERE entry = 25762;
UPDATE creature_template SET vehicle_id = 30 WHERE entry = 25968;
UPDATE creature_template SET vehicle_id = 62 WHERE entry = 26472;
UPDATE creature_template SET vehicle_id = 36 WHERE entry = 26523;
UPDATE creature_template SET vehicle_id = 33 WHERE entry = 26525;
UPDATE creature_template SET vehicle_id = 34 WHERE entry = 26572;
UPDATE creature_template SET vehicle_id = 53 WHERE entry = 26590;
UPDATE creature_template SET vehicle_id = 37 WHERE entry = 26777;
UPDATE creature_template SET vehicle_id = 38 WHERE entry = 26778;
UPDATE creature_template SET vehicle_id = 40 WHERE entry = 26893;
UPDATE creature_template SET vehicle_id = 53 WHERE entry = 27131;
UPDATE creature_template SET vehicle_id = 43 WHERE entry = 27213;
UPDATE creature_template SET vehicle_id = 48 WHERE entry = 27241;
UPDATE creature_template SET vehicle_id = 44 WHERE entry = 27258;
UPDATE creature_template SET vehicle_id = 50 WHERE entry = 27261;
UPDATE creature_template SET vehicle_id = 46 WHERE entry = 27270;
UPDATE creature_template SET vehicle_id = 50 WHERE entry = 27292;
UPDATE creature_template SET vehicle_id = 49 WHERE entry = 27354;
UPDATE creature_template SET vehicle_id = 55 WHERE entry = 27496;
UPDATE creature_template SET vehicle_id = 56 WHERE entry = 27587;
UPDATE creature_template SET vehicle_id = 57 WHERE entry = 27593;
UPDATE creature_template SET vehicle_id = 59 WHERE entry = 27626;
UPDATE creature_template SET vehicle_id = 60 WHERE entry = 27629;
UPDATE creature_template SET vehicle_id = 61 WHERE entry = 27661;
UPDATE creature_template SET vehicle_id = 154 WHERE entry = 27671;
UPDATE creature_template SET vehicle_id = 68  WHERE entry = 27714;
UPDATE creature_template SET vehicle_id = 70  WHERE entry = 27755;
UPDATE creature_template SET vehicle_id = 256 WHERE entry = 27761;
UPDATE creature_template SET vehicle_id = 68  WHERE entry = 27839;
UPDATE creature_template SET vehicle_id = 79  WHERE entry = 27881;
UPDATE creature_template SET vehicle_id = 160 WHERE entry = 27894;
UPDATE creature_template SET vehicle_id = 89  WHERE entry = 27924;
UPDATE creature_template SET vehicle_id = 97  WHERE entry = 27992;
UPDATE creature_template SET vehicle_id = 97  WHERE entry = 27993;
UPDATE creature_template SET vehicle_id = 99  WHERE entry = 27996;
UPDATE creature_template SET vehicle_id = 105 WHERE entry = 28009;
UPDATE creature_template SET vehicle_id = 100 WHERE entry = 28018;
UPDATE creature_template SET vehicle_id = 102 WHERE entry = 28054;
UPDATE creature_template SET vehicle_id = 106 WHERE entry = 28094;
UPDATE creature_template SET vehicle_id = 110 WHERE entry = 28192;
UPDATE creature_template SET vehicle_id = 117 WHERE entry = 28312;
UPDATE creature_template SET vehicle_id = 116 WHERE entry = 28319;
UPDATE creature_template SET vehicle_id = 244 WHERE entry = 28366;
UPDATE creature_template SET vehicle_id = 200 WHERE entry = 28605;
UPDATE creature_template SET vehicle_id = 123 WHERE entry = 28606;
UPDATE creature_template SET vehicle_id = 200 WHERE entry = 28607;
UPDATE creature_template SET vehicle_id = 124 WHERE entry = 28614;
UPDATE creature_template SET vehicle_id = 156 WHERE entry = 28670;
UPDATE creature_template SET vehicle_id = 158 WHERE entry = 28781;
UPDATE creature_template SET vehicle_id = 145 WHERE entry = 28851;
UPDATE creature_template SET vehicle_id = 68  WHERE entry = 28887;
UPDATE creature_template SET vehicle_id = 153 WHERE entry = 29043;
UPDATE creature_template SET vehicle_id = 25  WHERE entry = 29144;
UPDATE creature_template SET vehicle_id = 166 WHERE entry = 29414;
UPDATE creature_template SET vehicle_id = 168 WHERE entry = 29433;
UPDATE creature_template SET vehicle_id = 190 WHERE entry = 29679;
UPDATE creature_template SET vehicle_id = 192 WHERE entry = 29691;
UPDATE creature_template SET vehicle_id = 193 WHERE entry = 29698;
UPDATE creature_template SET vehicle_id = 207 WHERE entry = 29753;
UPDATE creature_template SET vehicle_id = 202 WHERE entry = 29857;
UPDATE creature_template SET vehicle_id = 208 WHERE entry = 29918;
UPDATE creature_template SET vehicle_id = 318 WHERE entry = 29929;
UPDATE creature_template SET vehicle_id = 196 WHERE entry = 30013;
UPDATE creature_template SET vehicle_id = 213 WHERE entry = 30066;
UPDATE creature_template SET vehicle_id = 222 WHERE entry = 30174;
UPDATE creature_template SET vehicle_id = 225 WHERE entry = 30204;
UPDATE creature_template SET vehicle_id = 234 WHERE entry = 30228;
UPDATE creature_template SET vehicle_id = 233 WHERE entry = 30275;
UPDATE creature_template SET vehicle_id = 177 WHERE entry = 30320;
UPDATE creature_template SET vehicle_id = 228 WHERE entry = 30330;
UPDATE creature_template SET vehicle_id = 229 WHERE entry = 30337;
UPDATE creature_template SET vehicle_id = 245 WHERE entry = 30342;
UPDATE creature_template SET vehicle_id = 230 WHERE entry = 30343;
UPDATE creature_template SET vehicle_id = 236 WHERE entry = 30403;
UPDATE creature_template SET vehicle_id = 242 WHERE entry = 30470;
UPDATE creature_template SET vehicle_id = 247 WHERE entry = 30564;
UPDATE creature_template SET vehicle_id = 248 WHERE entry = 30585;
UPDATE creature_template SET vehicle_id = 250 WHERE entry = 30645;
UPDATE creature_template SET vehicle_id = 262 WHERE entry = 31125;
UPDATE creature_template SET vehicle_id = 270 WHERE entry = 31137;
UPDATE creature_template SET vehicle_id = 263 WHERE entry = 31139;
UPDATE creature_template SET vehicle_id = 265 WHERE entry = 31224;
UPDATE creature_template SET vehicle_id = 267 WHERE entry = 31262;
UPDATE creature_template SET vehicle_id = 279 WHERE entry = 31583;
UPDATE creature_template SET vehicle_id = 280 WHERE entry = 31641;
UPDATE creature_template SET vehicle_id = 109 WHERE entry = 31689;
UPDATE creature_template SET vehicle_id = 284 WHERE entry = 31702;
UPDATE creature_template SET vehicle_id = 174 WHERE entry = 31722;
UPDATE creature_template SET vehicle_id = 312 WHERE entry = 31857;
UPDATE creature_template SET vehicle_id = 312 WHERE entry = 31858;
UPDATE creature_template SET vehicle_id = 315 WHERE entry = 31861;
UPDATE creature_template SET vehicle_id = 315 WHERE entry = 31862;
UPDATE creature_template SET vehicle_id = 290 WHERE entry = 31881;
UPDATE creature_template SET vehicle_id = 291 WHERE entry = 31884;
UPDATE creature_template SET vehicle_id = 294 WHERE entry = 32189;
UPDATE creature_template SET vehicle_id = 312 WHERE entry = 32212;
UPDATE creature_template SET vehicle_id = 312 WHERE entry = 32213;
UPDATE creature_template SET vehicle_id = 298 WHERE entry = 32225;
UPDATE creature_template SET vehicle_id = 318 WHERE entry = 32286;
UPDATE creature_template SET vehicle_id = 113 WHERE entry = 32323;
UPDATE creature_template SET vehicle_id = 304 WHERE entry = 32490;
UPDATE creature_template SET vehicle_id = 165 WHERE entry = 32535;
UPDATE creature_template SET vehicle_id = 324 WHERE entry = 32627;
UPDATE creature_template SET vehicle_id = 116 WHERE entry = 32629;
UPDATE creature_template SET vehicle_id = 312 WHERE entry = 32633;
UPDATE creature_template SET vehicle_id = 313 WHERE entry = 32640;
UPDATE creature_template SET vehicle_id = 160 WHERE entry = 32795;
UPDATE creature_template SET vehicle_id = 158 WHERE entry = 32796;
UPDATE creature_template SET vehicle_id = 328 WHERE entry = 32930;
UPDATE creature_template SET vehicle_id = 380 WHERE entry = 32934;
UPDATE creature_template SET vehicle_id = 336 WHERE entry = 33060;
UPDATE creature_template SET vehicle_id = 335 WHERE entry = 33062;
UPDATE creature_template SET vehicle_id = 337 WHERE entry = 33067;
UPDATE creature_template SET vehicle_id = 338 WHERE entry = 33109;
UPDATE creature_template SET vehicle_id = 387 WHERE entry = 33113;
UPDATE creature_template SET vehicle_id = 341 WHERE entry = 33114;
UPDATE creature_template SET vehicle_id = 342 WHERE entry = 33118;
UPDATE creature_template SET vehicle_id = 345 WHERE entry = 33167;
UPDATE creature_template SET vehicle_id = 348 WHERE entry = 33214;
UPDATE creature_template SET vehicle_id = 349 WHERE entry = 33217;
UPDATE creature_template SET vehicle_id = 353 WHERE entry = 33293;
UPDATE creature_template SET vehicle_id = 349 WHERE entry = 33319;
UPDATE creature_template SET vehicle_id = 349 WHERE entry = 33321;
UPDATE creature_template SET vehicle_id = 368 WHERE entry = 33513;
UPDATE creature_template SET vehicle_id = 372 WHERE entry = 33669;
UPDATE creature_template SET vehicle_id = 375 WHERE entry = 33687;
UPDATE creature_template SET vehicle_id = 108 WHERE entry = 33778;
UPDATE creature_template SET vehicle_id = 349 WHERE entry = 33844;
UPDATE creature_template SET vehicle_id = 349 WHERE entry = 33845;
UPDATE creature_template SET vehicle_id = 390 WHERE entry = 34120;
UPDATE creature_template SET vehicle_id = 397 WHERE entry = 34161;
UPDATE creature_template SET vehicle_id = 430 WHERE entry = 34658;
UPDATE creature_template SET vehicle_id = 477 WHERE entry = 34703;
UPDATE creature_template SET vehicle_id = 509 WHERE entry = 34775;
UPDATE creature_template SET vehicle_id = 438 WHERE entry = 34793;
UPDATE creature_template SET vehicle_id = 442 WHERE entry = 34796;
UPDATE creature_template SET vehicle_id = 446 WHERE entry = 34826;
UPDATE creature_template SET vehicle_id = 452 WHERE entry = 34929;
UPDATE creature_template SET vehicle_id = 453 WHERE entry = 34935;
UPDATE creature_template SET vehicle_id = 510 WHERE entry = 34944;
UPDATE creature_template SET vehicle_id = 447 WHERE entry = 35273;
UPDATE creature_template SET vehicle_id = 107 WHERE entry = 35373;
UPDATE creature_template SET vehicle_id = 487 WHERE entry = 35474;
UPDATE creature_template SET vehicle_id = 107 WHERE entry = 35491;
UPDATE creature_template SET vehicle_id = 477 WHERE entry = 35572;
UPDATE creature_template SET vehicle_id = 478 WHERE entry = 35633;
UPDATE creature_template SET vehicle_id = 479 WHERE entry = 35634;
UPDATE creature_template SET vehicle_id = 481 WHERE entry = 35636;
UPDATE creature_template SET vehicle_id = 482 WHERE entry = 35637;
UPDATE creature_template SET vehicle_id = 483 WHERE entry = 35638;
UPDATE creature_template SET vehicle_id = 484 WHERE entry = 35640;
UPDATE creature_template SET vehicle_id = 529 WHERE entry = 35644;
UPDATE creature_template SET vehicle_id = 489 WHERE entry = 35768;
UPDATE creature_template SET vehicle_id = 655 WHERE entry = 35819;
UPDATE creature_template SET vehicle_id = 436 WHERE entry = 36356;
UPDATE creature_template SET vehicle_id = 522 WHERE entry = 36476;
UPDATE creature_template SET vehicle_id = 529 WHERE entry = 36559;
UPDATE creature_template SET vehicle_id = 535 WHERE entry = 36661;
UPDATE creature_template SET vehicle_id = 551 WHERE entry = 36794;
UPDATE creature_template SET vehicle_id = 554 WHERE entry = 36838;
UPDATE creature_template SET vehicle_id = 560 WHERE entry = 36891;
UPDATE creature_template SET vehicle_id = 562 WHERE entry = 36896;
UPDATE creature_template SET vehicle_id = 622 WHERE entry = 37120;
UPDATE creature_template SET vehicle_id = 611 WHERE entry = 37968;
UPDATE creature_template SET vehicle_id = 636 WHERE entry = 38500;
UPDATE creature_template SET vehicle_id = 328 WHERE entry = 32930;
UPDATE creature_template SET vehicle_id = 380 WHERE entry = 32934;
UPDATE creature_template SET vehicle_id = 336 WHERE entry = 33060;
UPDATE creature_template SET vehicle_id = 335 WHERE entry = 33062;
UPDATE creature_template SET vehicle_id = 337 WHERE entry = 33067;
UPDATE creature_template SET vehicle_id = 347 WHERE entry = 33108;
UPDATE creature_template SET vehicle_id = 338 WHERE entry = 33109;
UPDATE creature_template SET vehicle_id = 387 WHERE entry = 33113;
UPDATE creature_template SET vehicle_id = 341 WHERE entry = 33114;
UPDATE creature_template SET vehicle_id = 342 WHERE entry = 33118;
UPDATE creature_template SET vehicle_id = 345 WHERE entry = 33167;
UPDATE creature_template SET vehicle_id = 348 WHERE entry = 33214;
UPDATE creature_template SET vehicle_id = 381 WHERE entry = 33288;
UPDATE creature_template SET vehicle_id = 353 WHERE entry = 33293;
UPDATE creature_template SET vehicle_id = 356 WHERE entry = 33364;
UPDATE creature_template SET vehicle_id = 357 WHERE entry = 33366;
UPDATE creature_template SET vehicle_id = 358 WHERE entry = 33369;
UPDATE creature_template SET vehicle_id = 371 WHERE entry = 33651;
UPDATE creature_template SET vehicle_id = 372 WHERE entry = 33669;
UPDATE creature_template SET vehicle_id = 108 WHERE entry = 33778;
UPDATE creature_template SET vehicle_id = 385 WHERE entry = 33983;
UPDATE creature_template SET vehicle_id = 390 WHERE entry = 34120;
UPDATE creature_template SET vehicle_id = 392 WHERE entry = 34146;
UPDATE creature_template SET vehicle_id = 395 WHERE entry = 34150;
UPDATE creature_template SET vehicle_id = 396 WHERE entry = 34151;
UPDATE creature_template SET vehicle_id = 397 WHERE entry = 34161;
UPDATE creature_template SET vehicle_id = 399 WHERE entry = 34183;
UPDATE creature_template SET vehicle_id = 143 WHERE entry = 28864;
UPDATE creature_template SET vehicle_id = 123 WHERE entry = 28605;
UPDATE creature_template SET vehicle_id = 135 WHERE entry = 28782;
UPDATE creature_template SET vehicle_id = 138 WHERE entry = 28817;
UPDATE creature_template SET vehicle_id = 139 WHERE entry = 28833;
UPDATE creature_template SET vehicle_id = 370 WHERE entry = 33432;
UPDATE creature_template SET vehicle_id = 373 WHERE entry = 33670;
UPDATE creature_template SET vehicle_id = 736 WHERE entry = 40305;
UPDATE creature_template SET vehicle_id = 220 WHERE entry = 30161;
UPDATE creature_template SET vehicle_id = 224 WHERE entry = 30234;
UPDATE creature_template SET vehicle_id = 223 WHERE entry = 30248;
UPDATE creature_template SET vehicle_id = 647 WHERE entry IN (38711,38970,38971,38972);
UPDATE creature_template SET vehicle_id = 533 WHERE entry IN (36619,38233,38459,38460);
UPDATE creature_template SET vehicle_id = 587 WHERE entry IN (36678,38431,38585,38586);
UPDATE creature_template SET vehicle_id = 591 WHERE entry IN (37672,38605,38786,38787);
UPDATE creature_template SET vehicle_id = 354 WHERE entry = 33357;
UPDATE creature_template SET vehicle_id = 146 WHERE entry = 28875;
UPDATE creature_template SET vehicle_id = 774 WHERE entry = 28844;
UPDATE creature_template SET vehicle_id = 531 WHERE entry IN (36598);
UPDATE creature_template SET vehicle_id = 532 WHERE entry IN (36609,39120,39121,39122);
UPDATE creature_template SET vehicle_id = 51  WHERE  entry = 27409;
UPDATE creature_template SET vehicle_id = 107 WHERE  entry = 28135;
UPDATE creature_template SET vehicle_id = 206 WHERE  entry = 28379;
UPDATE creature_template SET vehicle_id = 121 WHERE  entry = 28468;
UPDATE creature_template SET vehicle_id = 492 WHERE  entry = 25765;
UPDATE creature_template SET vehicle_id = 25  WHERE  entry = 27516;
UPDATE creature_template SET vehicle_id = 156 WHERE  entry = 26788;
UPDATE creature_template SET vehicle_id = 129 WHERE  entry = 28710;
UPDATE creature_template SET vehicle_id = 25  WHERE  entry = 28446;
UPDATE creature_template SET vehicle_id = 22  WHERE  entry = 24825;
UPDATE creature_template SET vehicle_id = 22  WHERE  entry = 24821;
UPDATE creature_template SET vehicle_id = 22  WHERE  entry = 24823;
UPDATE creature_template SET vehicle_id = 22  WHERE  entry = 24806;
UPDATE creature_template SET vehicle_id = 200 WHERE  entry = 26191;
UPDATE creature_template SET vehicle_id = 113 WHERE  entry = 28246;
UPDATE creature_template SET vehicle_id = 156 WHERE  entry = 27850;
UPDATE creature_template SET vehicle_id = 156 WHERE  entry = 27838;
UPDATE creature_template SET vehicle_id = 30  WHERE  entry = 25881;
UPDATE creature_template SET vehicle_id = 156 WHERE  entry = 26807;
UPDATE creature_template SET vehicle_id = 34  WHERE  entry = 26585;
UPDATE creature_template SET vehicle_id = 39  WHERE  entry = 26813;
UPDATE creature_template SET vehicle_id = 127 WHERE  entry = 28669;
UPDATE creature_template SET vehicle_id = 203 WHERE  entry = 29863;
UPDATE creature_template SET vehicle_id = 200 WHERE  entry = 27883;
UPDATE creature_template SET vehicle_id = 111 WHERE  entry = 28222;
UPDATE creature_template SET vehicle_id = 115 WHERE  entry = 28308;
UPDATE creature_template SET vehicle_id = 191 WHERE  entry = 29306;
UPDATE creature_template SET vehicle_id = 176 WHERE  entry = 29351;
UPDATE creature_template SET vehicle_id = 177 WHERE  entry = 29358;
UPDATE creature_template SET vehicle_id = 165 WHERE  entry = 29403;
UPDATE creature_template SET vehicle_id = 169 WHERE  entry = 29460;
UPDATE creature_template SET vehicle_id = 173 WHERE  entry = 29500;
UPDATE creature_template SET vehicle_id = 175 WHERE  entry = 29555;
UPDATE creature_template SET vehicle_id = 179 WHERE  entry = 29579;
UPDATE creature_template SET vehicle_id = 181 WHERE  entry = 29602;
UPDATE creature_template SET vehicle_id = 183 WHERE  entry = 29625;
UPDATE creature_template SET vehicle_id = 186 WHERE  entry = 29677;
UPDATE creature_template SET vehicle_id = 198 WHERE  entry = 29708;
UPDATE creature_template SET vehicle_id = 194 WHERE  entry = 29709;
UPDATE creature_template SET vehicle_id = 243 WHERE  entry = 29736;
UPDATE creature_template SET vehicle_id = 197 WHERE  entry = 29754;
UPDATE creature_template SET vehicle_id = 201 WHERE  entry = 29838;
UPDATE creature_template SET vehicle_id = 205 WHERE  entry = 29884;
UPDATE creature_template SET vehicle_id = 209 WHERE  entry = 29931;
UPDATE creature_template SET vehicle_id = 214 WHERE  entry = 30090;
UPDATE creature_template SET vehicle_id = 217 WHERE  entry = 30124;
UPDATE creature_template SET vehicle_id = 219 WHERE  entry = 30134;
UPDATE creature_template SET vehicle_id = 221 WHERE  entry = 30165;
UPDATE creature_template SET vehicle_id = 227 WHERE  entry = 30301;
UPDATE creature_template SET vehicle_id = 25  WHERE  entry = 30378;
UPDATE creature_template SET vehicle_id = 316 WHERE  entry = 30468;
UPDATE creature_template SET vehicle_id = 252 WHERE  entry = 30719;
UPDATE creature_template SET vehicle_id = 259 WHERE  entry = 31110;
UPDATE creature_template SET vehicle_id = 265 WHERE  entry = 31163;
UPDATE creature_template SET vehicle_id = 265 WHERE  entry = 31220;
UPDATE creature_template SET vehicle_id = 265 WHERE  entry = 31221;
UPDATE creature_template SET vehicle_id = 269 WHERE  entry = 31268;
UPDATE creature_template SET vehicle_id = 268 WHERE  entry = 31269;
UPDATE creature_template SET vehicle_id = 273 WHERE  entry = 31406;
UPDATE creature_template SET vehicle_id = 277 WHERE  entry = 31407;
UPDATE creature_template SET vehicle_id = 274 WHERE  entry = 31408;
UPDATE creature_template SET vehicle_id = 278 WHERE  entry = 31409;
UPDATE creature_template SET vehicle_id = 282 WHERE  entry = 31784;
UPDATE creature_template SET vehicle_id = 282 WHERE  entry = 31785;
UPDATE creature_template SET vehicle_id = 736 WHERE  entry = 31788;
UPDATE creature_template SET vehicle_id = 512 WHERE  entry = 31830;
UPDATE creature_template SET vehicle_id = 287 WHERE  entry = 31838;
UPDATE creature_template SET vehicle_id = 291 WHERE  entry = 32227;
UPDATE creature_template SET vehicle_id = 300 WHERE  entry = 32326;
UPDATE creature_template SET vehicle_id = 301 WHERE  entry = 32344;
UPDATE creature_template SET vehicle_id = 302 WHERE  entry = 32348;
UPDATE creature_template SET vehicle_id = 273 WHERE  entry = 32512;
UPDATE creature_template SET vehicle_id = 369 WHERE  entry = 32531;
UPDATE creature_template SET vehicle_id = 40  WHERE  entry = 30775;
UPDATE creature_template SET vehicle_id = 201 WHERE  entry = 30935;
UPDATE creature_template SET vehicle_id = 209 WHERE  entry = 30936;
UPDATE creature_template SET vehicle_id = 191 WHERE  entry = 31368;
UPDATE creature_template SET vehicle_id = 108 WHERE  entry = 31669;
UPDATE creature_template SET vehicle_id = 380 WHERE  entry = 32933;
UPDATE creature_template SET vehicle_id = 342 WHERE  entry = 33190;
UPDATE creature_template SET vehicle_id = 0   WHERE  entry IN (33297,33298,33300,33301,33408,33409,33414,33416,33418,34125,36558,36557);
UPDATE creature_template SET vehicle_id = 349 WHERE  entry = 33316;
UPDATE creature_template SET vehicle_id = 349 WHERE  entry = 33317;
UPDATE creature_template SET vehicle_id = 349 WHERE  entry = 33318;
UPDATE creature_template SET vehicle_id = 349 WHERE  entry = 33320;
UPDATE creature_template SET vehicle_id = 349 WHERE  entry = 33322;
UPDATE creature_template SET vehicle_id = 349 WHERE  entry = 33323;
UPDATE creature_template SET vehicle_id = 349 WHERE  entry = 33324;
UPDATE creature_template SET vehicle_id = 368 WHERE  entry = 33519;
UPDATE creature_template SET vehicle_id = 369 WHERE  entry = 33531;
UPDATE creature_template SET vehicle_id = 349 WHERE  entry = 33790;
UPDATE creature_template SET vehicle_id = 349 WHERE  entry = 33791;
UPDATE creature_template SET vehicle_id = 349 WHERE  entry = 33792;
UPDATE creature_template SET vehicle_id = 349 WHERE  entry = 33793;
UPDATE creature_template SET vehicle_id = 349 WHERE  entry = 33794;
UPDATE creature_template SET vehicle_id = 349 WHERE  entry = 33795;
UPDATE creature_template SET vehicle_id = 349 WHERE  entry = 33796;
UPDATE creature_template SET vehicle_id = 349 WHERE  entry = 33798;
UPDATE creature_template SET vehicle_id = 349 WHERE  entry = 33799;
UPDATE creature_template SET vehicle_id = 349 WHERE  entry = 33800;
UPDATE creature_template SET vehicle_id = 349 WHERE  entry = 33842;
UPDATE creature_template SET vehicle_id = 349 WHERE  entry = 33843;
UPDATE creature_template SET vehicle_id = 353 WHERE  entry = 33885;
UPDATE creature_template SET vehicle_id = 328 WHERE  entry = 33909;
UPDATE creature_template SET vehicle_id = 380 WHERE  entry = 33910;
UPDATE creature_template SET vehicle_id = 380 WHERE  entry = 33911;
UPDATE creature_template SET vehicle_id = 381 WHERE  entry = 33955;
UPDATE creature_template SET vehicle_id = 385 WHERE  entry = 33984;
UPDATE creature_template SET vehicle_id = 387 WHERE  entry = 34003;
UPDATE creature_template SET vehicle_id = 335 WHERE  entry = 34045;
UPDATE creature_template SET vehicle_id = 370 WHERE  entry = 34106;
UPDATE creature_template SET vehicle_id = 371 WHERE  entry = 34108;
UPDATE creature_template SET vehicle_id = 373 WHERE  entry = 34109;
UPDATE creature_template SET vehicle_id = 397 WHERE  entry = 34162;
UPDATE creature_template SET vehicle_id = 399 WHERE  entry = 34214;
UPDATE creature_template SET vehicle_id = 485 WHERE  entry = 35641;
UPDATE creature_template SET vehicle_id = 480 WHERE  entry = 35635;
UPDATE creature_template SET vehicle_id = 106 WHERE  entry = 34802;
UPDATE creature_template SET vehicle_id = 477 WHERE  entry = 36087;
UPDATE creature_template SET vehicle_id = 477 WHERE  entry = 36089;
UPDATE creature_template SET vehicle_id = 442 WHERE  entry = 35438;
UPDATE creature_template SET vehicle_id = 442 WHERE  entry = 35439;
UPDATE creature_template SET vehicle_id = 442 WHERE  entry = 35440;
UPDATE creature_template SET vehicle_id = 446 WHERE  entry = 35270;
UPDATE creature_template SET vehicle_id = 446 WHERE  entry = 35271;
UPDATE creature_template SET vehicle_id = 446 WHERE  entry = 35272;
UPDATE creature_template SET vehicle_id = 555 WHERE  entry = 36839;
UPDATE creature_template SET vehicle_id = 599 WHERE  entry = 37187;
UPDATE creature_template SET vehicle_id = 648 WHERE  entry = 38712;
UPDATE creature_template SET vehicle_id = 562 WHERE  entry = 37636;
UPDATE creature_template SET vehicle_id = 560 WHERE  entry = 37626;
UPDATE creature_template SET vehicle_id = 522 WHERE  entry = 37627;
UPDATE creature_template SET vehicle_id = 648 WHERE  entry = 38974;
UPDATE creature_template SET vehicle_id = 648 WHERE  entry = 38973;
UPDATE creature_template SET vehicle_id = 648 WHERE  entry = 38975;
UPDATE creature_template SET vehicle_id = 106 WHERE  entry = 35419;
UPDATE creature_template SET vehicle_id = 106 WHERE  entry = 35421;
UPDATE creature_template SET vehicle_id = 106 WHERE  entry = 35415;
UPDATE creature_template SET vehicle_id = 436 WHERE  entry = 36358;
UPDATE creature_template SET vehicle_id = 36  WHERE  entry = 35413;
UPDATE creature_template SET vehicle_id = 452 WHERE  entry = 35410;
UPDATE creature_template SET vehicle_id = 591 WHERE  entry = 38285;
UPDATE creature_template SET vehicle_id = 718 WHERE  entry = 40081;
UPDATE creature_template SET vehicle_id = 718 WHERE  entry = 40470;
UPDATE creature_template SET vehicle_id = 718 WHERE  entry = 40471;
UPDATE creature_template SET vehicle_id = 718 WHERE  entry = 40472;
UPDATE creature_template SET vehicle_id = 79  WHERE  entry = 35427;
UPDATE creature_template SET vehicle_id = 79  WHERE  entry = 35429;
UPDATE creature_template SET vehicle_id = 591 WHERE  entry = 38788;
UPDATE creature_template SET vehicle_id = 591 WHERE  entry = 38789;
UPDATE creature_template SET vehicle_id = 591 WHERE  entry = 38790;
UPDATE creature_template SET vehicle_id = 700 WHERE  entry = 39682;
UPDATE creature_template SET vehicle_id = 745 WHERE  entry = 39713;
UPDATE creature_template SET vehicle_id = 745 WHERE  entry = 39714;
UPDATE creature_template SET vehicle_id = 753 WHERE  entry = 39759;
UPDATE creature_template SET vehicle_id = 763 WHERE  entry = 39819;
UPDATE creature_template SET vehicle_id = 711 WHERE  entry = 39860;
UPDATE creature_template SET vehicle_id = 747 WHERE  entry = 40479;
UPDATE creature_template SET vehicle_id = 265 WHERE  entry = 31225;
UPDATE creature_template SET vehicle_id = 224 WHERE  entry = 31748;
UPDATE creature_template SET vehicle_id = 223 WHERE  entry = 31749;
UPDATE creature_template SET vehicle_id = 220 WHERE  entry = 31752;

UPDATE creature_template SET IconName="vehichleCursor" WHERE entry IN
(29144,32633,24418,25334,25743,26191,26523,26813,27061,27258,26572,27354,27409,27496,27587,27593,27626, 27661,27692,27714,27755,27756,27838,27839,27850,27883,27905,27996,28851,29563,29598,29602,29708,
29857,29903,30021,30066,30108,30123,30124,30134,30228,30234,30248,30272,30403,30500,31070,31407,27213,
31408,31409,31717,31736,31770,31840,31856,31858,31884,32152,32158,32227,32286,32370,32640,33782,26472);

UPDATE creature_template SET IconName="Gunner" WHERE entry IN (28319,28366,28833,30236,32629,33067,33080,33139,33264,34111);
UPDATE creature_template SET IconName = 'vehichleCursor' WHERE vehicle_id > 0 AND IconName IS NULL;

-- ------------------------
-- vehicle scaling spells -
-- ------------------------

INSERT IGNORE INTO spell_script_target VALUES (66667, 1, 27692);
INSERT IGNORE INTO spell_script_target VALUES (66667, 1, 27756);
INSERT IGNORE INTO spell_script_target VALUES (66667, 1, 27755);

-- -------------------------------
-- Vehicle accessory             -
-- Commit e197cf0cba3487dd1a3f   -
-- -------------------------------

DROP TABLE IF EXISTS `vehicle_accessory`;
CREATE TABLE `vehicle_accessory` (
    `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
    `accessory_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
    `seat_id` tinyint(1) NOT NULL DEFAULT '0',
    `minion` tinyint(1) unsigned NOT NULL DEFAULT '0',
    `offset_x` FLOAT NOT NULL DEFAULT '0',
    `offset_y` FLOAT NOT NULL DEFAULT '0',
    `offset_z` FLOAT NOT NULL DEFAULT '0',
    `offset_o` FLOAT NOT NULL DEFAULT '0',
    `description` text NOT NULL,
    PRIMARY KEY (`entry`, `seat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Vehicle Accessory System';

-- ---------------------
-- `vehicle_accessory` -
-- ---------------------

REPLACE INTO `vehicle_accessory` (`entry`, `accessory_entry`, `seat_id`, `minion`, `description`) VALUES
(36891, 31260, 0, 0, 'Ymirjar Skycaller'),
(27626, 27627, 0, 1, 'Tatjana''s Horse'),
(28312, 28319, 7, 1, 'Wintergrasp Siege Engine'),
(32627, 32629, 7, 1, 'Wintergrasp Siege Engine'),
(32930, 32933, 0, 1, 'Kologarn'),
(32930, 32934, 1, 1, 'Kologarn'),
(33109, 33167, 1, 1, 'Salvaged Demolisher'),
(33109, 33620, 2, 1, 'Salvaged Demolisher'),
(33109, 33167, 3, 1, 'Salvaged Demolisher'),
(33060, 33067, 7, 1, 'Salvaged Siege Engine'),
(29931, 29982, 0, 0, 'Drakkari Rider on Drakkari Rhino'),
(33113, 33114, 2, 1, 'Flame Leviathan'),
(33113, 33114, 3, 1, 'Flame Leviathan'),
(33113, 33139, 7, 1, 'Flame Leviathan'),
(33114, 33142, 1, 1, 'Overload Control Device'),
(33114, 33143, 2, 1, 'Leviathan Defense Turret'),
(36678, 38309, 0, 1, 'Professor Putricide - trigger'),
(36678, 38308, 1, 1, 'Professor Putricide - trigger'),
(33214, 33218, 1, 1, 'Mechanolift 304-A'),
(35637, 34705, 0, 0, 'Marshal Jacob Alerius'' Mount'),
(35633, 34702, 0, 0, 'Ambrose Boltspark''s Mount'),
(35768, 34701, 0, 0, 'Colosos'' Mount'),
(34658, 34657, 0, 0, 'Jaelyne Evensong''s Mount'),
(35636, 34703, 0, 0, 'Lana Stouthammer''s Mount'),
(35638, 35572, 0, 0, 'Mokra the Skullcrusher''s Mount'),
(35635, 35569, 0, 0, 'Eressea Dawnsinger''s Mount'),
(35640, 35571, 0, 0, 'Runok Wildmane''s Mount'),
(35641, 35570, 0, 0, 'Zul''tore''s Mount'),
(35634, 35617, 0, 0, 'Deathstalker Visceri''s Mount'),
(27241, 27268, 0, 0, 'Risen Gryphon'),
(27661, 27662, 0, 0, 'Wintergarde Gryphon'),
(29698, 29699, 0, 0, 'Drakuru Raptor'),
(33778, 33780, 0, 1, 'Tournament Hippogryph'),
(33687, 33695, 0, 1, 'Chillmaw'),
(33687, 33695, 1, 1, 'Chillmaw'),
(33687, 33695, 2, 1, 'Chillmaw'),
(29625, 29694, 0, 0, 'Hyldsmeet Proto-Drake'),
(30330, 30332, 0, 0, 'Jotunheim Proto-Drake'),
(32189, 32190, 0, 0, 'Skybreaker Recon Fighter'),
(32640, 32642, 1, 0, 'Traveler Mammoth (H) - Vendor'),
(32640, 32641, 2, 0, 'Traveler Mammoth (H) - Vendor & Repairer'),
(32633, 32638, 1, 0, 'Traveler Mammoth (A) - Vendor'),
(32633, 32639, 2, 0, 'Traveler Mammoth (A) - Vendor & Repairer'),
(33669, 33666, 0, 0, 'Demolisher Engineer Blastwrench'),
(29555, 29556, 0, 0, 'Goblin Sapper'),
(28018, 28006, 0, 1, 'Thiassi the Light Bringer'),
(28054, 28053, 0, 0, 'Lucky Wilhelm - Apple'),
(28614, 28616, 0, 1, 'Scarlet Gryphon Rider'),
(36476, 36477, 0, 0, 'Krick and Ick'),
(36661, 36658, 0, 0, 'Scourgelord Tyrannus and Rimefang');

-- IOC (to be continued)
DELETE FROM `vehicle_accessory` WHERE entry IN (35069, 34776);
INSERT INTO `vehicle_accessory` (entry, accessory_entry, seat_id, minion, description) VALUES
(35069, 36355, 7, 1, 'Isle of Conquest Siege Engine - main turret (horde)'),
(35069, 34778, 1, 1, 'Isle of Conquest Siege Engine - flame turret 1 (horde)'),
(35069, 34778, 2, 1, 'Isle of Conquest Siege Engine - flame turret 2 (horde)'),
(34776, 34777, 7, 1, 'Isle of Conquest Siege Engine  - main turret (ally)'),
(34776, 36356, 1, 1, 'Isle of Conquest Siege Engine  - flame turret 1 (ally)'),
(34776, 36356, 2, 1, 'Isle of Conquest Siege Engine  - flame turret 2 (ally)');
