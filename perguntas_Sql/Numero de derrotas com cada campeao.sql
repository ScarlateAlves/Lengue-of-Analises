select nome, (count(nome)*100)/7620 as C from (
select blueTopChamp as nome from tabela_matchinfo where rResult = 0 or bResult = 0
union all
select blueJungleChamp as nome from tabela_matchinfo where rResult = 0 or bResult = 0
union all
select blueMiddleChamp as nome from tabela_matchinfo where rResult = 0 or bResult = 0
union all
select blueADCChamp as nome from tabela_matchinfo where rResult = 0 or bResult = 0
union all
select blueSupportChamp as nome from tabela_matchinfo where rResult = 0 or bResult = 0
union all
select redTopChamp as nome from tabela_matchinfo where rResult = 0 or bResult = 0
union all
select redJungleChamp as nome from tabela_matchinfo where rResult = 0 or bResult = 0
union all
select redMiddleChamp as nome from tabela_matchinfo where rResult = 0 or bResult = 0
union all
select redADCChamp as nome from tabela_matchinfo where rResult = 0 or bResult = 0
union all
select redSupportChamp as nome from tabela_matchinfo where rResult = 0 or bResult = 0
) as R group by nome order by C desc
limit 10
