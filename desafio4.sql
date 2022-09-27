SELECT us.usuario AS usuario, 
    IF (YEAR(MAX(up.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario 
FROM SpotifyClone.user_performer AS up
    INNER JOIN SpotifyClone.user AS us ON up.usuario_id = us.usuario_id
    GROUP BY us.usuario
    ORDER BY us.usuario;
