--q1
SELECT nom, email FROM clients;

--q2
SELECT * FROM produits WHERE categorie = 'Electronique';

--q3
SELECT * FROM produits WHERE prix > 50;

--q4
SELECT * FROM produits ORDER BY prix DESC LIMIT 5;

--q5
SELECT * FROM clients WHERE ville = 'Paris' OR ville = 'Lyon';

--q6
SELECT * FROM commandes WHERE statut = 'livre' OR statut = 'expedie';

--q7
SELECT * FROM produits WHERE nom ILIKE 'cable';

--q8
SELECT * FROM clients WHERE ville IS NULL;

--q9
SELECT * FROM produits WHERE prix BETWEEN 20 AND 100 ORDER BY prix ASC;

--q10
SELECT DISTINCT categorie FROM produits;

--q11
SELECT * FROM commandes WHERE date_commande BETWEEN '2023-01-01' AND '2023-12-30';

--q12
SELECT nom, prix * 1.20 AS prix_ttc FROM produits;

--q13
SELECT * FROM produits ORDER BY stock ASC LIMIT 3;

--q14
SELECT * FROM clients WHERE date_inscription > '2022-01-01';

--q15
SELECT * FROM commandes WHERE total > 200 and statut = 'livre';