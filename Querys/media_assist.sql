SELECT 
    count(Address) as 'Nº de partidas', ( count(Assist_1) + count(Assist_2) + count(Assist_3) + count(Assist_4) ) / count(Address) as "Média de Assists"
FROM
	tabela_kills
where Assist_1 = 'TSM WildTurtle'
OR Assist_2 = 'TSM WildTurtle'
OR Assist_3 = 'TSM WildTurtle'
OR Assist_4 = 'TSM WildTurtle'