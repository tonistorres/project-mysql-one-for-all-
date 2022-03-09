# Crie uma QUERY que deve mostrar 'as' pessoas usuárias que estavam ativas
# 'no' ano de 2021 se baseando na 'data' mais recente 'no' histórico de reprodução.
# A primeira coluna deve possuir o alias `usuario` e exibir o nome da pessoa usuária.
# A segunda coluna deve ter o alias `condicao_usuario` e exibir se a pessoa usuária está ativa ou inativa.
# O resultado deve estar ordenado em ordem alfabética.
# Nessa função temos um `select` que agrupa 'as' informações coletada pelo banco pelo atribuito usuario
# a mesma esta fazendo uso de apelido ou alias neste caso específico para a tabela usuário usei o apelido
# us representado a tabela usuario e rep representando a tabela reproducões 'as' informaçẽos que montam
# minha query principal é extraida de duas tabela acima explicitada por meio de apelios (us, rep)
# onde uma eu printo para o usuario do sistema o nome do usuario cadastrado 'no' banco SpotifyClone
# e a outra utulizo uma estrutura condicional para fazer uma verificação conforme definida na regra
# de negocio explicitada na questão. Para solucação do proble utilizei a função max, year(para 
# converter a 'data' em ano) e vale apenas explicitar que esse 'if' por baixo dos panos ele funciona 
# como uma condicional ternária daí pudemos explicitar duas possívei frases para o usuario do sistema
# uma 'Usuário ativo' outra 'Usuário Inativo'

select 
us.usuario AS usuario, 
  if(max(year(rep.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') as condicao_usuario
from
	SpotifyClone.usuario as us
join
	SpotifyClone.reproducoes as rep on us.usuario_id = rep.usuario_id
group by
	us.usuario;