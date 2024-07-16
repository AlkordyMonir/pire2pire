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

