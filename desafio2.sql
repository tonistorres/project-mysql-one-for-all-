
# Utilizando sub-querys acopladas em uma query para fazer contagem 
# de campos específicos em tabelas distintas
# O que está acontecendo nesse ponto é que tenho uma Query "Principal"
# que possui duas sub-querys embebida em seu escopo que fazem contagem 
# de campos especificos em tempo de execução da query principal, montando
# uma única consulta trazendo informações de campos distintos 
SELECT 
  COUNT(cancoes_id) AS 'cancoes',
  (SELECT COUNT(artista_id) FROM SpotifyClone.artista) AS 'artistas',
  (SELECT COUNT(album_id) FROM SpotifyClone.album)  AS 'albuns'
FROM
  SpotifyClone.cancoes;