CREATE TABLE _Module(
   NumModule_ COUNTER,
   IntituleModule_ VARCHAR(50),
   ObjectifPedagogique_ VARCHAR(50),
   DureeModule_ INT,
   PRIMARY KEY(NumModule_)
);

CREATE TABLE Formation(
   FormationID_ COUNTER,
   intutule VARCHAR(50),
   PRIMARY KEY(FormationID_)
);

CREATE TABLE Formateur(
   code COUNTER,
   Nom_ VARCHAR(50),
   Prenom_ VARCHAR(50),
   PRIMARY KEY(code)
);

CREATE TABLE Tags_(
   Id_Tags_ COUNTER,
   PRIMARY KEY(Id_Tags_)
);

CREATE TABLE Contenu_(
   Id_Contenu_ COUNTER,
   type VARCHAR(50),
   data VARCHAR(50),
   NumModule_ INT NOT NULL,
   PRIMARY KEY(Id_Contenu_),
   FOREIGN KEY(NumModule_) REFERENCES _Module(NumModule_)
);

CREATE TABLE ville(
   code_postale COUNTER,
   nom_ville VARCHAR(50),
   PRIMARY KEY(code_postale)
);

CREATE TABLE Adresse(
   Id_Adresse_ COUNTER,
   rue VARCHAR(50),
   numéro INT,
   code_postale INT NOT NULL,
   PRIMARY KEY(Id_Adresse_),
   FOREIGN KEY(code_postale) REFERENCES ville(code_postale)
);

CREATE TABLE Apprenant(
   NumInscription_ COUNTER,
   Nom_ VARCHAR(50),
   Prenom_ VARCHAR(50),
   DateNaissance_ DATE,
   Id_Adresse_ INT NOT NULL,
   PRIMARY KEY(NumInscription_),
   UNIQUE(Id_Adresse_),
   FOREIGN KEY(Id_Adresse_) REFERENCES Adresse(Id_Adresse_)
);

CREATE TABLE tagger(
   NumModule_ INT,
   Id_Tags_ INT,
   PRIMARY KEY(NumModule_, Id_Tags_),
   FOREIGN KEY(NumModule_) REFERENCES _Module(NumModule_),
   FOREIGN KEY(Id_Tags_) REFERENCES Tags_(Id_Tags_)
);

CREATE TABLE ModuleFormation(
   NumModule_ INT,
   FormationID_ INT,
   code INT,
   PRIMARY KEY(NumModule_, FormationID_, code),
   FOREIGN KEY(NumModule_) REFERENCES _Module(NumModule_),
   FOREIGN KEY(FormationID_) REFERENCES Formation(FormationID_),
   FOREIGN KEY(code) REFERENCES Formateur(code)
);

CREATE TABLE Inscription(
   FormationID_ INT,
   NumInscription_ INT,
   DateInscription_ DATE,
   PRIMARY KEY(FormationID_, NumInscription_),
   FOREIGN KEY(FormationID_) REFERENCES Formation(FormationID_),
   FOREIGN KEY(NumInscription_) REFERENCES Apprenant(NumInscription_)
);

CREATE TABLE Validation(
   NumModule_ INT,
   NumInscription_ INT,
   état VARCHAR(50),
   PRIMARY KEY(NumModule_, NumInscription_),
   FOREIGN KEY(NumModule_) REFERENCES _Module(NumModule_),
   FOREIGN KEY(NumInscription_) REFERENCES Apprenant(NumInscription_)
);
