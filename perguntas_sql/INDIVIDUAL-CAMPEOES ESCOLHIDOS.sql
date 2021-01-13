select * from tabela_matchinfo;
select escolhas.player, escolhas.campeao from
(select blueTop as player, blueTopChamp as campeao from tabela_matchinfo
union all
select blueJungle as player, blueJungleChamp as campeao from tabela_matchinfo
union all
select blueMiddle as player, blueMiddleChamp as campeao from tabela_matchinfo
union all
select blueADC as player, blueADCChamp as campeao from tabela_matchinfo
union all
select blueSupport as player, blueSupportChamp as campeao from tabela_matchinfo
union all
select redTop as player, redTopChamp as campeao from tabela_matchinfo
union all
select redJungle as player, redJungleChamp as campeao from tabela_matchinfo
union all
select redMiddle as player, redMiddleChamp as campeao from tabela_matchinfo
union all
select redADCChamp as player, redADCChamp as campeao from tabela_matchinfo
union all
select redSupport as player, redSupportChamp as campeao from tabela_matchinfo)  as escolhas
order by escolhas.player ASC

limit 1000000
