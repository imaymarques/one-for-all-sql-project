SELECT art.artist_name AS 'artista',
alb.album_title AS 'album',
COUNT(user_id) AS 'seguidores'
FROM SpotifyClone.artists AS art
INNER JOIN SpotifyClone.albums AS alb
ON art.artist_id = alb.artist_id
INNER JOIN SpotifyClone.following_artists AS follow
ON art.artist_id = follow.artist_id
GROUP BY art.artist_name, alb.album_title
ORDER BY seguidores DESC, artista ASC, album ASC;