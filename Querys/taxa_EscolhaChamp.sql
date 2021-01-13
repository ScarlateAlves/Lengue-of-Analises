select blueTopChamp, count(blueTopChamp) / (select count(blueTopChamp) from tabela_matchinfo ) * 100 as 'Porcetagem de pick'
from tabela_matchinfo
group by blueTopChamp