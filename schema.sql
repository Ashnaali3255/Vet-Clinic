/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  date_of_birth DATE,
  escape_attempts INT,
  neutered BOOLEAN,
  weight_kg DECIMAL(5, 2),
  species VARCHAR(255)
);

-- Create a table named owners
CREATE TABLE owners (
    id INT GENERATED ALWAYS AS IDENTITY, 
    full_name VARCHAR(100),
    age INT,
    PRIMARY KEY(id)
);

-- Create a table named species

CREATE TABLE species (
    id INT GENERATED ALWAYS AS IDENTITY, 
    name VARCHAR(100),
    PRIMARY KEY(id)
);

-- Make sure that id is set as autoincremented PRIMARY KEY in animals table
ALTER TABLE animals ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY;
-- Remove column species in animals table
ALTER TABLE animals DROP COLUMN species;
-- Add column species_id which is a foreign key referencing species table
ALTER TABLE animals ADD COLUMN species_id INT;
ALTER TABLE animals ADD FOREIGN KEY(species_id) REFERENCES species(id);
-- Add column owner_id which is a foreign key referencing the owners table
ALTER TABLE animals ADD COLUMN owner_id INT;
ALTER TABLE animals ADD FOREIGN KEY(owner_id) REFERENCES owners(id);

-- Create a table named vets 
CREATE TABLE vets (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100),
    age INT,
    date_of_graduation date,
    PRIMARY KEY(id)
);

-- Create a "join table" called specializations
CREATE TABLE specializations (
    vet_id int,
    species_id int,
    FOREIGN KEY(species_id) REFERENCES species(id),
    FOREIGN KEY(vet_id) REFERENCES vets(id),
    PRIMARY KEY (species_id, vet_id)
);

-- Create a "join table" called visits to handle the relationship between the tables animals and vets
CREATE TABLE visits (
    id INT GENERATED ALWAYS AS IDENTITY,
    animal_id INT REFERENCES animals(id),
    vet_id INT REFERENCES vets (id),
    date_of_visit date
);
