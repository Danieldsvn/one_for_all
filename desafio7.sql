SELECT
	artista.nome AS artista,
  album.nome AS album,
  COUNT(*) AS seguidores
FROM SpotifyClone.artista AS artista
INNER JOIN SpotifyClone.album AS album
ON artista.id = album.id_artista
INNER JOIN SpotifyClone.usuario_artistas_seguidos AS artistas_seguidos
ON artista.id = artistas_seguidos.artista_id
GROUP BY artista.id, album.id
ORDER BY seguidores DESC, artista ASC, album ASC
;