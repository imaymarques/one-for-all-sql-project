SELECT Count(*) AS cancoes,
(
	SELECT Count(*) FROM SpotifyClone.artists
) AS artistas,
(
	SELECT Count(*) FROM SpotifyClone.albums
) AS albuns
FROM SpotifyClone.songs