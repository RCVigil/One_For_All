SELECT s.cancoes AS cancao,
  COUNT(up.cancoes_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.user_performer AS up
ON s.cancoes_id = up.cancoes_id
GROUP BY s.cancoes
ORDER BY COUNT(up.cancoes_id) DESC, s.cancoes ASC
LIMIT 2;
