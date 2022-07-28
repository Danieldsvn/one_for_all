SELECT 
	cancao.nome AS nome,
  COUNT(*) AS reproducoes
FROM SpotifyClone.historico_usuario AS historico_usuario
INNER JOIN  SpotifyClone.cancao AS cancao
ON cancao.id = historico_usuario.cancao_id
INNER JOIN SpotifyClone.usuario AS usuario
ON  usuario.id = historico_usuario.usuario_id
INNER JOIN SpotifyClone.plano AS plano
ON plano.id = usuario.id_plano
WHERE plano.nome = 'gratuito' OR plano.nome = 'pessoal'
GROUP BY historico_usuario.cancao_id
ORDER BY nome
