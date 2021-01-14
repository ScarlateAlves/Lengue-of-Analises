SELECT `tabela_kills`.`Victim` AS `Victim`, avg(`tabela_kills`.`Time`) AS `avg`
FROM `tabela_kills`
WHERE (`tabela_kills`.`Victim` IS NOT NULL
   AND (`tabela_kills`.`Victim` <> ''
    OR `tabela_kills`.`Victim` IS NULL) AND (`tabela_kills`.`Victim` <> 'TooEarly' OR `tabela_kills`.`Victim` IS NULL) AND (lower(`tabela_kills`.`Victim`) like '%tsm%'))
GROUP BY `tabela_kills`.`Victim`
ORDER BY `avg` ASC, `tabela_kills`.`Victim` ASC
