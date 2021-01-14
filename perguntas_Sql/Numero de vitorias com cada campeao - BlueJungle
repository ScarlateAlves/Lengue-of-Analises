SELECT `tabela_matchinfo`.`blueJungle` AS `blueJungle`, `tabela_matchinfo`.`blueJungleChamp` AS `blueJungleChamp`, count(*) AS `count`
FROM `tabela_matchinfo`
WHERE (`tabela_matchinfo`.`bResult` = TRUE
   AND (lower(`tabela_matchinfo`.`blueJungle`) like '%svenskeren%'))
GROUP BY `tabela_matchinfo`.`blueJungle`, `tabela_matchinfo`.`blueJungleChamp`
ORDER BY `tabela_matchinfo`.`blueJungle` ASC, `tabela_matchinfo`.`blueJungleChamp` ASC
