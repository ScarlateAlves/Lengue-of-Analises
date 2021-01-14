SELECT `tabela_matchinfo`.`blueSupport` AS `blueSupport`, `tabela_matchinfo`.`blueSupportChamp` AS `blueSupportChamp`, count(*) AS `count`
FROM `tabela_matchinfo`
WHERE (`tabela_matchinfo`.`bResult` = TRUE
   AND `tabela_matchinfo`.`blueSupport` = 'Biofrost')
GROUP BY `tabela_matchinfo`.`blueSupport`, `tabela_matchinfo`.`blueSupportChamp`
ORDER BY `count` DESC, `tabela_matchinfo`.`blueSupport` ASC, `tabela_matchinfo`.`blueSupportChamp` ASC
