update creature_template set unit_flags = 768, ScriptName = 'npc_q44281_1' where entry in (113539, 113540, 113551, 114135, 113541, 114106, 114132, 113547);
update creature_template set ScriptName = 'scenarion_bi_heroes_horde' where entry in (90709, 90708, 90711);
update creature_template set ScriptName = 'npc_q44281_1' where entry in (100442);

UPDATE `creature_template` SET `unit_flags`='36872', `unit_flags2`='2099200', speed_walk = '1.42857', speed_run = '1.42857' WHERE `entry` in (90709, 90710, 90711, 90708, 93704, 90712, 97525, 112920);
delete from gameobject where id in (254234);
delete from creature where id in (92801);

delete from creature_addon where guid IN (select guid from creature where id in (113038, 113036, 113037));
update creature set dynamicflags = '0' where id in (90686);
DELETE FROM `creature_questender` WHERE (`id`='101006') AND (`quest`='40607');

replace INTO `creature_questender` (`id`, `quest`) VALUES 
('100866', '40607');

delete from creature_queststarter where id in (95234);
replace into `creature_queststarter` (`id`, `quest`) VALUES 
('95234', '44663');


delete from conditions where SourceTypeOrReferenceId in (23) and SourceGroup in (14) and SourceEntry in (2, 3, 4);
replace INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(23, 14, 3, 0, 3, 41, 0, 40607, 112731, 1, 1, 0, '', 'start BI - 3'),
(23, 14, 3, 0, 3, 9, 0, 40607, 0, 0, 0, 0, '', 'start BI - 3'),
(23, 14, 3, 0, 2, 14, 0, 40607, 0, 0, 0, 0, '', 'start BI - 3'),
(23, 14, 3, 0, 2, 8, 0, 40522, 0, 0, 0, 0, '', 'start BI - 3'),
(23, 14, 3, 0, 1, 14, 0, 40522, 0, 0, 1, 0, '', 'start BI - 3'),
(23, 14, 3, 0, 1, 41, 0, 40522, 100934, 1, 0, 0, '', 'start BI - 3'),
(23, 1637, 6, 0, 1, 41, 0, 40522, 100934, 1, 1, 0, '', 'start BI - 2'),
(23, 1637, 6, 0, 1, 9, 0, 40522, 0, 0, 0, 0, '', 'start BI - 2'),
(23, 14, 2, 0, 0, 14, 0, 43926, 0, 0, 1, 0, '', 'start BI'),
(23, 14, 2, 0, 0, 14, 0, 40522, 0, 0, 0, 0, '', 'end BI');

REPLACE INTO `phase_definitions` (`zoneId`, `entry`, `phasemask`, `phaseId`, `PreloadMapID`, `VisibleMapID`, `flags`, `comment`) VALUES 
('14', '2', '2', '7553', '0', '0', '0', 'start BI'),
('1637', '6', '2', '1230', '0', '0', '0', 'start BI - 2'),
('14', '3', '2', '5571', '0', '0', '0', 'start BI - 3');

replace INTO `waypoint_data_script` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_flag`, `speed`, `action`, `action_chance`, `entry`, `wpguid`) VALUES 
('439148', '1', '633.714', '1916.13', '2.36167', '0', '5000', '1', '0', '0', '100', '0', '0'),
('439148', '2', '690.852', '1909.97', '8.68136', '0', '2000', '1', '0', '0', '100', '0', '0'),
('439148', '3', '705.175', '1905.47', '12.4332', '0', '0', '1', '0', '0', '100', '0', '0'),
('439148', '4', '721.461', '1897.24', '17.3426', '0', '0', '1', '0', '0', '100', '0', '0'),
('439148', '5', '735.792', '1891.26', '22.5241', '0', '0', '1', '0', '0', '100', '0', '0'),
('439148', '6', '759.907', '1886.23', '31.8957', '0', '0', '1', '0', '0', '100', '0', '0'),
('439148', '7', '783.612', '1884.36', '38.8164', '0', '0', '1', '0', '0', '100', '0', '0'),
('439148', '8', '808.677', '1878.04', '45.6926', '0', '0', '1', '0', '0', '100', '0', '0'),
('439148', '9', '826.842', '1869.06', '51', '0', '0', '1', '0', '0', '100', '0', '0'),
('439148', '10', '846.29', '1858.01', '53.3604', '0', '0', '1', '0', '0', '100', '0', '0'),
('439148', '11', '871.52', '1848.04', '53.7026', '0', '0', '1', '0', '0', '100', '0', '0'),

('439149', '1', '875.284', '1846.91', '53.2924', '0', '0', '1', '0', '0', '100', '0', '0'),
('439149', '2', '880.808', '1855.86', '50.8963', '0', '0', '1', '0', '0', '100', '0', '0'),
('439149', '3', '890.352', '1869.23', '45.2039', '0', '0', '1', '0', '0', '100', '0', '0'),
('439149', '4', '896.369', '1890.33', '39.3106', '0', '0', '1', '0', '0', '100', '0', '0'),
('439149', '5', '903.94', '1905.97', '34.0557', '0', '0', '1', '0', '0', '100', '0', '0'),
('439149', '6', '915.2', '1924.47', '31.2339', '0', '0', '1', '0', '0', '100', '0', '0'),
('439149', '7', '926.178', '1942.73', '30.1028', '0', '0', '1', '0', '0', '100', '0', '0'),
('439149', '8', '938.765', '1958.43', '27.7776', '0', '0', '1', '0', '0', '100', '0', '0'),
('439149', '9', '959.55', '1969.67', '23.612', '0', '0', '1', '0', '0', '100', '0', '0'),
('439149', '10', '976.575', '1958.69', '24.3606', '0', '0', '1', '0', '0', '100', '0', '0'),
('439149', '11', '983.732', '1939.29', '24.4212', '0', '0', '1', '0', '0', '100', '0', '0'),
('439149', '12', '979.186', '1919.05', '24.8532', '0', '0', '1', '0', '0', '100', '0', '0'),
('439149', '13', '981.778', '1902.76', '24.6576', '0', '0', '1', '0', '0', '100', '0', '0'),
('439149', '14', '1001.25', '1871.95', '24.452', '0', '0', '1', '0', '0', '100', '0', '0'),

('439150', '1', '1007.48', '1838.47', '23.8099', '0', '5000', '1', '0', '0', '100', '0', '0'),
('439150', '2', '1013.73', '1818.64', '23.6236', '0', '0', '1', '0', '0', '100', '0', '0'),
('439150', '3', '1020.41', '1803.56', '23.7572', '0', '0', '1', '0', '0', '100', '0', '0'),
('439150', '4', '1029.89', '1790.74', '24.1255', '0', '18000', '1', '0', '0', '100', '0', '0'),
('439150', '5', '1045.9', '1762.5', '25.8325', '0', '0', '1', '0', '0', '100', '0', '0'),
('439150', '6', '1039.07', '1738.8', '29.0172', '0', '0', '1', '0', '0', '100', '0', '0'),
('439150', '7', '1033.63', '1721', '28.6476', '0', '0', '1', '0', '0', '100', '0', '0'),
('439150', '8', '1045.71', '1677.84', '31.5872', '0', '0', '1', '0', '0', '100', '0', '0'),
('439150', '9', '1027.8', '1652.3', '35.9314', '0', '0', '1', '0', '0', '100', '0', '0'),
('439150', '10', '1037.76', '1632.59', '38.0553', '0', '0', '1', '0', '0', '100', '0', '0'),
('439150', '11', '1050.59', '1628.56', '37.998', '0', '0', '1', '0', '0', '100', '0', '0'),
('439150', '12', '1082.45', '1621.61', '36.8202', '0', '0', '1', '0', '0', '100', '0', '0'),
('439150', '13', '1102.52', '1629.01', '35.4056', '0', '0', '1', '0', '0', '100', '0', '0'),
('439150', '14', '1101.66', '1746.82', '27.7821', '0', '0', '1', '0', '0', '100', '0', '0'),
('439150', '15', '1102.91', '1759.02', '26.9209', '0', '0', '1', '0', '0', '100', '0', '0'),
('439150', '16', '1166.58', '1762.35', '26.9697', '0', '0', '1', '0', '0', '100', '0', '0'),
('439150', '17', '1181.06', '1790.31', '23.6486', '0', '0', '1', '0', '0', '100', '0', '0'),
('439150', '18', '1188.06', '1753.98', '24.5526', '0', '0', '1', '0', '0', '100', '0', '0'),
('439150', '19', '1154.57', '1646.91', '28.501', '0', '0', '1', '0', '0', '100', '0', '0'),
('439150', '20', '1182.2', '1639.74', '28.8354', '0', '0', '1', '0', '0', '100', '0', '0'),
('439150', '21', '1216.24', '1663.16', '27.114', '0', '0', '1', '0', '0', '100', '0', '0'),
('439150', '22', '1261.73', '1642.18', '35.7092', '0', '0', '1', '0', '0', '100', '0', '0'),
('439150', '23', '1190.51', '1682.18', '27.6593', '0', '0', '1', '0', '0', '100', '0', '0'),


('439151', '1', '1188.68', '1689.91', '27.5495', '0', '0', '1', '0', '0', '100', '0', '0'),
('439151', '2', '1198.91', '1690.1', '26.8755', '0', '0', '1', '0', '0', '100', '0', '0'),
('439151', '3', '1214.41', '1692.71', '25.5288', '0', '0', '1', '0', '0', '100', '0', '0'),
('439151', '4', '1229.58', '1705.12', '23.338', '0', '0', '1', '0', '0', '100', '0', '0'),
('439151', '5', '1245.24', '1713.47', '21.5369', '0', '0', '1', '0', '0', '100', '0', '0'),
('439151', '6', '1278.67', '1724.46', '18.4482', '0', '0', '1', '0', '0', '100', '0', '0'),
('439151', '7', '1283.44', '1726.48', '18.4962', '0', '0', '1', '0', '0', '100', '0', '0'),

('439152', '1', '1296.63', '1730.78', '18.8521', '0', '2000', '1', '0', '0', '100', '0', '0'),
('439152', '2', '1303.12', '1732.36', '19.6277', '0', '0', '1', '0', '0', '100', '0', '0'),
('439152', '3', '1318.07', '1736.02', '26.7226', '0', '0', '1', '0', '0', '100', '0', '0'),
('439152', '4', '1338.08', '1737.83', '32.7817', '0', '0', '1', '0', '0', '100', '0', '0'),
('439152', '5', '1365.1', '1739.15', '34.2237', '0', '0', '1', '0', '0', '100', '0', '0'),
('439152', '6', '1390.84', '1740.27', '34.2338', '0', '0', '1', '0', '0', '100', '0', '0'),
('439152', '7', '1418.23', '1751.56', '34.2257', '0', '0', '1', '0', '0', '100', '0', '0'),

('439153', '1', '1426.26', '1728.31', '34.2243', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '2', '1434.55', '1719.19', '34.2243', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '3', '1443.5', '1709.82', '36.3299', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '4', '1453.41', '1699.28', '43.6263', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '5', '1485.29', '1675.57', '53.689', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '6', '1483.94', '1662.77', '56.6672', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '7', '1481.26', '1641.95', '62.7349', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '8', '1479.92', '1618.28', '69.7434', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '9', '1476.94', '1597.18', '75.4946', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '10', '1477.41', '1579.57', '80.21', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '11', '1480.99', '1563.16', '85.4267', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '12', '1483.08', '1545.35', '91.1805', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '13', '1477.56', '1531.72', '95.4974', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '14', '1466.07', '1514.16', '100.073', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '15', '1460.46', '1497.78', '105.121', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '16', '1467.22', '1485.94', '109.673', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '17', '1482.91', '1480.67', '112.565', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '18', '1499.59', '1480.37', '117.203', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '19', '1511.56', '1487.44', '122.482', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '20', '1516.96', '1500.72', '126.889', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '21', '1524.24', '1521.54', '130.012', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '22', '1537.29', '1507.25', '129.589', '0', '0', '1', '0', '0', '100', '0', '0'),
('439153', '23', '1532.95', '1488.95', '127.175', '0', '0', '1', '0', '0', '100', '0', '0'),

('439154', '1', '1428.15', '1724.58', '34.2236', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '2', '1442.96', '1709.44', '36.2344', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '3', '1455.63', '1695.2', '45.1748', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '4', '1474.5', '1677.52', '51.8836', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '5', '1493.71', '1681.71', '53.0311', '0', '4000', '1', '0', '0', '100', '0', '0'),
('439154', '6', '1486.04', '1661.22', '57.3512', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '7', '1480.23', '1642.87', '62.3559', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '8', '1475.96', '1625.11', '67.3295', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '9', '1477.28', '1604.15', '73.5861', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '10', '1478.6', '1583.2', '79.4644', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '11', '1479.55', '1559.28', '86.546', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '12', '1479.53', '1545.39', '90.9616', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '13', '1473.73', '1522.98', '97.8976', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '14', '1470.37', '1513.03', '100.694', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '15', '1465.9', '1494.23', '106.185', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '16', '1469.89', '1486.57', '109.684', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '17', '1485.24', '1479.07', '113.215', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '18', '1504.94', '1480.74', '118.7', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '19', '1516.35', '1495.09', '125.461', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '20', '1523.74', '1531.24', '130.97', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '21', '1527.44', '1541.36', '134.169', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '22', '1539.93', '1549.06', '139.239', '0', '0', '1', '0', '0', '100', '0', '0'),
('439154', '23', '1563.38', '1550.08', '145.463', '0', '0', '1', '0', '0', '100', '0', '0'),

('439155', '1', '1695.9', '1457.42', '111.108', '0', '0', '1', '0', '0', '100', '0', '0'),
('439155', '2', '1692.26', '1459.56', '114.467', '0', '0', '1', '0', '0', '100', '0', '0'),
('439155', '3', '1683.84', '1465.17', '115.849', '0', '0', '1', '0', '0', '100', '0', '0'),
('439155', '4', '1676.97', '1470.05', '119.49', '0', '0', '1', '0', '0', '100', '0', '0'),
('439155', '5', '1667.39', '1476.85', '129.658', '0', '0', '1', '0', '0', '100', '0', '0'),
('439155', '6', '1655.06', '1485.6', '141.697', '0', '0', '1', '0', '0', '100', '0', '0'),
('439155', '7', '1616.9', '1512.67', '153.95', '0', '0', '1', '0', '0', '100', '0', '0'),
('439155', '8', '1607.66', '1519.23', '156.714', '0', '0', '1', '0', '347', '100', '0', '0');

replace into `waypoint_scripts` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `x`, `y`, `z`, `o`, `guid`) VALUES 
('347', '0', '22', '0', '0', '0', '0', '0', '0', '0', '13');


replace INTO `spell_linked_spell` (`spell_trigger`, `spell_effect`, `type`, `caster`, `target`, `hastype`, `hastalent`, `hasparam`, `hastype2`, `hastalent2`, `hasparam2`, `chance`, `cooldown`, `duration`, `hitmask`, `removeMask`, `effectMask`, `targetCountType`, `targetCount`, `actiontype`, `group`, `param`, `comment`) VALUES 
('-224998', '224997', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', 'On remove scene - teleport');


replace INTO `spell_target_position` (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
(224997, 1460, '1278.67', '1724.46', '18.4482', 0); -- 228327
UPDATE `gameobject_template` SET `type`='11' WHERE (`entry`='246854');

update creature_template set AIName = 'SmartAI' where entry in (90712, 90708, 100453);
delete from smart_scripts where entryorguid in (90712, 90708, 100453);  
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(100453, 0, 0, 0, 19, 0, 100, 0, 40522, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, "BI"),

(90708, 0, 0, 0, 60, 0, 100, 0, 3000, 4000, 3000, 4000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "BI"),

(90712, 0, 0, 0, 0, 0, 100, 0, 3000, 4000, 3000, 4000, 11, 224721, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "BI"),
(90712, 0, 1, 0, 0, 0, 100, 0, 14000, 15000, 14000, 15000, 11, 224722, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, "BI");

replace INTO `creature_text` (`Entry`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextID`, `comment`) VALUES
(90711, 2, 0, 'Духи земли, помогите!', 12, 0, 100, 0, 0, 53611, 0, 'Тралл to 786'),
(90709, 4, 0, 'Кто-нибудь знает, как пересечь этот разлом?', 12, 0, 100, 0, 0, 53610, 0, 'Леди Сильвана Ветрокрылая to Тралл'),
(90709, 5, 0, 'Как удобно.', 12, 0, 100, 0, 0, 53612, 0, 'Леди Сильвана Ветрокрылая to Тралл');

delete from creature where id in (112920, 97525) and map in (1460);
INSERT INTO `creature` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `npcflag2`, `unit_flags`, `dynamicflags`, `AiID`, `MovementID`, `MeleeID`, `isActive`, `skipClone`) VALUES 
('112920', '1460', '7534', '8455', '4096', '1', '', '0', '1', '992.869', '1882.57', '25.1755', '5.5396', '300', '0', '0', '1558901', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('112920', '1460', '7534', '8455', '4096', '1', '', '0', '1', '995.785', '1885.1', '25.0818', '5.3943', '300', '0', '0', '1558901', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('112920', '1460', '7534', '8455', '4096', '1', '', '0', '1', '999.938', '1884.99', '25.0387', '5.48305', '300', '0', '0', '1558901', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('112920', '1460', '7534', '8455', '4096', '1', '', '0', '1', '1000.98', '1880.51', '24.7243', '5.47833', '300', '0', '0', '1558901', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('112920', '1460', '7534', '8455', '4096', '1', '', '0', '1', '998.132', '1877.87', '24.7582', '5.4587', '300', '0', '0', '1558901', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('112920', '1460', '7534', '8455', '4096', '1', '', '0', '1', '994.299', '1878.1', '24.8902', '5.45556', '300', '0', '0', '1558901', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),

('97525', '1460', '7534', '8455', '4096', '1', '', '0', '1', '989.147', '1877.57', '25.0431', '5.36131', '300', '0', '0', '1558901', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('97525', '1460', '7534', '8455', '4096', '1', '', '0', '1', '992.93', '1877.16', '24.9066', '5.47126', '300', '0', '0', '1558901', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('97525', '1460', '7534', '8455', '4096', '1', '', '0', '1', '996.347', '1873.51', '24.5743', '5.44377', '300', '0', '0', '1558901', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('97525', '1460', '7534', '8455', '4096', '1', '', '0', '1', '993.286', '1868.51', '24.0796', '5.52231', '300', '0', '0', '1558901', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
('97525', '1460', '7534', '8455', '4096', '1', '', '0', '1', '989.763', '1870.27', '24.5525', '5.56158', '300', '0', '0', '1558901', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

delete from gameobject where id in(216350);
INSERT INTO `gameobject` (`id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `PhaseId`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `AiID`, `state`, `isActive`) VALUES 
('216350', '0', '1519', '6292', '1', '1', '', '-8401.06', '330.757', '147.014', '5.15268', '0', '0', '0', '1', '180', '255', '0', '1', '0'),
('216350', '1', '1637', '5166', '1', '1', '', '1757.59', '-4291.83', '7.55415', '5.42553', '0', '0', '0.415804', '-0.909454', '300', '0', '0', '1', '0');

-- DELETE from creature where areaId in (4982);
-- DELETE from gameobject where areaId in (4982);