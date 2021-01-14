SELECT `leagueoflegend_bans`.`blueTeamTag` AS `blueTeamTag`, `leagueoflegend_bans`.`redTeamTag` AS `redTeamTag`, `leagueoflegend_bans`.`blueBans1` AS `blueBans1`, `leagueoflegend_bans`.`blueBans2` AS `blueBans2`, `leagueoflegend_bans`.`blueBans3` AS `blueBans3`, `leagueoflegend_bans`.`blueBans4` AS `blueBans4`, `leagueoflegend_bans`.`blueBans5` AS `blueBans5`, count(*) AS `count`
FROM `leagueoflegend_bans`
WHERE (`leagueoflegend_bans`.`blueTeamTag` IS NOT NULL
   AND (`leagueoflegend_bans`.`blueTeamTag` <> ''
    OR `leagueoflegend_bans`.`blueTeamTag` IS NULL) AND `leagueoflegend_bans`.`redTeamTag` IS NOT NULL AND (`leagueoflegend_bans`.`redTeamTag` <> '' OR `leagueoflegend_bans`.`redTeamTag` IS NULL))
GROUP BY `leagueoflegend_bans`.`blueTeamTag`, `leagueoflegend_bans`.`redTeamTag`, `leagueoflegend_bans`.`blueBans1`, `leagueoflegend_bans`.`blueBans2`, `leagueoflegend_bans`.`blueBans3`, `leagueoflegend_bans`.`blueBans4`, `leagueoflegend_bans`.`blueBans5`
ORDER BY `count` DESC, `leagueoflegend_bans`.`blueTeamTag` ASC, `leagueoflegend_bans`.`redTeamTag` ASC, `leagueoflegend_bans`.`blueBans1` ASC, `leagueoflegend_bans`.`blueBans2` ASC, `leagueoflegend_bans`.`blueBans3` ASC, `leagueoflegend_bans`.`blueBans4` ASC, `leagueoflegend_bans`.`blueBans5` ASC
