SELECT p.artista AS artista,
  ms.album AS album
FROM SpotifyClone.musical_styles AS ms
INNER JOIN SpotifyClone.performer AS p
ON p.artista_id = ms.artista_id
WHERE artista LIKE 'E___%'
GROUP BY album, artista
ORDER BY album;
