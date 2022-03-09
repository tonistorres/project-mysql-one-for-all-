# https://learnsql.com/cookbook/how-to-convert-an-integer-to-a-decimal-in-sql-server/ 
# 'Use' a função CAST() para converter um inteiro em um tipo de dados 'DECIMAL'.
# Essa função usa uma expressão ou um nome de coluna como argumento, seguido pela 
# palavra-chave 'AS' e o novo tipo de dados.
# primeiro trabalharemos com a tabela usuário e plano para descobrirmos o menor. o maior
# a media, a soma dos valores dos planos que 'as' pessoas usuarias tem cadastrados na base
# de dados·

# * Para primeira coluna trabalharemos a função cast e min  que irá converter o valor gerado em 
#   valor 'decimal' e buscar o menor valor relacionado a query  aqui executada

# * Para segunda coluna trabalharemos a função cast e max  que irá converter o valor gerado em 
#   valor 'decimal' e buscar o maior valor relacionado a query  aqui executada

# * Para terceira coluna trabalharemos a função cast e avg  que irá converter o valor gerado em 
#   valor 'decimal' e buscar a media do valor relacionado a query  aqui executada

# * Para quarta coluna trabalharemos a função cast e sum  que irá converter o valor gerado em 
#   valor 'decimal' e buscar a soma dos valores relacionado a query  aqui executada

# Observacao: Vale apenas ressaltar que estamos trabalhando com 'join' para fazer a relação 
# entre 'as' tabelas plano e usuário. Utilizamos ainda alias para facilitar a montagem da 
# query deixando a mesma menos verbosa

select
	cast(min(pl.valor_plano) as decimal(15,2)) as 'faturamento_minimo',
    cast(max(pl.valor_plano) as decimal(15,2)) as 'faturamento_maximo',
    cast(avg(pl.valor_plano) as decimal(15,2)) as 'faturamento_medio',
    cast(sum(pl.valor_plano) as decimal(15,2)) as 'faturamento_total'
from
	SpotifyClone.plano AS pl
join
	SpotifyClone.usuario AS us 
on
     pl.plano_id = us.plano_id;