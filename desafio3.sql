SELECT user.user_name AS usuario,
COUNT(hist.user_id) AS qt_de_musicas_ouvidas,
ROUND(SUM(song.endurance / 60), 2) AS total_minutos
FROM SpotifyClone.users AS user
INNER JOIN SpotifyClone.historic AS hist
ON user.user_id = hist.user_id
INNER JOIN SpotifyClone.songs AS song
ON song.song_id = hist.song_id
GROUP BY user.user_name
ORDER BY user_name;