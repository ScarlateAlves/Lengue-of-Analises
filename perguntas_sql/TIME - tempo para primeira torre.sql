select * from tabela_matchinfo;
select * from tabela_structures;
select nometime.nome, min(Time) as tempo from 
(select Address as id, redTeamTag as nome from tabela_matchinfo
union all 
select Address as id, blueTeamTag as nome from tabela_matchinfo
order by nome) nometime
inner join tabela_structures on tabela_structures.Address = nometime.id 
where team = 'bTowers' and `type`= 'OUTER_TURRET' or team = 'rTowers' and `type`= 'OUTER_TURRET'
group by nometime.nome