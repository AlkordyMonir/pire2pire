### MLD (Modèle Logique de Données) 

#### Tables et Relations

1. **Apprenant**
   - Attributs :
     - numero_inscription (SERIAL, PK)
     - nom (VARCHAR(255) NOT NULL)
     - prenom (VARCHAR(255) NOT NULL)
     - adresse (VARCHAR(255) NOT NULL)
     - date_naissance (DATE NOT NULL)

2. **Formateur**
   - Attributs :
     - code (SERIAL, PK)
     - nom (VARCHAR(255) NOT NULL)
     - prenom (VARCHAR(255) NOT NULL)

3. **Formation**
   - Attributs :
     - id (SERIAL, PK)
     - intitule (VARCHAR(255) NOT NULL)

4. **Module**
   - Attributs :
     - numero_module (VARCHAR(20), PK) -- Utiliser Semantic Versioning (par exemple: '1.0.0')
     - intitule (VARCHAR(255) NOT NULL)
     - objectif_pedagogique (TEXT NOT NULL)
     - duree (INTEGER)
     - auteur_id (INTEGER, FK) -- Référencé à Formateur(code)

5. **Tag**
   - Attributs :
     - id (SERIAL, PK)
     - nom (VARCHAR(50) NOT NULL)

6. **ModuleTag**
   - Attributs :
     - module_id (VARCHAR(20), FK) -- Référencé à Module(numero_module)
     - tag_id (INTEGER, FK) -- Référencé à Tag(id)
   - Contraintes :
     - PRIMARY KEY (module_id, tag_id)

7. **Contenu**
   - Attributs :
     - id (SERIAL, PK)
     - type (VARCHAR(50) CHECK (type IN ('texte', 'image', 'vidéo')) NOT NULL)
     - data (TEXT NOT NULL)
     - module_id (VARCHAR(20), FK) -- Référencé à Module(numero_module)

8. **ModuleFormation**
   - Attributs :
     - module_id (VARCHAR(20), FK) -- Référencé à Module(numero_module)
     - formation_id (INTEGER, FK) -- Référencé à Formation(id)
     - formateur_id (INTEGER, FK) -- Référencé à Formateur(code)
   - Contraintes :
     - PRIMARY KEY (module_id, formation_id, formateur_id)

9. **Inscription**
   - Attributs :
     - apprenant_id (INTEGER, FK) -- Référencé à Apprenant(numero_inscription)
     - formation_id (INTEGER, FK) -- Référencé à Formation(id)
   - Contraintes :
     - PRIMARY KEY (apprenant_id, formation_id)

10. **Validation**
    - Attributs :
      - apprenant_id (INTEGER, FK) -- Référencé à Apprenant(numero_inscription)
      - module_id (VARCHAR(20), FK) -- Référencé à Module(numero_module)
      - etat_fin_module (VARCHAR(2) CHECK (etat_fin_module IN ('OK', 'KO')))
    - Contraintes :
      - PRIMARY KEY (apprenant_id, module_id)

#### Diagramme MLD

```plaintext
Apprenant
---------
- numero_inscription (PK)
- nom
- prenom
- adresse
- date_naissance

Formateur
---------
- code (PK)
- nom
- prenom

Formation
---------
- id (PK)
- intitule

Module
---------
- numero_module (PK)
- intitule
- objectif_pedagogique
- duree
- auteur_id (FK) -> Formateur(code)

Tag
---------
- id (PK)
- nom

ModuleTag
---------
- module_id (FK) -> Module(numero_module)
- tag_id (FK) -> Tag(id)
- PRIMARY KEY (module_id, tag_id)

Contenu
---------
- id (PK)
- type (texte, image, vidéo)
- data
- module_id (FK) -> Module(numero_module)

ModuleFormation
---------
- module_id (FK) -> Module(numero_module)
- formation_id (FK) -> Formation(id)
- formateur_id (FK) -> Formateur(code)
- PRIMARY KEY (module_id, formation_id, formateur_id)

Inscription
---------
- apprenant_id (FK) -> Apprenant(numero_inscription)
- formation_id (FK) -> Formation(id)
- PRIMARY KEY (apprenant_id, formation_id)

Validation
---------
- apprenant_id (FK) -> Apprenant(numero_inscription)
- module_id (FK) -> Module(numero_module)
- etat_fin_module
- PRIMARY KEY (apprenant_id, module_id)
```
