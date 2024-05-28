CREATE TABLE Apprenant (
    numero_inscription SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    adresse VARCHAR(255) NOT NULL,
    date_naissance DATE NOT NULL
);

CREATE TABLE Formateur (
    code SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL
);

CREATE TABLE Module (
    numero_module VARCHAR(20) PRIMARY KEY,
    intitule VARCHAR(255) NOT NULL,
    objectif_pedagogique TEXT NOT NULL,
    contenu TEXT,
    duree INTEGER,
    tags VARCHAR(255),
    auteur_id INTEGER REFERENCES Formateur(code),
    formation_id INTEGER REFERENCES Formation(id)
);

CREATE TABLE Formation (
    id SERIAL PRIMARY KEY,
    intitule VARCHAR(255) NOT NULL
);

CREATE TABLE Inscription (
    apprenant_id INTEGER REFERENCES Apprenant(numero_inscription),
    formation_id INTEGER REFERENCES Formation(id),
    PRIMARY KEY (apprenant_id, formation_id)
);

CREATE TABLE Validation (
    apprenant_id INTEGER REFERENCES Apprenant(numero_inscription),
    module_id VARCHAR(20) REFERENCES Module(numero_module),
    etat_fin_module VARCHAR(2),
    PRIMARY KEY (apprenant_id, module_id)
);
