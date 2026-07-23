--q16
SELECT COUNT(total) FROM commandes;
--q17
SELECT AVG(prix) FROM produits;
--q18
SELECT MIN(prix), MAX(prix) FROM produits;
--q19
SELECT SUM(total) FROM commandes;
--q20
SELECT categorie, COUNT(*) FROM produits GROUP BY categorie;
--q21
SELECT statut, SUM(total) FROM commandes GROUP BY statut;
--q22
SELECT DATE_TRUNC('month', date_commande), AVG(total) FROM commandes GROUP BY 1 ORDER BY 1;
--q23
SELECT * FROM produits WHERE prix >= 50;
--q24
SELECT client_id, COUNT(*) FROM commandes GROUP BY client_id ORDER BY 1;
--q25
SELECT client_id, COUNT(*) FROM commandes GROUP BY client_id HAVING COUNT(*) >= 3 ORDER BY 1;
--q26
SELECT SUM(total) FROM commandes GROUP BY date_trunc('month', date_commande) ORDER BY date_trunc('month', date_commande);
--q27
SELECT categorie, COUNT(*) FROM produits WHERE stock > 0 GROUP BY categorie HAVING COUNT(*) > 0 LIMIT 3;
--q28
SELECT categorie, SUM(prix * stock) FROM produits GROUP BY categorie;
--q29
SELECT pays, COUNT(*) FROM clients GROUP BY pays HAVING COUNT(*) > 10;
--q30
SELECT DATE_TRUNC('month', date_commande), COUNT(*) FROM commandes GROUP BY DATE_TRUNC('month', date_commande) ORDER BY COUNT(*) DESC LIMIT 1;