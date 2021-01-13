select mortes.nomePlayer, count(nomePlayer) from
(select Address as id, Victim as nomePlayer from tabela_kills) as mortes
group by nomePlayer 