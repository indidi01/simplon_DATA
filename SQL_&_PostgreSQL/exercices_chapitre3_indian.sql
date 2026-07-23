--q31
SELECT commandes.*, clients.nom, clients.email FROM commandes JOIN clients ON clients.client_id = commandes.client_id;
--q32
SELECT lignes_commande.ligne_id, lignes_commande.quantite, produits.nom FROM lignes_commande JOIN produits ON lignes_commande.produit_id = produits.produit_id;
--q33
SELECT clients.client_id, clients.nom, clients.email FROM clients LEFT JOIN commandes ON commandes.client_id = clients.client_id WHERE commandes.commande_id isnull;
--q34
SELECT clients.nom, produits.nom, lignes_commande.quantite, lignes_commande.prix_unitaire, lignes_commande.quantite * lignes_commande.prix_unitaire
FROM commandes
JOIN clients ON clients.client_id = commandes.client_id
JOIN lignes_commande ON lignes_commande.commande_id = commandes.commande_id
JOIN produits ON produits.produit_id = lignes_commande.produit_id
ORDER BY commandes.commande_id;
--q35
SELECT clients.client_id, clients.nom, SUM(commandes.total) FROM clients LEFT JOIN commandes ON clients.client_id = commandes.client_id GROUP BY clients.client_id, clients.nom ORDER BY SUM(commandes.total)DESC;
--q36
SELECT produits.produit_id, produits.nom, COUNT(lignes_commande.ligne_id) FROM produits LEFT JOIN lignes_commande ON lignes_commande.commande_id = produits.produit_id GROUP BY produits.produit_id, produits.nom ORDER BY COUNT(lignes_commande.ligne_id), produits.produit_id;
--q37
SELECT produits.produit_id, produits.nom FROM produits LEFT JOIN lignes_commande ON lignes_commande.produit_id = produits.produit_id WHERE lignes_commande.commande_id IS NULL;
--q38
SELECT produits.categorie as categorie, SUM(lignes_commande.quantite * produits.prix) as CA FROM produits JOIN lignes_commande ON lignes_commande.produit_id = produits.produit_id GROUP BY produits.categorie ORDER BY CA, produits.categorie;
--q39
SELECT clients.client_id, clients.nom, SUM(commandes.total) as ca FROM clients JOIN commandes ON commandes.client_id = clients.client_id GROUP BY clients.client_id, clients.nom ORDER BY ca DESC LIMIT 5;
--q40
SELECT produits.produit_id, produits.nom, SUM(lignes_commande.quantite) as quantite FROM produits JOIN lignes_commande ON lignes_commande.produit_id = produits.produit_id GROUP BY produits.produit_id ORDER BY quantite DESC LIMIT 1;
--q41
SELECT commandes.commande_id, clients.nom, SUM(lignes_commande.quantite) as nb_article, commandes.total
FROM commandes 
JOIN clients ON clients.client_id = commandes.client_id
LEFT JOIN lignes_commande ON lignes_commande.commande_id = commandes.commande_id
GROUP BY commandes.commande_id, clients.nom, commandes.total
ORDER BY commandes.commande_id;
--42
SELECT DISTINCT clients.client_id, clients.nom, clients.email, produits.categorie FROM clients
JOIN commandes ON commandes.client_id = clients.client_id
JOIN lignes_commande ON lignes_commande.commande_id = commandes.commande_id
JOIN produits ON produits.produit_id = lignes_commande.produit_id
WHERE produits.categorie = 'Electronique'
ORDER BY clients.client_id;
--43
SELECT clients.client_id, clients.nom, AVG(commandes.total) FROM clients JOIN commandes ON commandes.client_id = clients.client_id GROUP BY clients.client_id, clients.nom ORDER BY clients.client_id;
--44
SELECT produits.produit_id, produits.nom, produits.categorie, SUM(lignes_commande.quantite) as quantite_total, commandes.date_commande FROM produits
JOIN lignes_commande ON lignes_commande.produit_id = produits.produit_id
JOIN commandes ON commandes.commande_id = lignes_commande.commande_id
WHERE commandes.date_commande >= '2023-01-01' AND commandes.date_commande < '2024-01-01'
GROUP BY produits.produit_id, produits.nom, produits.categorie, commandes.date_commande;
--45
SELECT clients.client_id, clients.nom, SUM(commandes.total) FROM client JOIN commandes ON commandes.client_id = clients.client_id WHERE 