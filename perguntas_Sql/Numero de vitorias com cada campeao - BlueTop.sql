SELECT `tabela_matchinfo`.`blueTop` AS `blueTop`, `tabela_matchinfo`.`blueTopChamp` AS `blueTopChamp`, count(*) AS `count`
FROM `tabela_matchinfo`
WHERE (`tabela_matchinfo`.`bResult` = TRUE
   AND `tabela_matchinfo`.`blueTop` = 'Dyrus')
GROUP BY `tabela_matchinfo`.`blueTop`, `tabela_matchinfo`.`blueTopChamp`
ORDER BY `count` DESC, `tabela_matchinfo`.`blueTop` ASC, `tabela_matchinfo`.`blueTopChamp` ASC
