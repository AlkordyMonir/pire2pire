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

-- Insertion de données d'exemple
INSERT INTO Formateur (nom, prenom) VALUES ('Doe', 'John');
INSERT INTO Formation (intitule) VALUES ('Frontend Javascript');
INSERT INTO Module (numero_module, intitule, objectif_pedagogique, duree, auteur_id) VALUES 
('1.0.0', 'Commandes de base Git', 'Apprendre les commandes de base de Git', 10, 1);
INSERT INTO Tag (nom) VALUES ('Git'), ('Version Control');
INSERT INTO ModuleTag (module_id, tag_id) VALUES ('1.0.0', 1), ('1.0.0', 2);
INSERT INTO ModuleFormation (module_id, formation_id, formateur_id) VALUES ('1.0.0', 1, 1);
INSERT INTO Apprenant (nom, prenom, adresse, date_naissance) VALUES ('Smith', 'Jane', '123 Main St', '1990-01-01');
INSERT INTO Inscription (apprenant_id, formation_id) VALUES (1, 1);
INSERT INTO Validation (apprenant_id, module_id, etat_fin_module) VALUES (1, '1.0.0', 'OK');
INSERT INTO Contenu (type, data, module_id) VALUES 
('texte', 'Ceci est un contenu textuel pour le module 1.0.0', '1.0.0'),
('image', 'URL de l\'image pour le module 1.0.0', '1.0.0'),
('vidéo', 'URL de la vidéo pour le module 1.0.0', '1.0.0');

