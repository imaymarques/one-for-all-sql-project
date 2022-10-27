SELECT s.song_title AS nome,
COUNT(u.user_id) AS reproducoes
FROM SpotifyClone.historic AS h
INNER JOIN SpotifyClone.users AS u
ON h.user_id = u.user_id
INNER JOIN SpotifyClone.plans AS p
ON u.plan_id = p.plan_id
INNER JOIN SpotifyClone.songs AS s
ON h.song_id = s.song_id
WHERE p.plan_name = 'gratuito' OR p.plan_name = 'pessoal'
GROUP BY s.song_title
ORDER BY nome ASC;