### MCD (Modèle Conceptuel de Données) 

#### Entités et Relations

1. **Apprenant**
   - Attributs :
     - numero_inscription (PK)
     - nom
     - prénom
     - adresse
     - date_naissance
   - Relations :
     - inscrit à plusieurs *Formation*
     - valide plusieurs *Module*

2. **Formateur**
   - Attributs :
     - code (PK)
     - nom
     - prénom
   - Relations :
     - auteur de plusieurs *ModuleFormation*

3. **Module**
   - Attributs :
     - numero_module (PK) - Utiliser Semantic Versioning (par exemple: '1.0.0')
     - intitule
     - objectif_pedagogique
     - duree
     - auteur_id (FK) référencé à *Formateur(code)*
   - Relations :
     - fait partie de plusieurs *Formation*
     - validé par plusieurs *Apprenant*
     - autorisé par *ModuleFormation*
     - contient plusieurs *Contenu*
     - taggé par plusieurs *Tag* via *ModuleTag*

4. **Formation**
   - Attributs :
     - id (PK)
     - intitule
   - Relations :
     - contient plusieurs *Module*
     - suivie par plusieurs *Apprenant*
     - autorise plusieurs *ModuleFormation*

5. **Tag**
   - Attributs :
     - id (PK)
     - nom
   - Relations :
     - tagge plusieurs *Module* via *ModuleTag*

6. **ModuleTag**
   - Attributs :
     - module_id (FK) référencé à *Module(numero_module)*
     - tag_id (FK) référencé à *Tag(id)*
   - Contraintes :
     - PK(module_id, tag_id)

7. **Contenu**
   - Attributs :
     - id (PK)
     - type (texte, image, vidéo)
     - data
     - module_id (FK) référencé à *Module(numero_module)*
   - Relations :
     - appartient à un *Module*

8. **ModuleFormation**
   - Attributs :
     - module_id (FK) référencé à *Module(numero_module)*
     - formation_id (FK) référencé à *Formation(id)*
     - formateur_id (FK) référencé à *Formateur(code)*
   - Contraintes :
     - PK(module_id, formation_id, formateur_id)

9. **Inscription**
   - Attributs :
     - apprenant_id (FK) référencé à *Apprenant(numero_inscription)*
     - formation_id (FK) référencé à *Formation(id)*
   - Contraintes :
     - PK(apprenant_id, formation_id)

10. **Validation**
    - Attributs :
      - apprenant_id (FK) référencé à *Apprenant(numero_inscription)*
      - module_id (FK) référencé à *Module(numero_module)*
      - etat_fin_module (OK / KO)
    - Contraintes :
      - PK(apprenant_id, module_id)

#### Diagramme MCD

```plaintext
Apprenant (numero_inscription, nom, prenom, adresse, date_naissance)
     |<inscrit>------------------<contient>|
     |                                      |
     |<valide>                              |
     |                                      |
     v                                      v
Formation (id, intitule)                    Module (numero_module, intitule, objectif_pedagogique, duree, auteur_id)
     |<autorise>------------------<fait partie>|
     v                                      |
Formateur (code, nom, prenom)               |
     |<auteur>                              |
     v                                      |
ModuleFormation (module_id, formation_id, formateur_id)
     |
     v
Contenu (id, type, data, module_id)         Validation (apprenant_id, module_id, etat_fin_module)
     |
     v
Tag (id, nom)--------------------<tagge>    ModuleTag (module_id, tag_id)
```
