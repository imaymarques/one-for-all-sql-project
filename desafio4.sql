SELECT user.user_name AS usuario,
IF (MAX(YEAR(hr.reproduction_date)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.users AS user
INNER JOIN SpotifyClone.historic as hr
ON user.user_id = hr.user_id
GROUP BY user.user_name
ORDER BY user.user_name;