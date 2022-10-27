SELECT song_title AS nome_musica,
CASE song_title
WHEN 'The Bard’s Song' THEN REPLACE('The Bard’s Song', 'Bard', 'QA')
WHEN 'O Medo de Amar é o Medo de Ser Livre' THEN REPLACE('O Medo de Amar é o Medo de Ser Livre', 'Amar', 'Code Review')
WHEN 'Como Nossos Pais' THEN REPLACE('Como Nossos Pais', 'Pais', 'Pull Requests')
WHEN 'BREAK MY SOUL' THEN REPLACE('BREAK MY SOUL', 'SOUL', 'CODE')
WHEN 'ALIEN SUPERSTAR' THEN REPLACE('ALIEN SUPERSTAR', 'SUPERSTAR', 'SUPERDEV')
END AS novo_nome
FROM SpotifyClone.songs
WHERE song_title IN('The Bard’s Song', 'O Medo de Amar é o Medo de Ser Livre', 'Como Nossos Pais', 'BREAK MY SOUL', 'ALIEN SUPERSTAR')
ORDER BY novo_nome DESC;