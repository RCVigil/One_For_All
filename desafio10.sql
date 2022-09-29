SELECT s.cancoes AS nome, 
  COUNT(up.cancoes_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.user_performer AS up
ON s.cancoes_id = up.cancoes_id
INNER JOIN SpotifyClone.user AS us
ON us.usuario_id = up.usuario_id
INNER JOIN SpotifyClone.business AS b
ON us.business_id = b.business_id
WHERE b.plano = 'gratuito' OR b.plano = 'pessoal'
GROUP BY nome
Order BY nome
