
# Para a Solução desse problema divi o problemas em partes: 

# 1ª Parte : Para criar uma Query que possua duas colunas 
# a primeira coluna deve possuir o alias `cancao` e exibir o nome da canção.
# a segunda coluna deve possuir o alias `reproducoes` e exibir a quantidade,
# nesso ponto vale ressaltar algumas observações: 

# * Primeira é que estamos trabalhando com tabelas distintas
# `no` total de 02(duas) tabelas o que me leva a possibilidae nítida 
# de trabalhar com `Join`e foi exatamente que fiz

# * Segunda observação temos à segunda coluna que conta o numero 
# de reproduçõs feitas de uma determinada música o que me leva à nítida possibilidade de ter 
# que agrupar dados('GROUP BY'), por causa do uso do comando COUNT.

# 2ª Parte: Seu resultado deve estar ordenado em ordem decrescente, claramente essa query deve possuir 
# a função `ORDER BY DESC`  embebida `no` seu escopo 

# 3ª Parte: Queremos apenas o 'top' 2 de músicas mais tocadas. Bem se estou ondenando 
# meus dados de forma 'DESC' 'no' que se refere ao campo reproducoes, logo, para encontrar
# 'as' duas mais tocadas é só fazer uso da funcao 'limit'

select 	
	c.cancoes as cancao, 
    COUNT(rep.cancoes_id) AS reproducoes
from 
	SpotifyClone.cancoes as c
join
	SpotifyClone.reproducoes as rep on c.cancoes_id = rep.cancoes_id
group by
	c.cancoes
order by
	reproducoes desc, cancao
limit 2;