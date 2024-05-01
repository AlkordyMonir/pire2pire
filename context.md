

# pire2pire.com : Conception BDD avec MERISE

La mission est de concevoir la base de données d’une plateforme de formation en ligne nommée pire2pire.com à l'aide de la méthode MERISE.

## ​Ressource(s)
- Règles de Gestion https://infocenter-archive.sybase.com/help/index.jsp?topic=/com.sybase.stf.poweramc.docs_12.0.0/html/mcgu/mcgup29.htm
- Dictionnaire de données https://slideplayer.fr/slide/183457/1/images/3/Le+dictionnaire+des+donn%C3%A9es.jpg
- Une approche par niveaux https://mrproof.blogspot.com/2010/11/cours-analyse-merise-avec-exemple.html

# Contexte du projet
- Les formations sont organisés en modules.
- Chaque module est caractérisé par un numéro de module sous forme de Semantic Versionning, un intitulé, un objectif pédagogique, un contenu (textes, images et vidéos), une durée en heures, un ou plusieurs tags et un auteur.
- Un module peut faire partie d'une ou plusieurs formations, comme par exemple un pire module "Commandes de base Git" pourrait faire partie d'une pire formation "Frontend Javascript" et "DevOps", voir  plus.
- Un module peut contenir un texte et/ou une image et/ou une vidéo.
- Les apprenants peuvent s'inscrire à une ou plusieurs formations, ils peuvent choisir de ne pas suivre certains des modules s'ils possèdent déjà, par exemple, les compétences. Autrement dit, ils peuvent arbitrairement valider les modules de leur choix en un clic.
- Chaque apprenant est évalué pour chaque module et possède un état de fin de module (OK / KO).
- Une formation est considérée comme terminée lorsque tous les modules ont été validés.
- Chaque apprenant est caractérisé par un numéro d’inscription unique, un nom, un prénom, une adresse et une date de naissance.
- Un formateurs est auteur d'un module pour une formation donnée, chaque formateur est caractérisé par un code, un nom, un prénom.

***
## Livrables
- Un dépôt Github recensant : 
    - Un README explicite et soigné
    - Une définition de l'acronyme MERISE dans le README.md
    - Un dictionnaire de données
    - Des règles de gestion
    - Un MCD
    - Un MLD
    - Un MPD
    - Un script SQL de la base de données
 ***

## Critères de performance
- La nomenclature MERISE est respectée
- Le méthode MERISE est respectée dans sa structure en découpant la conception de cette base de données en 3 niveaux :  le niveau conceptuel, le niveau logique ou organisationnel, le niveau physique
  
