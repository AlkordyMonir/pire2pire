### MPD (Modèle Physique de Données) Mis à Jour

#### Tables et Relations

1. **Apprenant**
   - numero_inscription (SERIAL, PK)
   - nom (VARCHAR(255) NOT NULL)
   - prenom (VARCHAR(255) NOT NULL)
   - adresse (VARCHAR(255) NOT NULL)
   - date_naissance (DATE NOT NULL)

2. **Formateur**
   - code (SERIAL, PK)
   - nom (VARCHAR(255) NOT NULL)
   - prenom (VARCHAR(255) NOT NULL)

3. **Formation**
   - id (SERIAL, PK)
   - intitule (VARCHAR(255) NOT NULL)

4. **Module**
   - numero_module (VARCHAR(20), PK) -- Utiliser Semantic Versioning (par exemple: '1.0.0')
   - intitule (VARCHAR(255) NOT NULL)
   - objectif_pedagogique (TEXT NOT NULL)
   - duree (INTEGER)
   - auteur_id (INTEGER, FK) -- Référencé à Formateur(code)

5. **Tag**
   - id (SERIAL, PK)
   - nom (VARCHAR(50) NOT NULL)

6. **ModuleTag**
   - module_id (VARCHAR(20), FK) -- Référencé à Module(numero_module)
   - tag_id (INTEGER, FK) -- Référencé à Tag(id)
   - PRIMARY KEY (module_id, tag_id)

7. **Contenu**
   - id (SERIAL, PK)
   - type (VARCHAR(50) CHECK (type IN ('texte', 'image', 'vidéo')) NOT NULL)
   - data (TEXT NOT NULL)
   - module_id (VARCHAR(20), FK) -- Référencé à Module(numero_module)

8. **ModuleFormation**
   - module_id (VARCHAR(20), FK) -- Référencé à Module(numero_module)
   - formation_id (INTEGER, FK) -- Référencé à Formation(id)
   - formateur_id (INTEGER, FK) -- Référencé à Formateur(code)
   - PRIMARY KEY (module_id, formation_id, formateur_id)

9. **Inscription**
   - apprenant_id (INTEGER, FK) -- Référencé à Apprenant(numero_inscription)
   - formation_id (INTEGER, FK) -- Référencé à Formation(id)
   - PRIMARY KEY (apprenant_id, formation_id)

10. **Validation**
    - apprenant_id (INTEGER, FK) -- Référencé à Apprenant(numero_inscription)
    - module_id (VARCHAR(20), FK) -- Référencé à Module(numero_module)
    - etat_fin_module (VARCHAR(2) CHECK (etat_fin_module IN ('OK', 'KO')))
    - PRIMARY KEY (apprenant_id, module_id)
