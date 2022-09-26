SELECT COUNT(s.cancoes) AS `cancoes`,
  (SELECT COUNT(performer.artista) FROM SpotifyClone.performer) AS `artistas`,
	(SELECT COUNT(musical_styles.album) FROM SpotifyClone.musical_styles) AS `albuns`
FROM SpotifyClone.songs AS s;
