SELECT COUNT(historic.song_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.users AS user
INNER JOIN SpotifyClone.historic AS historic
ON user.user_id = historic.user_id
WHERE user_name = 'Barbara Liskov'
GROUP BY user.user_id;