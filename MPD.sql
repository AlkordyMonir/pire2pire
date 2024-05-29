-- Script SQL pour la création des tables de la base de données pire2pire.com

-- Table Apprenant
CREATE TABLE Apprenant (
    numero_inscription SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL,
    adresse VARCHAR(255) NOT NULL,
    date_naissance DATE NOT NULL
);

-- Table Formateur
CREATE TABLE Formateur (
    code SERIAL PRIMARY KEY,
    nom VARCHAR(255) NOT NULL,
    prenom VARCHAR(255) NOT NULL
);

-- Table Formation
CREATE TABLE Formation (
    id SERIAL PRIMARY KEY,
    intitule VARCHAR(255) NOT NULL
);

-- Table Module
CREATE TABLE Module (
    numero_module VARCHAR(20) PRIMARY KEY, -- Utiliser Semantic Versioning (par exemple: '1.0.0')
    intitule VARCHAR(255) NOT NULL,
    objectif_pedagogique TEXT NOT NULL,
    duree INTEGER,
    auteur_id INTEGER REFERENCES Formateur(code)
);

-- Table Tag
CREATE TABLE Tag (
    id SERIAL PRIMARY KEY,
    nom VARCHAR(50) NOT NULL
);

-- Table ModuleTag pour gérer les tags de chaque module
CREATE TABLE ModuleTag (
    module_id VARCHAR(20) REFERENCES Module(numero_module),
    tag_id INTEGER REFERENCES Tag(id),
    PRIMARY KEY (module_id, tag_id)
);

-- Table Contenu
CREATE TABLE Contenu (
    id SERIAL PRIMARY KEY,
    type VARCHAR(50) CHECK (type IN ('texte', 'image', 'vidéo')) NOT NULL,
    data TEXT NOT NULL,
    module_id VARCHAR(20) REFERENCES Module(numero_module)
);

-- Table ModuleFormation pour gérer la relation entre Module, Formation et Formateur
CREATE TABLE ModuleFormation (
    module_id VARCHAR(20) REFERENCES Module(numero_module),
    formation_id INTEGER REFERENCES Formation(id),
    formateur_id INTEGER REFERENCES Formateur(code),
    PRIMARY KEY (module_id, formation_id, formateur_id)
);

-- Table Inscription pour gérer la relation entre Apprenant et Formation
CREATE TABLE Inscription (
    apprenant_id INTEGER REFERENCES Apprenant(numero_inscription),
    formation_id INTEGER REFERENCES Formation(id),
    PRIMARY KEY (apprenant_id, formation_id)
);

-- Table Validation pour gérer l'état de fin de module des apprenants
CREATE TABLE Validation (
    apprenant_id INTEGER REFERENCES Apprenant(numero_inscription),
    module_id VARCHAR(20) REFERENCES Module(numero_module),
    etat_fin_module VARCHAR(2) CHECK (etat_fin_module IN ('OK', 'KO')),
    PRIMARY KEY (apprenant_id, module_id)
);


