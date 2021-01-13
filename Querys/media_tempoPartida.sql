select redTeamTag as 'Time', sum(gamelength) / count(redTeamTag) as 'Média do tempo de partida'
from tabela_matchinfo
where redTeamTag = 'C9'
group by redTeamTag