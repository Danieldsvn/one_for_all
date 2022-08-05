SELECT 
	usuario.nome AS usuario,
  IF(MAX(YEAR(historico_usuario.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo')  AS condicao_usuario
FROM SpotifyClone.usuario AS usuario
INNER JOIN SpotifyClone.historico_usuario AS historico_usuario
ON usuario.id = historico_usuario.usuario_id
GROUP BY usuario.nome
ORDER BY usuario
;