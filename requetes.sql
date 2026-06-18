-- ========REQUÊTES SQL========

-- Voir toutes les tables
SELECT * FROM patients;
SELECT * FROM medecins;
SELECT * FROM chambres;
SELECT * FROM dossiers;
SELECT * FROM medicaments;
SELECT * FROM ordonnances;
SELECT * FROM consultations;

-- Patients et leur dossier médical
SELECT patients.nom,
       patients.prenom,
       dossiers.groupe_sanguin,
       dossiers.allergies,
       dossiers.antecedents
FROM patients
INNER JOIN dossiers ON dossiers.patient_id = patients.id;

-- Nombre de consultations par médecin
SELECT medecin_id, COUNT(*) AS nombre_consultations
FROM consultations
GROUP BY medecin_id;

-- Prix moyen des médicaments
SELECT AVG(prix) AS prix_moyen
FROM medicaments;

-- Patients encore hospitalisés
SELECT patients.nom,
       patients.prenom,
       COUNT(*) AS nombre_hospitalisations
FROM hospitalisations
INNER JOIN patients ON patients.id = hospitalisations.patient_id
WHERE hospitalisations.date_sortie IS NULL
GROUP BY patients.nom, patients.prenom;