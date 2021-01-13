select * from tabela_matchinfo;
select vitoriasPlayer.player, vitoriasPlayer.campeao, vitoriasPlayer.resultado from
(select blueTop as player, blueTopChamp as campeao, bResult as resultado from tabela_matchinfo
union all
select blueJungle as player, blueJungleChamp as campeao, bResult as resultado from tabela_matchinfo
union all
select blueMiddle as player, blueMiddleChamp as campeao, bResult as resultado from tabela_matchinfo
union all
select blueADC as player, blueADCChamp as campeao, bResult as resultado from tabela_matchinfo
union all
select blueSupport as player, blueSupportChamp as campeao, bResult as resultado from tabela_matchinfo
union all
select redTop as player, redTopChamp as campeao, rResult as resultado from tabela_matchinfo
union all
select redJungle as player, redJungleChamp as campeao, rResult as resultado  from tabela_matchinfo
union all
select redMiddle as player, redMiddleChamp as campeao, rResult as resultado  from tabela_matchinfo
union all
select redADCChamp as player, redADCChamp as campeao, rResult as resultado  from tabela_matchinfo
union all
select redSupport as player, redSupportChamp as campeao, rResult as resultado  from tabela_matchinfo) as vitoriasPlayer
limit 1000000