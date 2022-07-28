SELECT 
	COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.usuario AS usuario
INNER JOIN SpotifyClone.historico_usuario AS historico_usuario
ON usuario.id = historico_usuario.usuario_id
WHERE usuario.nome = 'Bill'
GROUP BY historico_usuario.usuario_id
;