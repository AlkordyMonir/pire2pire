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
