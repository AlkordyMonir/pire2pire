### Dictionnaire de Données
| Nom de la donnée          | Description                              | Type       | Contraintes          |
|---------------------------|------------------------------------------|------------|----------------------|
| numero_module             | Numéro du module (Semantic Versionning)  | VARCHAR    | PRIMARY KEY          |
| intitule                  | Intitulé du module                       | VARCHAR    | NOT NULL             |
| objectif_pedagogique      | Objectif pédagogique du module           | TEXT       | NOT NULL             |
| contenu                   | Contenu du module                        | TEXT       |                      |
| duree                     | Durée du module en heures                | INTEGER    |                      |
| tags                      | Tags associés au module                  | VARCHAR    |                      |
| auteur_id                 | ID de l'auteur du module                 | INTEGER    | FOREIGN KEY          |
| formation_id              | ID de la formation                       | INTEGER    | FOREIGN KEY          |
| apprenant_id              | ID de l'apprenant                        | INTEGER    | FOREIGN KEY          |
| etat_fin_module           | État de fin du module (OK / KO)          | VARCHAR    |                      |
| code_formateur            | Code du formateur                        | INTEGER    | PRIMARY KEY          |
| nom_formateur             | Nom du formateur                         | VARCHAR    | NOT NULL             |
| prenom_formateur          | Prénom du formateur                      | VARCHAR    | NOT NULL             |
| numero_inscription        | Numéro d'inscription de l'apprenant      | INTEGER    | PRIMARY KEY          |
| nom_apprenant             | Nom de l'apprenant                       | VARCHAR    | NOT NULL             |
| prenom_apprenant          | Prénom de l'apprenant                    | VARCHAR    | NOT NULL             |
| adresse_apprenant         | Adresse de l'apprenant                   | VARCHAR    | NOT NULL             |
| date_naissance_apprenant  | Date de naissance de l'apprenant         | DATE       | NOT NULL             |
