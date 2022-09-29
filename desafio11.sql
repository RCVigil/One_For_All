SELECT s.cancoes AS nome_musica,
CASE
  WHEN s.cancoes LIKE '%Bard%' THEN 
    REPLACE(s.cancoes, 'Bard', 'QA')
  WHEN s.cancoes LIKE '%Amar%' THEN 
    REPLACE(s.cancoes, 'Amar', 'Code Review')
  WHEN s.cancoes LIKE '%Pais' THEN 
    REPLACE(s.cancoes, 'Pais', 'Pull Requests')
  WHEN s.cancoes LIKE '%SOUL' THEN 
    REPLACE(s.cancoes, 'SOUL', 'CODE')
  WHEN s.cancoes LIKE '%SUPERSTAR' THEN 
    REPLACE(s.cancoes, 'SUPERSTAR', 'SUPERDEV')
END AS novo_nome
FROM SpotifyClone.songs AS s
HAVING novo_nome IS NOT NULL
ORDER BY nome_musica DESC;
