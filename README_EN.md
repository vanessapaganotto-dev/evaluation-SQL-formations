🇫🇷 [French version available here](README.md)


# Complete SQL Database to Manage a Training Center

## Description

This system manages students, teachers, courses, subjects, assignments, enrollments, and appointments for a training center.

---

## Technologies Used

- SQL (MySQL / MariaDB)  
- Relational modeling with primary and foreign keys

---

## Features

- Management of training programs (e.g., Web Development, Digital Marketing, Data Analysis)  
- Management of subjects associated with training programs  
- Management of students and their enrollments in training programs  
- Management of teachers and the subjects they teach  
- Organization of courses and assignments linked to subjects  
- Scheduling appointments between students, teachers, and subjects with dates and times

---

## Database Structure

- `formations`: list of training programs offered  
- `matieres`: subjects taught with descriptions  
- `formations_matieres`: link between training programs and subjects  
- `cours`: courses linked to subjects  
- `devoirs`: assignments linked to courses  
- `eleves`: list of students  
- `eleves_formations`: student enrollments in training programs with dates  
- `professeurs`: list of teachers  
- `professeurs_matieres`: subjects taught by each teacher  
- `rdv`: appointments between students, teachers, and subjects with dates and times


---


## Installation / Usage

- Create an empty database (e.g., `bdd_data4_ecole`)  
- Import the provided SQL scripts in this order:  
  1. Table creation  
  2. Data insertion  
- Use a MySQL-compatible DBMS (phpMyAdmin, MySQL Workbench, etc.)  
- Run your own queries to manipulate or retrieve data

---

## Example Useful Queries

- List of students enrolled in a training program  
- Appointment schedule by teacher or student  
- Courses and assignments associated with a given subject

---

## Author

Vanessa Paganotto


---

## License

This project is licensed under the MIT License.
