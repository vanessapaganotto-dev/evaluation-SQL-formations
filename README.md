# evaluation-SQL-formations

## Français

Base de données SQL complète pour gérer un centre de formation.  
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

## English

Complete SQL database to manage a training center.  
The system handles students, teachers, training programs, subjects, courses, assignments, enrollments, and appointments.

### Technologies used

- SQL (MySQL / MariaDB)  
- Relational modeling with primary and foreign keys  

### Features

- Management of training programs (e.g., Web Development, Digital Marketing, Data Analysis)  
- Management of subjects linked to training programs  
- Management of students and their enrollments in training programs  
- Management of teachers and the subjects they teach  
- Organization of courses and assignments related to subjects  
- Scheduling appointments between students, teachers, and subjects with dates and times  

### Database structure

- `formations`: list of training programs  
- `matieres`: subjects taught with descriptions  
- `formations_matieres`: link between training programs and subjects  
- `cours`: courses linked to subjects  
- `devoirs`: assignments linked to courses  
- `eleves`: list of students  
- `eleves_formations`: student enrollments with dates  
- `professeurs`: list of teachers  
- `professeurs_matieres`: subjects taught by each teacher  
- `rdv`: appointments between students, teachers, and subjects with dates and times  

### Installation / Usage

1. Create an empty database (e.g., `bdd_data4_ecole`)  
2. Import the provided SQL scripts in this order:  
   - table creation  
   - data insertion  
3. Use a MySQL-compatible DBMS (phpMyAdmin, MySQL Workbench, etc.)  
4. Run your own queries to manipulate or query the data  

### Sample useful queries

- List of students enrolled in a training program  
- Appointment schedule by teacher or student  
- Courses and assignments linked to a specific subject  

---

## Author / Auteur

Vanessa Paganotto - développeuse web junior / Junior Web Developer
