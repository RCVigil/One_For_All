SELECT us.usuario AS 'usuario',
  COUNT(up.usuario_id) AS 'qt_de_musicas_ouvidas',
  ROUND( SUM(s.duracao_segundos/60), 2) AS 'total_minutos'
FROM SpotifyClone.user AS us 
INNER JOIN SpotifyClone.user_performer AS up ON us.usuario_id = up.usuario_id
INNER JOIN SpotifyClone.songs AS s ON up.cancoes_id = s.cancoes_id
GROUP BY up.usuario_id ORDER BY us.usuario;
