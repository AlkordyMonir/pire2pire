
### Dictionnaire de Données 
| Nom de la donnée          | Description                              | Type       | Contraintes          |
|---------------------------|------------------------------------------|------------|----------------------|
| numero_module             | Numéro du module (Semantic Versionning)  | VARCHAR(20)| PRIMARY KEY          |
| intitule                  | Intitulé du module                       | VARCHAR(255)| NOT NULL             |
| objectif_pedagogique      | Objectif pédagogique du module           | TEXT       | NOT NULL             |
| contenu                   | Contenu du module                        | TEXT       |                      |
| duree                     | Durée du module en heures                | INTEGER    |                      |
| tags                      | Tags associés au module                  | VARCHAR(255)|                      |
| auteur_id                 | ID de l'auteur du module                 | INTEGER    | FOREIGN KEY          |
| formation_id              | ID de la formation                       | INTEGER    | FOREIGN KEY          |
| apprenant_id              | ID de l'apprenant                        | INTEGER    | FOREIGN KEY          |
| etat_fin_module           | État de fin du module (OK / KO)          | VARCHAR(2) |                      |
| code_formateur            | Code du formateur                        | INTEGER    | PRIMARY KEY          |
| nom_formateur             | Nom du formateur                         | VARCHAR(255)| NOT NULL             |
| prenom_formateur          | Prénom du formateur                      | VARCHAR(255)| NOT NULL             |
| numero_inscription        | Numéro d'inscription de l'apprenant      | INTEGER    | PRIMARY KEY          |
| nom_apprenant             | Nom de l'apprenant                       | VARCHAR(255)| NOT NULL             |
| prenom_apprenant          | Prénom de l'apprenant                    | VARCHAR(255)| NOT NULL             |
| adresse_apprenant         | Adresse de l'apprenant                   | VARCHAR(255)| NOT NULL             |
| date_naissance_apprenant  | Date de naissance de l'apprenant         | DATE       | NOT NULL             |
| id_tag                    | ID du tag                                | INTEGER    | PRIMARY KEY          |
| nom_tag                   | Nom du tag                               | VARCHAR(50) | NOT NULL             |
| id_contenu                | ID du contenu                            | INTEGER    | PRIMARY KEY          |
| type_contenu              | Type de contenu (texte, image, vidéo)    | VARCHAR(50)| CHECK (type IN ('texte', 'image', 'vidéo')) NOT NULL |
| data_contenu              | Données de contenu                       | TEXT       | NOT NULL             |
