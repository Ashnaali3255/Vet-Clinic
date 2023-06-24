/* Populate database with sample data. */

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg, species)
VALUES
  (1, 'Agumon', '2020-02-03', 0, true, 10.23, NULL),
  (2, 'Gabumon', '2018-11-15', 2, true, 8, NULL),
  (3, 'Pikachu', '2021-01-07', 1, false, 15.04, NULL),
  (4, 'Devimon', '2017-05-12', 5, true, 11, NULL),
INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered,weight_kg) VALUES (5, 'Charmander', (to_date('08/02/2020','dd/mm/yyyy')), 0, false, -11),
(6, 'Plantmon', (to_date('15/11/2021','dd/mm/yyyy')), 2, true, -5.7), 
(7, 'Squirtle', (to_date('02/04/1993','dd/mm/yyyy')), 3 , false, -12.13), 
(8, 'Angemon', (to_date('12/06/2005','dd/mm/yyyy')), 1, true, -45),
(9, 'Boarmon', (to_date('07/06/2005','dd/mm/yyyy')), 7, true, 20.4),
(10, 'Blossom', (to_date('13/10/1998','dd/mm/yyyy')), 3, true, 17),
(11, 'Ditto', (to_date('14/05/2022','dd/mm/yyyy')), 4, true, 22);
