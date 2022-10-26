SELECT song.song_title AS cancao,
COUNT(hist.reproduction_date) AS reproducoes
FROM SpotifyClone.songs AS song
INNER JOIN SpotifyClone.historic AS hist
ON song.song_id = hist.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;