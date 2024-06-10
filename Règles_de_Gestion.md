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

