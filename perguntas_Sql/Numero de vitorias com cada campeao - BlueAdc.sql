SELECT `tabela_matchinfo`.`blueADC` AS `blueADC`, `tabela_matchinfo`.`blueADCChamp` AS `blueADCChamp`, count(*) AS `count`
FROM `tabela_matchinfo`
WHERE (`tabela_matchinfo`.`bResult` = TRUE
   AND (lower(`tabela_matchinfo`.`blueADC`) like '%doublelift%'))
GROUP BY `tabela_matchinfo`.`blueADC`, `tabela_matchinfo`.`blueADCChamp`
ORDER BY `tabela_matchinfo`.`blueADC` ASC, `tabela_matchinfo`.`blueADCChamp` ASC
