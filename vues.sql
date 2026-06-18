

-- ====-- ================================================
-- FICHIER : 05_vues.sql
-- ================================================


-- ================================================
-- VUE 1 : Toutes les données des patients
-- ================================================
CREATE VIEW vue_tous_les_patients AS
SELECT *
FROM patients;


-- ================================================
-- VUE 2 : Tous les médecins
-- ================================================
CREATE VIEW vue_tous_les_medecins AS
SELECT *
FROM medecins;


-- ================================================
-- VUE 3 : Toutes les chambres
-- ================================================
CREATE VIEW vue_toutes_les_chambres AS
SELECT *
FROM chambres;


-- ================================================
-- VUE 4 : Patients et leur dossier médical complet
-- ================================================
CREATE VIEW vue_patients_dossiers AS
SELECT patients.nom,
       patients.prenom,
       dossiers.groupe_sanguin,
       dossiers.allergies,
       dossiers.antecedents
FROM patients
INNER JOIN dossiers ON dossiers.patient_id = patients.id;


-- ================================================
-- VUE 5 : Nombre de consultations par médecin
-- ================================================
CREATE VIEW vue_consultations_par_medecin AS
SELECT medecins.nom,
       medecins.prenom,
       medecins.specialite,
       COUNT(consultations.id) AS nombre_consultations
FROM medecins
LEFT JOIN consultations ON consultations.medecin_id = medecins.id
GROUP BY medecins.nom,
         medecins.prenom,
         medecins.specialite;


-- ================================================
-- VUE 6 : Prix moyen des médicaments
-- ================================================
CREATE VIEW vue_prix_moyen_medicaments AS
SELECT AVG(prix) AS prix_moyen
FROM medicaments;


-- ================================================
-- VUE 7 : Patients encore hospitalisés
-- ================================================
CREATE VIEW vue_patients_hospitalises AS
SELECT patients.nom,
       patients.prenom,
       chambres.numero        AS chambre,
       chambres.type          AS type_chambre,
       hospitalisations.date_entree,
       hospitalisations.motif
FROM hospitalisations
INNER JOIN patients ON patients.id  = hospitalisations.patient_id
INNER JOIN chambres ON chambres.id  = hospitalisations.chambre_id
WHERE hospitalisations.date_sortie IS NULL;


-- ================================================
-- UTILISER LES VUES
-- ================================================
SELECT * FROM vue_tous_les_patients;
SELECT * FROM vue_tous_les_medecins;
SELECT * FROM vue_toutes_les_chambres;
SELECT * FROM vue_patients_dossiers;
SELECT * FROM vue_consultations_par_medecin;
SELECT * FROM vue_prix_moyen_medicaments;
SELECT * FROM vue_patients_hospitalises;