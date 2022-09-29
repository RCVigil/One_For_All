SELECT COUNT(up.cancoes_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.user_performer AS up
INNER JOIN SpotifyClone.user AS us
ON up.usuario_id = us.usuario_id
WHERE us.usuario LIKE 'Barb%'
GROUP BY up.usuario_id
