select r.nome, count(nome) as contagem from
(select ban_1 as nome from tabela_bans 
union all
select ban_2 as nome from tabela_bans
union all
select ban_3 as nome from tabela_bans
union all
select ban_4 as nome from tabela_bans
union all
select ban_5 as nome from tabela_bans
 ) as r
group by r.nome
order by contagem desc;


