-- =========INSERTION=============


-- PATIENTS
INSERT INTO patients (nom, prenom, sexe, telephone, adresse)
VALUES
('Ouédraogo',  'Aïcha',    'Femme', '70111111', 'Ouagadougou'),
('Traoré',     'Moussa',   'Homme', '70222222', 'Bobo-Dioulasso'),
('Sawadogo',   'Mariam',   'Femme', '70333333', 'Koudougou'),
('Zongo',      'Issa',     'Homme', '70444444', 'Ouahigouya'),
('Kaboré',     'Fatou',    'Femme', '70555555', 'Fada N''Gourma'),
('Sanou',      'Jean',     'Homme', '70666666', 'Banfora'),
('Diallo',     'Aminata',  'Femme', '70777777', 'Dédougou'),
('Ouattara',   'Ibrahim',  'Homme', '70888888', 'Gaoua'),
('Ilboudo',    'Clarisse', 'Femme', '70999999', 'Kaya'),
('Somé',       'Patrice',  'Homme', '70000000', 'Tenkodogo');


-- MEDECINS
INSERT INTO medecins (nom, prenom, specialite, telephone, email)
VALUES
('Kaboré',   'Paul',    'Cardiologue',  '60111111', 'paul.kabore@hopital.bf'),
('Diallo',   'Mariam',  'Pédiatre',     '60222222', 'mariam.diallo@hopital.bf'),
('Sanou',    'Jean',    'Chirurgien',   '60333333', 'jean.sanou@hopital.bf'),
('Ouattara', 'Fatima',  'Gynécologue',  '60444444', 'fatima.ouattara@hopital.bf'),
('Zongo',    'Idrissa', 'Généraliste',  '60555555', 'idrissa.zongo@hopital.bf');


-- CHAMBRES
INSERT INTO chambres (numero, type, disponibilite)
VALUES
('101', 'Simple',      TRUE),
('102', 'Double',      FALSE),
('103', 'Simple',      TRUE),
('201', 'Double',      TRUE),
('202', 'VIP',         FALSE),
('203', 'Simple',      TRUE),
('301', 'Double',      FALSE),
('302', 'VIP',         TRUE),
('303', 'Simple',      TRUE),
('304', 'Double',      FALSE);


-- DOSSIERS
INSERT INTO dossiers (patient_id, groupe_sanguin, allergies, antecedents)
VALUES
(1,  'A+',  'Aucune',       'Aucun'),
(2,  'O+',  'Pénicilline',  'Asthme'),
(3,  'B+',  'Arachides',    'Diabète'),
(4,  'AB+', 'Aucune',       'Hypertension'),
(5,  'O-',  'Poussière',    'Aucun'),
(6,  'A-',  'Latex',        'Anémie'),
(7,  'B-',  'Aucune',       'Migraine'),
(8,  'AB-', 'Fruits de mer','Aucun'),
(9,  'O+',  'Aucune',       'Ulcère'),
(10, 'A+',  'Ibuprofène',   'Aucun');


-- CONSULTATIONS
INSERT INTO consultations (patient_id, medecin_id, date_consult, diagnostic, remarques)
VALUES
(1,  1, '2026-06-01', 'Paludisme',          'Repos'),
(2,  2, '2026-06-02', 'Grippe',             'Boire beaucoup d''eau'),
(3,  3, '2026-06-03', 'Fracture',           'Radiographie'),
(4,  4, '2026-06-04', 'Grossesse',          'Suivi mensuel'),
(5,  5, '2026-06-05', 'Contrôle général',   'RAS'),
(6,  1, '2026-06-06', 'Hypertension',       'Surveillance'),
(7,  2, '2026-06-07', 'Fièvre',             'Paracétamol'),
(8,  3, '2026-06-08', 'Entorse',            'Repos'),
(9,  4, '2026-06-09', 'Consultation',       'Échographie'),
(10, 5, '2026-06-10', 'Migraine',           'Antalgique'),
(2,  1, '2026-06-11', 'Palpitations',       'ECG'),
(4,  2, '2026-06-12', 'Rhume',              'Traitement'),
(6,  3, '2026-06-13', 'Plaie',              'Pansement'),
(8,  4, '2026-06-14', 'Suivi',              'RAS'),
(10, 5, '2026-06-15', 'Fatigue',            'Vitamines'),
(1,  2, '2026-06-16', 'Toux',               'Antibiotiques'),
(3,  5, '2026-06-17', 'Diabète',            'Contrôle glycémie'),
(5,  1, '2026-06-18', 'Douleur thoracique', 'ECG'),
(7,  3, '2026-06-19', 'Luxation',           'Immobilisation'),
(9,  4, '2026-06-20', 'Contrôle',           'RAS');


-- MEDICAMENTS
INSERT INTO medicaments (nom, description, prix)
VALUES
('Paracétamol',  'Antidouleur',              1000),
('Amoxicilline', 'Antibiotique',             2500),
('Ibuprofène',   'Anti-inflammatoire',       1500),
('Oméprazole',   'Protection gastrique',     3000),
('Vitamine C',   'Complément alimentaire',   1200),
('Metformine',   'Diabète',                  3500),
('Artésunate',   'Antipaludique',            4500),
('Doliprane',    'Antalgique',               1000),
('Sirop Toux',   'Contre la toux',           2000),
('Ventoline',    'Asthme',                   5000);


-- ORDONNANCES
INSERT INTO ordonnances (consultation_id, medicament_id, dosage, duree)
VALUES
(1,  7, '500 mg',                   '5 jours'),
(2,  9, '250 mg',                   '7 jours'),
(3,  3, '1 comprimé matin et soir', '10 jours'),
(4,  5, '10 ml',                    '5 jours'),
(5,  5, '2 comprimés par jour',     '14 jours'),
(6,  1, '500 mg',                   '3 jours'),
(7,  1, '1 comprimé',               '7 jours'),
(8,  3, '20 ml',                    '5 jours'),
(9,  2, '250 mg',                   '10 jours'),
(10, 8, '500 mg',                   '7 jours');