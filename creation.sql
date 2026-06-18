-- =========== CRÉATION DES TABLES ===========


-- TABLE PATIENTS
create table patients(
    id             serial primary key,
    nom            varchar(100) not null,
    prenom         varchar(100) not null,
    sexe           varchar(10) check(sexe in ('Homme', 'Femme')),
    telephone      varchar(20),
    email          varchar(150) unique,
    adresse        text,
    created_at     timestamp default now()
);


-- TABLE MEDECINS
create table medecins(
    id             serial primary key,
    nom            varchar(100) not null,
    prenom         varchar(100) not null,
    specialite     varchar(100) not null,
    telephone      varchar(20),
    email          varchar(150) unique,
    created_at     timestamp default now()
);


-- TABLE CHAMBRES
create table chambres(
    id             serial primary key,
    numero         varchar(10) unique not null,
    type           varchar(50) check(type in ('Simple', 'Double', 'VIP', 'Urgence', 'Réanimation')),
    disponibilite  boolean default true
);


-- TABLE DOSSIERS MEDICAUX
create table dossiers(
    id             serial primary key,
    patient_id     int references patients(id) on delete cascade,
    groupe_sanguin varchar(5) check(groupe_sanguin in ('A+','A-','B+','B-','AB+','AB-','O+','O-')),
    allergies      text,
    antecedents    text,
    created_at     timestamp default now()
);


-- TABLE CONSULTATIONS
create table consultations(
    id             serial primary key,
    patient_id     int references patients(id) on delete cascade,
    medecin_id     int references medecins(id) on delete set null,
    date_consult   date not null,
    diagnostic     text,
    remarques      text,
    created_at     timestamp default now()
);


-- TABLE MEDICAMENTS
create table medicaments(
    id             serial primary key,
    nom            varchar(200) not null,
    description    text,
    prix           decimal(10,2) default 0
);


-- TABLE ORDONNANCES
create table ordonnances(
    id               serial primary key,
    consultation_id  int references consultations(id) on delete cascade,
    medicament_id    int references medicaments(id)   on delete set null,
    dosage           varchar(100),
    duree            varchar(100),
    created_at       timestamp default now()
);


-- TABLE HOSPITALISATIONS
create table hospitalisations(
    id             serial primary key,
    patient_id     int references patients(id) on delete cascade,
    chambre_id     int references chambres(id) on delete set null,
    date_entree    date not null,
    date_sortie    date,
    motif          text
);