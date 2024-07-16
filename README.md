# pire2pire
### Définition de l'acronyme MERISE

**MERISE** (MÉthode de Rationnalisation des Idées Simples Élaborées) est une méthode d'analyse, de conception et de gestion des projets informatiques et des systèmes d'information. Elle est utilisée pour structurer la conception de bases de données et d'applications en se basant sur une séparation claire des différents niveaux d'abstraction : le niveau conceptuel, le niveau logique et le niveau physique.

- **Niveau conceptuel** : Représente les données et les traitements de manière indépendante des contraintes techniques. 
- **Niveau logique** : Traduit le modèle conceptuel en un modèle logique adapté au SGBD choisi.
- **Niveau physique** : Décrit les implémentations techniques spécifiques dans la base de données.

La méthode MERISE permet de structurer et de formaliser le processus de développement, améliorant ainsi la communication entre les différents intervenants du projet et la qualité des systèmes d'information.
![image](https://github.com/AlkordyMonir/pire2pire/assets/129857970/bb20e0c9-61df-42e9-9715-2c5e67c101b8)
## MCD
![image](https://github.com/AlkordyMonir/pire2pire/assets/129857970/7a52ebc5-e34b-4c43-8676-311cd329ce97)

## MLD

![image](https://github.com/AlkordyMonir/pire2pire/assets/129857970/144cfd0d-027d-4119-8d3b-64c4f0ac1372)

## MPD
![image](https://github.com/AlkordyMonir/pire2pire/assets/129857970/2bcd581b-fd9a-4bf2-90ef-e3ae452637fa)


### Règles de Gestion (RG) 

#### Modules
1. **RG1** : Chaque module est identifié par un numéro unique sous forme de Semantic Versioning (par exemple, 1.0.0, 1.0.1).
2. **RG2** : Un module comprend un intitulé qui décrit brièvement le sujet du module.
3. **RG3** : Chaque module a un objectif pédagogique définissant ce que l'apprenant devrait savoir ou être capable de faire après avoir complété le module.
4. **RG4** : Le contenu d'un module peut inclure du texte, des images et des vidéos, et il doit être possible de n'inclure qu'un ou deux de ces éléments.
5. **RG5** : La durée de chaque module est exprimée en heures et reflète le temps estimé nécessaire pour compléter le module.
6. **RG6** : Chaque module peut être associé à un ou plusieurs tags pour faciliter la recherche et le classement.
7. **RG7** : Chaque module a un auteur identifié par un identifiant unique ( id Formateur).

#### Formations
8. **RG8** : Une formation est identifiée par un identifiant unique.
9. **RG9** : Une formation comprend un titre descriptif.
10. **RG10** : Une formation est composée d'un ou plusieurs modules, chaque module pouvant appartenir à plusieurs formations.
11. **RG11** : Une formation est considérée comme terminée lorsque tous les modules qui la composent sont validés par l'apprenant.

#### Apprenants
12. **RG12** : Chaque apprenant est identifié par un numéro d'inscription unique.
13. **RG13** : Les informations personnelles de chaque apprenant comprennent le nom, le prénom, l'adresse, et la date de naissance.
14. **RG14** : Les apprenants peuvent s'inscrire à une ou plusieurs formations.
15. **RG15** : Les apprenants peuvent valider les modules individuellement, indépendamment de leur progression dans la formation.
16. **RG16** : Chaque apprenant reçoit une évaluation pour chaque module complété, indiquée par un état de fin de module (OK pour validé, KO pour non validé).
17. **RG17** : L'état de fin de module est déterminé par les critères d'évaluation spécifiques à chaque module.

#### Formateurs
18. **RG18** : Chaque formateur est identifié par un code unique.
19. **RG19** : Les informations personnelles de chaque formateur comprennent le nom et le prénom.
20. **RG20** : Un formateur peut être l'auteur de plusieurs modules, mais un module n'a qu'un seul auteur.
21. **RG21** : Le rôle du formateur inclut la création, la mise à jour et la gestion du contenu des modules qu'il a créés.

#### Inscription et Suivi
22. **RG22** : Les inscriptions des apprenants aux formations sont enregistrées, incluant la date d'inscription.
23. **RG23** : L'historique des modules validés par chaque apprenant est conservé pour permettre le suivi de la progression.
24. **RG24** : Les apprenants peuvent à tout moment consulter leur progression dans une formation et les modules restants à valider.
25. **RG25** : Les formateurs peuvent consulter les statistiques de validation des modules qu'ils ont créés, incluant le nombre d'apprenants inscrits, le taux de validation, et les évaluations des apprenants.

### Scénarios d'utilisation
1. **Validation de module** :
   - Un apprenant consulte les modules d'une formation.
   - L'apprenant choisit un module à valider.
   - L'apprenant clique sur un bouton pour valider le module.
   - Le système enregistre l'état de fin de module comme "OK" pour cet apprenant.

2. **Inscription à une formation** :
   - Un apprenant consulte la liste des formations disponibles.
   - L'apprenant sélectionne une formation.
   - L'apprenant clique sur un bouton pour s'inscrire à la formation.
   - Le système enregistre l'inscription de l'apprenant à cette formation.

3. **Ajout d'un module par un formateur** :
   - Un formateur se connecte à la plateforme.
   - Le formateur crée un nouveau module en renseignant les informations nécessaires (intitulé, objectif pédagogique, contenu, durée, tags).
   - Le formateur associe le module à une ou plusieurs formations.
   - Le système enregistre le nouveau module et l'associe aux formations sélectionnées.
## MCD
![MCD_DoOver (1)](https://github.com/user-attachments/assets/854ec5f3-32da-45d4-adbc-1fbb2bf0296c)


## MLD

![MLD_DoOver (1)](https://github.com/user-attachments/assets/b5a8f7c7-c199-471d-be23-57faeb67e244)


## UML
![UML_DoOver (1)](https://github.com/user-attachments/assets/e3998a11-40f4-4c77-a1a7-1b5e449d082c)


# Dictionnaire de Données #

### 1. Modules

| **Attribut**                | **Type de Données**      | **Description**                                                                              | **RGs**  |
|-----------------------------|--------------------------|----------------------------------------------------------------------------------------------|----------|
| NumModule                   | Chaîne de caractères     | Identifiant unique sous forme de versionnement sémantique (ex. 1.0.0, 1.0.1)                 | RG1      |
| IntituleModule              | Chaîne de caractères     | Description brève du sujet du module                                                         | RG2      |
| ObjectifPedagogique         | Texte                    | Objectifs que l'apprenant doit atteindre après avoir complété le module                      | RG3      |
| Contenu                     | Texte / Image / Vidéo    | Contenu pouvant inclure du texte, des images, et des vidéos                                   | RG4      |
| DureeModule                 | Entier (heures)          | Temps estimé nécessaire pour compléter le module                                             | RG5      |
| Tags                        | Chaîne de caractères     | Tags pour faciliter la recherche et le classement                                            | RG6      |
| AuteurID                    | Référence aux Formateurs | Identifiant unique de l'auteur du module                                                     | RG7      |

### 2. Formations

| **Attribut**                | **Type de Données**      | **Description**                                                                              | **RGs**  |
|-----------------------------|--------------------------|----------------------------------------------------------------------------------------------|----------|
| FormationID                 | Chaîne de caractères     | Identifiant unique de la formation                                                            | RG8      |
| TitreFormation              | Chaîne de caractères     | Titre descriptif de la formation                                                              | RG9      |
| ModulesFormation            | Liste de références      | Liste des modules composant la formation                                                      | RG10     |
| EtatCompletion              | Booléen                  | Indicateur de complétion de la formation par l'apprenant                                      | RG11     |

### 3. Apprenants

| **Attribut**                | **Type de Données**      | **Description**                                                                              | **RGs**  |
|-----------------------------|--------------------------|----------------------------------------------------------------------------------------------|----------|
| NumInscription              | Chaîne de caractères     | Numéro d'inscription unique de l'apprenant                                                   | RG12     |
| InfosPersonnelles           | Objet (Nom, Prénom, Adresse, Date de Naissance) | Informations personnelles de l'apprenant                                      | RG13     |
| FormationsInscrites         | Liste de références      | Formations auxquelles l'apprenant est inscrit                                                | RG14     |
| ModulesValides              | Liste de références      | Modules validés par l'apprenant                                                              | RG15     |
| EtatFinModule               | Enumération (OK, KO)     | État d'évaluation de chaque module complété                                                  | RG16, RG17|

### 4. Formateurs

| **Attribut**                | **Type de Données**      | **Description**                                                                              | **RGs**  |
|-----------------------------|--------------------------|----------------------------------------------------------------------------------------------|----------|
| FormateurID                 | Chaîne de caractères     | Identifiant unique du formateur                                                              | RG18     |
| InfosPersonnelles           | Objet (Nom, Prénom)      | Informations personnelles du formateur                                                       | RG19     |
| ModulesCrees                | Liste de références      | Modules créés par le formateur                                                               | RG20     |
| RoleFormateur               | Texte                    | Rôle incluant la création, la mise à jour, et la gestion du contenu des modules qu'il a créés | RG21     |

### 5. Inscription et Suivi

| **Attribut**                | **Type de Données**      | **Description**                                                                              | **RGs**  |
|-----------------------------|--------------------------|----------------------------------------------------------------------------------------------|----------|
| Inscriptions                | Objet (ApprenantID, FormationID, DateInscription) | Enregistrements des inscriptions des apprenants aux formations              | RG22     |
| HistoriqueModules           | Objet (ApprenantID, ModuleID, DateValidation)  | Historique des modules validés par chaque apprenant                                         | RG23     |
| ProgressionApprenants       | Objet (ApprenantID, FormationID, ModulesRestants) | Suivi de la progression de chaque apprenant dans les formations                            | RG24     |
| StatsValidationModules      | Objet (FormateurID, ModuleID, NombreInscrits, Taux de Validation, Evaluations Apprenants) | Statistiques de validation des modules créés par les formateurs                            | RG25     |

```SQL

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
```
