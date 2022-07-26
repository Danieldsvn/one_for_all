SELECT 
	cancao.nome AS cancao,
  COUNT(*) AS reproducoes
FROM SpotifyClone.cancao AS cancao
INNER JOIN SpotifyClone.historico_usuario AS historico_usuario
ON cancao.id = historico_usuario.cancao_id
GROUP BY cancao.nome
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2
;