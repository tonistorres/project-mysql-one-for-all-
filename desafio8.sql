# Mostre uma relação dos álbuns produzidos por um artista específico,
# neste caso "Walter Phoenix". Para isto crie uma QUERY que o retorno deve exibir as seguintes colunas:

# 1 - O nome da pessoa artista, com o alias "artista".
# 2 - O nome do álbum, com o alias "album".

# Bem pela leitura do requesito acima de cara observamos a necessidade de trabalharmos com 02
# tabelas diferente (album e artista) que me leva a entender que em algum momento na montagem 
# da minha query irei utilizar 'JOIN' para resolucção desse problema utilizei alias(apelidos)
# artista (a) e album(alb) isso para deixar meu códgio mais limpo e obviamente menos verboso.
 

select
a.artista as `artista`,
alb.album as `album`
from
	SpotifyClone.artista as a
join 
	SpotifyClone.album as alb
on 
	a.artista_id = alb.artista_id
where
 a.artista = 'Walter Phoenix'
order by 
alb.album;
