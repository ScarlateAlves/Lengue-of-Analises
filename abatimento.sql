
select * from tabela_matchinfo;
select * from tabela_kills;
select r.nome, min(Time) from 
(select Address as id, redTeamTag as nome from tabela_matchinfo
union all 
select Address, blueTeamTag as nome from tabela_matchinfo
order by nome) r
inner join tabela_kills on tabela_kills.Address = r.id
group by r.nome
order by r.nome;



































