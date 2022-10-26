SELECT artist.artist_name AS artista,
a.album_title AS album
FROM SpotifyClone.artists AS artist
INNER JOIN SpotifyClone.albums AS a
ON artist.artist_id = a.artist_id
WHERE artist.artist_name = 'Elis Regina';