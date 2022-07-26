SELECT
	usuario.nome AS usuario,
	COUNT(*) AS qtde_musicas_ouvidas,
  ROUND(((SUM(cancao.duracao_segundos)) / 60), 2) AS total_minutos
FROM SpotifyClone.usuario AS usuario
INNER JOIN SpotifyClone.historico_usuario AS historico_usuario
ON usuario.id = historico_usuario.usuario_id
INNER JOIN SpotifyClone.cancao AS cancao
ON historico_usuario.cancao_id = cancao.id
GROUP BY historico_usuario.usuario_id, usuario.id
ORDER BY usuario.nome
; 