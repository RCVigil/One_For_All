SELECT ROUND(MIN(b.valor_plano), 2) AS faturamento_minimo,
  ROUND(MAX(b.valor_plano), 2) AS faturamento_maximo,
  ROUND(AVG(b.valor_plano), 2) AS faturamento_medio,
  ROUND(SUM(b.valor_plano), 2) AS faturamento_total 
FROM SpotifyClone.business AS b
INNER JOIN SpotifyClone.user AS us
ON b.business_id = us.business_id
