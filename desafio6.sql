SELECT MIN(plan.amount) AS 'faturamento_minimo',
MAX(plan.amount) AS 'faturamento_maximo',
ROUND(AVG(plan.amount), 2) AS 'faturamento_medio',
SUM(plan.amount) AS 'faturamento_total'
FROM SpotifyClone.plans AS plan
INNER JOIN SpotifyClone.users AS user
ON plan.plan_id = user.plan_id;