SELECT `source`.`Killer` AS `Killer`, `source`.`sum` AS `sum`, `source`.`count` AS `count`, `source`.`Media de Kills por Partida` AS `Media de Kills por Partida`
FROM (SELECT `source`.`sum` AS `sum`, `source`.`count` AS `count`, `source`.`Killer` AS `Killer`, `source`.`sum` AS `sum_2`, `source`.`count` AS `count_2`, (`source`.`sum` / CASE WHEN `source`.`count` = 0 THEN NULL ELSE `source`.`count` END) AS `Media de Kills por Partida` FROM (SELECT `source`.`Killer` AS `Killer`, sum(`source`.`count`) AS `sum`, count(*) AS `count` FROM (SELECT `tabela_kills`.`Killer` AS `Killer`, `tabela_kills`.`Address` AS `Address`, count(*) AS `count` FROM `tabela_kills`
WHERE (`tabela_kills`.`Killer` IS NOT NULL
   AND (`tabela_kills`.`Killer` <> ''
    OR `tabela_kills`.`Killer` IS NULL) AND (lower(`tabela_kills`.`Killer`) like '%tsm%'))
GROUP BY `tabela_kills`.`Killer`, `tabela_kills`.`Address`
ORDER BY `tabela_kills`.`Killer` ASC, `tabela_kills`.`Address` ASC) `source`
LEFT JOIN `tabela_matchinfo` `Tab Ela Match Info` ON `source`.`Address` = `Tab Ela Match Info`.`Address` GROUP BY `source`.`Killer` ORDER BY `source`.`Killer` ASC) `source`) `source` ORDER BY `source`.`Media de Kills por Partida` DESC
LIMIT 1048576
