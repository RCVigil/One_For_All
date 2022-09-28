SELECT p.artista AS artista,
  ms.album AS album,
  COUNT(uf.artista_id) AS seguidores
FROM SpotifyClone.musical_styles AS ms
INNER JOIN SpotifyClone.performer AS p
ON p.artista_id = ms.artista_id
INNER JOIN SpotifyClone.user_following AS uf
ON uf.artista_id = p.artista_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;
