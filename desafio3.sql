# Crie uma QUERY que deverá ter apenas três colunas:
# A primeira coluna deve possuir o alias `usuario` e exibir o nome da pessoa usuária.
# A segunda coluna deve possuir o alias `qtde_musicas_ouvidas` e exibir a quantidade
# de músicas ouvida pela pessoa com base `no`   seu histórico de reprodução.
# A terceira coluna deve possuir o alias `total_minutos` e exibir a soma dos minutos
# ouvidos pela pessoa usuária com base `no`  seu histórico de reprodução.


select
us.usuario as usuario,
count(rep.cancoes_id) AS 'qtde_musicas_ouvidas', 
round(sum(c.duracao_segundos / 60), 2) as 'total_minutos'
from usuario us 
join 
SpotifyClone.reproducoes as rep 
on us.usuario_id= rep.usuario_id
join
SpotifyClone.cancoes as c 
on
rep.cancoes_id = c.cancoes_id
group by
us.usuario
order by
us.usuario    
;
