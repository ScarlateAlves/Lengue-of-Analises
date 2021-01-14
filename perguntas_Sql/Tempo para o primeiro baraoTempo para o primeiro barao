select nometime.nome, min(Time) as tempo from 
(select Address as id, redTeamTag as nome from tabela_matchinfo
union all 
select Address as id, blueTeamTag as nome from tabela_matchinfo
order by nome) nometime
inner join tabela_monsters on tabela_monsters.Address = nometime.id 
where team = 'bBarons' or team = 'rBarons'
group by nometime.nome
order by tempo desc
limit 10
