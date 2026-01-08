
🇬🇧 Version anglaise disponible : [README_EN.md](README_EN.md)


# Base de données SQL complète pour gérer un centre de formation.  

Le système gère les élèves, professeurs, formations, matières, cours, devoirs, inscriptions et rendez-vous.

### Technologies utilisées

- SQL (MySQL / MariaDB)  
- Modélisation relationnelle avec clés primaires et étrangères  

### Fonctionnalités

- Gestion des formations (ex : Développement Web, Marketing Digital, Data Analyse)  
- Gestion des matières associées aux formations  
- Gestion des élèves et de leurs inscriptions aux formations  
- Gestion des professeurs et des matières qu’ils enseignent  
- Organisation des cours et devoirs liés aux matières  
- Planification des rendez-vous entre élèves, professeurs et matières avec dates et horaires  

### Structure de la base

- `formations` : liste des formations proposées  
- `matieres` : matières enseignées avec description  
- `formations_matieres` : liaison entre formations et matières  
- `cours` : cours liés aux matières  
- `devoirs` : devoirs liés aux cours  
- `eleves` : liste des élèves  
- `eleves_formations` : inscriptions des élèves aux formations avec dates  
- `professeurs` : liste des professeurs  
- `professeurs_matieres` : matières enseignées par chaque professeur  
- `rdv` : rendez-vous entre élèves, professeurs et matières avec dates et horaires  

### Installation / utilisation

1. Créer une base de données vide (ex : `bdd_data4_ecole`)  
2. Importer les scripts SQL fournis dans cet ordre :  
   - création des tables  
   - insertion des données  
3. Utiliser un SGBD compatible MySQL (phpMyAdmin, MySQL Workbench, etc.)  
4. Lancer vos propres requêtes pour manipuler ou interroger les données  

### Exemple de requêtes utiles

- Liste des élèves inscrits à une formation  
- Planning des rendez-vous par professeur ou élève  
- Cours et devoirs associés à une matière donnée  

---

## Auteur

Vanessa Paganotto 

---

## Licence

Ce projet est sous licence MIT.
