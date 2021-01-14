SELECT `tabela_matchinfo`.`bResult` AS `bResult`, count(*) AS `count`
FROM `tabela_matchinfo`
WHERE (`tabela_matchinfo`.`bResult` IS NOT NULL
   AND `tabela_matchinfo`.`rResult` IS NOT NULL)
GROUP BY `tabela_matchinfo`.`bResult`
ORDER BY `tabela_matchinfo`.`bResult` ASC
