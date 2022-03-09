
# Mostre uma relação de todos os álbuns produzidos por cada pessoa artista, 
# com a quantidade de seguidores que ela possui, de acordo com os detalhes
# a seguir. Para tal, crie uma QUERY com as seguintes colunas

# Bem pela essa parte inicial do enunciado já pedemos dectar que iremos trabalhar com:
# 03(três) tabelas, logo, se vamos trabalhar com 03(três) tabelas fica meio que explicito 
# que iremos trabalhar com JOIN para pegar dados dessas tabelas. Outra coisa que fica clara
# nessa parte do enunciado é as tabelas que iremos trabalhar: Album, Artista,Sequidores 

# 1 - A primeira coluna deve exibir o nome da pessoa artista, com o alias 'artista'.
# 2 - A segunda coluna deve exibir o nome do álbum, com o alias 'album'.
# 3 - A terceira coluna deve exibir a quantidade de pessoas 
# seguidoras que aquela pessoa artista possui e deve possuir o alias "seguidores".

select
	a.artista as artista,
	alb.album as `album`,
	COUNT(seg.artista_id) as seguidores
from
	SpotifyClone.album as alb
join
	SpotifyClone.artista as a
on  
	alb.artista_id = a.artista_id
join 
	SpotifyClone.SeguindoArtistas as seg
on   
	alb.artista_id = seg.artista_id
group by
	alb.album_id
ORDER BY 
	seguidores DESC, artista, album;
    
    