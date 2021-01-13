select resultadoCampeao.campeao, resultadoCampeao.resultado from
(select blueTopChamp as campeao, bResult as resultado from tabela_matchinfo
union all
select blueJungleChamp as campeao, bResult as resultado from tabela_matchinfo
union all
select blueMiddleChamp as campeao, bResult as resultado from tabela_matchinfo
union all
select blueADCChamp as campeao, bResult as resultado from tabela_matchinfo
union all
select blueSupportChamp as campeao, bResult as resultado from tabela_matchinfo
union all
select redTopChamp as campeao, rResult as resultado from tabela_matchinfo
union all
select redJungleChamp as campeao, rResult as resultado  from tabela_matchinfo
union all
select redMiddleChamp as campeao, rResult as resultado  from tabela_matchinfo
union all
select redADCChamp as campeao, rResult as resultado  from tabela_matchinfo
union all
select redSupportChamp as campeao, rResult as resultado  from tabela_matchinfo) as resultadoCampeao
