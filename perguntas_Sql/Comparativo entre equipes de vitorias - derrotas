SELECT `tabela_matchinfo`.`blueTeamTag` AS `blueTeamTag`, `tabela_matchinfo`.`redTeamTag` AS `redTeamTag`, `tabela_matchinfo`.`bResult` AS `bResult`, `tabela_matchinfo`.`rResult` AS `rResult`, `tabela_matchinfo`.`League` AS `League`, `tabela_matchinfo`.`Year` AS `Year`, `tabela_matchinfo`.`Season` AS `Season`, `tabela_matchinfo`.`Type` AS `Type`, sum(`tabela_matchinfo`.`bResult`) AS `sum`, sum(`tabela_matchinfo`.`rResult`) AS `sum_2`
FROM `tabela_matchinfo`
WHERE (`tabela_matchinfo`.`blueTeamTag` IS NOT NULL
AND (`tabela_matchinfo`.`blueTeamTag` <> ''
    OR `tabela_matchinfo`.`blueTeamTag` IS NULL) AND `tabela_matchinfo`.`redTeamTag` IS NOT NULL AND (`tabela_matchinfo`.`redTeamTag` <> '' OR `tabela_matchinfo`.`redTeamTag` IS NULL))
GROUP BY `tabela_matchinfo`.`blueTeamTag`, `tabela_matchinfo`.`redTeamTag`, `tabela_matchinfo`.`bResult`, `tabela_matchinfo`.`rResult`, `tabela_matchinfo`.`League`, `tabela_matchinfo`.`Year`, `tabela_matchinfo`.`Season`, `tabela_matchinfo`.`Type`
ORDER BY `tabela_matchinfo`.`blueTeamTag` ASC, `tabela_matchinfo`.`redTeamTag` ASC, `tabela_matchinfo`.`bResult` ASC, `tabela_matchinfo`.`rResult` ASC, `tabela_matchinfo`.`League` ASC, `tabela_matchinfo`.`Year` ASC, `tabela_matchinfo`.`Season` ASC, `tabela_matchinfo`.`Type` ASC
