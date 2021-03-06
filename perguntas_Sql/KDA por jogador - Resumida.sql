SELECT `source`.`Victim` AS `Victim`, `source`.`KDA` AS `KDA`
FROM (SELECT `source`.`count_assist1` AS `count_assist1`, `source`.`count_assist2` AS `count_assist2`, `source`.`count_assist3` AS `count_assist3`, `source`.`count_assist4` AS `count_assist4`, `source`.`count_kills` AS `count_kills`, `source`.`count_victim` AS `count_victim`, `source`.`Victim` AS `Victim`, ((`source`.`count_assist1` + `source`.`count_assist2` + `source`.`count_assist3` + `source`.`count_assist4` + `source`.`count_kills`) / CASE WHEN `source`.`count_victim` = 0 THEN NULL ELSE `source`.`count_victim` END) AS `KDA` FROM (SELECT `source`.`Victim` AS `Victim`, `source`.`count_victim` AS `count_victim`, `source`.`count_kills` AS `count_kills`, `source`.`count_assist1` AS `count_assist1`, `source`.`count_assist2` AS `count_assist2`, `source`.`count_assist3` AS `count_assist3`, `source`.`count_assist4` AS `count_assist4` FROM (SELECT `source`.`Victim` AS `Victim`, `source`.`count_victim` AS `count_victim`, `source`.`count_kills` AS `count_kills`, `source`.`count_assist1` AS `count_assist1`, `source`.`count_assist2` AS `count_assist2`, `source`.`count_assist3` AS `count_assist3`, sum(CASE WHEN `Tab Ela Kills`.`Assist_4` >= 0 THEN 1 ELSE 0.0 END) AS `count_assist4`
FROM (SELECT `source`.`Victim` AS `Victim`, `source`.`count_victim` AS `count_victim`, `source`.`count_kills` AS `count_kills`, `source`.`count_assist1` AS `count_assist1`, `source`.`count_assist2` AS `count_assist2`, sum(CASE WHEN `Tab Ela Kills`.`Assist_3` >= 0 THEN 1 ELSE 0.0 END) AS `count_assist3`
FROM (SELECT `source`.`Victim` AS `Victim`, `source`.`count_victim` AS `count_victim`, `source`.`count_kills` AS `count_kills`, `source`.`count_assist1` AS `count_assist1`, sum(CASE WHEN `Tab Ela Kills`.`Assist_2` >= 0 THEN 1 ELSE 0.0 END) AS `count_assist2`
FROM (SELECT `source`.`Victim` AS `Victim`, `source`.`count_victim` AS `count_victim`, `source`.`count_kills` AS `count_kills`, sum(CASE WHEN `Tab Ela Kills`.`Assist_1` >= 0 THEN 1 ELSE 0.0 END) AS `count_assist1`
FROM (SELECT `source`.`Victim` AS `Victim`, `source`.`count-where` AS `count_victim`, sum(CASE WHEN `Tab Ela Kills`.`Killer` >= 0 THEN 1 ELSE 0.0 END) AS `count_kills`
FROM (SELECT `tabela_kills`.`Victim` AS `Victim`, sum(CASE WHEN `tabela_kills`.`Victim` >= 0 THEN 1 ELSE 0.0 END) AS `count-where` FROM `tabela_kills`
WHERE (`tabela_kills`.`Victim` IS NOT NULL
  
  
  
  
  
   AND (`tabela_kills`.`Victim` <> ''
   
   
   
   
   
    OR `tabela_kills`.`Victim` IS NULL))
GROUP BY `tabela_kills`.`Victim`
ORDER BY `tabela_kills`.`Victim` ASC) `source`
LEFT JOIN `tabela_kills` `Tab Ela Kills` ON `source`.`Victim` = `Tab Ela Kills`.`Killer` GROUP BY `source`.`Victim`, `source`.`count-where` ORDER BY `source`.`Victim` ASC, `source`.`count-where` ASC) `source` LEFT JOIN `tabela_kills` `Tab Ela Kills` ON `source`.`Victim` = `Tab Ela Kills`.`Assist_1` GROUP BY `source`.`Victim`, `source`.`count_victim`, `source`.`count_kills` ORDER BY `source`.`Victim` ASC, `source`.`count_victim` ASC, `source`.`count_kills` ASC) `source` LEFT JOIN `tabela_kills` `Tab Ela Kills` ON `source`.`Victim` = `Tab Ela Kills`.`Assist_2` GROUP BY `source`.`Victim`, `source`.`count_victim`, `source`.`count_kills`, `source`.`count_assist1` ORDER BY `source`.`Victim` ASC, `source`.`count_victim` ASC, `source`.`count_kills` ASC, `source`.`count_assist1` ASC) `source` LEFT JOIN `tabela_kills` `Tab Ela Kills` ON `source`.`Victim` = `Tab Ela Kills`.`Assist_3` GROUP BY `source`.`Victim`, `source`.`count_victim`, `source`.`count_kills`, `source`.`count_assist1`, `source`.`count_assist2` ORDER BY `source`.`Victim` ASC, `source`.`count_victim` ASC, `source`.`count_kills` ASC, `source`.`count_assist1` ASC, `source`.`count_assist2` ASC) `source` LEFT JOIN `tabela_kills` `Tab Ela Kills` ON `source`.`Victim` = `Tab Ela Kills`.`Assist_4` GROUP BY `source`.`Victim`, `source`.`count_victim`, `source`.`count_kills`, `source`.`count_assist1`, `source`.`count_assist2`, `source`.`count_assist3` ORDER BY `source`.`Victim` ASC, `source`.`count_victim` ASC, `source`.`count_kills` ASC, `source`.`count_assist1` ASC, `source`.`count_assist2` ASC, `source`.`count_assist3` ASC) `source` WHERE (lower(`source`.`Victim`) like '%tsm%') GROUP BY `source`.`Victim`, `source`.`count_victim`, `source`.`count_kills`, `source`.`count_assist1`, `source`.`count_assist2`, `source`.`count_assist3`, `source`.`count_assist4` ORDER BY `source`.`Victim` ASC, `source`.`count_victim` ASC, `source`.`count_kills` ASC, `source`.`count_assist1` ASC, `source`.`count_assist2` ASC, `source`.`count_assist3` ASC, `source`.`count_assist4` ASC) `source`) `source` GROUP BY `source`.`Victim`, `source`.`KDA` ORDER BY `source`.`KDA` DESC, `source`.`Victim` ASC
LIMIT 1048576
