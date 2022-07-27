SELECT 
	artista.nome AS artista,
  album.nome AS album
FROM SpotifyClone.artista AS artista
INNER JOIN SpotifyClone.album AS album
ON artista.id = album.id_artista
WHERE artista.nome = 'Walter Phoenix'
ORDER BY album ASC
;