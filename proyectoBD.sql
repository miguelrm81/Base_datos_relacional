-- CREACIÓN DE LAS TABLAS.
CREATE TABLE alumnos (
	alumno_id serial PRIMARY KEY,
	nombre VARCHAR ( 250 ) NOT NULL,
	email VARCHAR ( 250 ),
	campus_id INT NOT NULL,
	promocion_id INT NOT NULL
);

CREATE TABLE profesores (
	profesor_id serial PRIMARY KEY,
	nombre VARCHAR ( 250 ) NOT NULL,
	rol VARCHAR ( 250 ) NOT NULL,
    vertical VARCHAR ( 250 ) NOT NULL,
	campus_id INT NOT NULL,
	promocion_id INT NOT NULL
);

CREATE TABLE campus (
	campus_id serial PRIMARY KEY,
	localizacion VARCHAR ( 250 ) NOT NULL,
	direccion VARCHAR ( 250 )
);

CREATE TABLE promociones (
	promocion_id serial PRIMARY KEY,
	promocion VARCHAR ( 250 ) UNIQUE NOT NULL,
	fecha DATE NOT NULL 
);

CREATE TABLE notas (
    nota_id serial PRIMARY KEY,
	alumno_id INT NOT NULL,
	proyecto_id INT NOT NULL,
	nota VARCHAR ( 250 ) 
);

CREATE TABLE proyectos (
    proyecto_id serial PRIMARY KEY,
	descripcion VARCHAR ( 250 ) 
);

-- AÑADIMOS LAS CONSTRAINTS.

-- TABLA 'alumnos'.
-- DEFINIMOS 'promocion_id' COMO FOREIGN KEY DE LA TABLA 'promociones'.
alter table alumnos
  add constraint fk_alumnos_promociones foreign key (promocion_id) references promociones (promocion_id);
-- DEFINIMOS 'campus_id' COMO FOREIGN KEY DE LA TABLA 'campus'.
alter table alumnos
  add constraint fk_alumnos_campus foreign key (campus_id) references campus (campus_id);

-- TABLA 'profesores'.
-- DEFINIMOS 'promocion_id' COMO FOREIGN KEY DE LA TABLA 'promociones'.
alter table profesores
  add constraint fk_profesores_promociones foreign key (promocion_id) references promociones (promocion_id);
-- DEFINIMOS 'campus_id' COMO FOREIGN KEY DE LA TABLA 'campus'.
alter table profesores
  add constraint fk_profesores_campus foreign key (campus_id) references campus (campus_id);

--TABLA 'notas'.
-- DEFINIMOS 'alumno_id' COMO FOREIGN KEY DE LA TABLA 'alumnos'.
alter table notas
  add constraint fk_notas_alumnos foreign key (alumno_id) references alumnos (alumno_id);
-- DEFINIMOS 'proyecto_id' COMO FOREIGN KEY DE LA TABLA 'proyectos'.
alter table notas
  add constraint fk_notas_proyectos foreign key (proyecto_id) references proyectos (proyecto_id);



--------------------------------------------------------------------------
-- INSERT.
-- INSERT TABLA 'campus'
INSERT INTO campus (localizacion, direccion)
VALUES
  ('Madrid', 'P.º de Recoletos, 15, 28004 Madrid'),
  ('Valencia', 'Plaça de L aigua, 46024 Valencia');

-- INSERT TABLA 'promociones'
INSERT INTO promociones (promocion, fecha)
VALUES
  ('Septiembre','2023-09-18'),
  ('Febrero','2024-02-12');

-- INSERT TABLA 'proyectos'.
INSERT INTO proyectos(descripcion)
VALUES
  ('Proyecto_HLF'),('Proyecto_EDA'),('Proyecto_BBDD'),('Proyecto_ML'),('Proyecto_Deployment'),
  ('Proyecto_WebDev'),('Proyecto_FrontEnd'),('Proyecto_Backend'),('Proyecto_React'),
  ('Proyecto_FullSatck');

  -- INSERT TABLA 'profesores'.
INSERT INTO profesores(nombre,rol,vertical,campus_id,promocion_id)
VALUES
  ('Noa Yáñez','TA','DS',1,1),
  ('Saturnina Benitez','TA','DS',1,1),
  ('Anna Feliu','TA','FS',1,1),
  ('Rosalva Ayuso','TA','FS',2,1),
  ('Ana Sofía Ferrer','TA','FS',2,2),
  ('Angélica Corral','TA','FS',1,2),
  ('Ariel Lledó','TA','DS',1,1),
  ('Mario Prats','LI','FS',2,2),
  ('Luis Ángel Suárez','LI','FS',1,1),
  ('María Dolores Diaz','LI','DS',1,1);

  --INSERT TABLA 'alumnos'.
  INSERT INTO Alumnos (Nombre, Email, Campus_id, Promocion_id)
VALUES 
('Jafet Casals', 'Jafet_Casals@gmail.com', 1, 1),
('Jorge Manzanares', 'Jorge_Manzanares@gmail.com', 1, 1),
('Onofre Adadia', 'Onofre_Adadia@gmail.com', 1, 1),
('Merche Prada', 'Merche_Prada@gmail.com', 1, 1),
('Pilar Abella', 'Pilar_Abella@gmail.com', 1, 1),
('Leoncio Tena', 'Leoncio_Tena@gmail.com', 1, 1),
('Odalys Torrijos', 'Odalys_Torrijos@gmail.com', 1, 1),
('Eduardo Caparrós', 'Eduardo_Caparrós@gmail.com', 1, 1),
('Ignacio Goicoechea', 'Ignacio_Goicoechea@gmail.com', 1, 1),
('Clementina Santos', 'Clementina_Santos@gmail.com', 1, 1),
('Daniela Falcó', 'Daniela_Falcó@gmail.com', 1, 1),
('Abraham Vélez', 'Abraham_Vélez@gmail.com', 1, 1),
('Maximiliano Menéndez', 'Maximiliano_Menéndez@gmail.com', 1, 1),
('Anita Heredia', 'Anita_Heredia@gmail.com', 1, 1),
('Eli Casas', 'Eli_Casas@gmail.com', 1, 1),
('Guillermo Borrego', 'Guillermo_Borrego@gmail.com', 1, 2),
('Sergio Aguirre', 'Sergio_Aguirre@gmail.com', 1, 2),
('Carlito Carrión', 'Carlito_Carrión@gmail.com', 1, 2),
('Haydée Figueroa', 'Haydée_Figueroa@gmail.com', 1, 2),
('Chita Mancebo', 'Chita_Mancebo@gmail.com', 1, 2),
('Joaquina Asensio', 'Joaquina_Asensio@gmail.com', 1, 2),
('Cristian Sarabia', 'Cristian_Sarabia@gmail.com', 1, 2),
('Isabel Ibáñez', 'Isabel_Ibáñez@gmail.com', 1, 2),
('Desiderio Jordá', 'Desiderio_Jordá@gmail.com', 1, 2),
('Rosalina Llanos', 'Rosalina_Llanos@gmail.com', 1, 2),
('Amor Larrañaga', 'Amor_Larrañaga@gmail.com', 1, 1),
('Teodoro Alberola', 'Teodoro_Alberola@gmail.com', 1, 1),
('Cleto Plana', 'Cleto_Plana@gmail.com', 1, 1),
('Aitana Sebastián', 'Aitana_Sebastián@gmail.com', 1, 1),
('Dolores Valbuena;', 'Dolores_Valbuena@gmail.com', 1, 1),
('Julie Ferrer', 'Julie_Ferrer@gmail.com', 1, 1),
('Mireia Cabañas', 'Mireia_Cabañas@gmail.com', 1, 1),
('Flavia Amador', 'Flavia_Amador@gmail.com', 1, 1),
('Albino Macias', 'Albino_Macias@gmail.com', 1, 1),
('Ester Sánchez', 'Ester_Sánchez@gmail.com', 1, 1),
('Luis Miguel Galvez', 'Luis_Miguel_Galvez@gmail.com', 1, 1),
('Loida Arellano', 'Loida_Arellano@gmail.com', 1, 1),
('Heraclio Duques', 'Heraclio_Duque@gmail.com', 1, 1),
('Herberto Figueras', 'Herberto_Figueras@gmail.com', 1, 1),
('Teresa Laguna', 'Teresa_Laguna@gmail.com', 2, 2),
('Estrella Murillo', 'Estrella_Murillo@gmail.com', 2, 2),
('Ernesto Uriarte', 'Ernesto_Uriarte@gmail.com', 2, 2),
('Daniela Guitart', 'Daniela_Guitart@gmail.com', 2, 2),
('Timoteo Trillo', 'Timoteo_Trillo@gmail.com', 2, 2),
('Ricarda Tovar', 'Ricarda_Tovar@gmail.com', 2, 2),
('Alejandra Vilaplana', 'Alejandra_Vilaplana@gmail.com', 2, 2),
('Daniel Rosselló', 'Daniel_Rosselló@gmail.com', 2, 2),
('Rita Olivares', 'Rita_Olivares@gmail.com', 2, 2),
('Cleto Montes', 'Cleto_Montes@gmail.com', 2, 2),
('Marino Castilla', 'Marino_Castilla@gmail.com', 2, 2),
('Estefanía Valcárcel', 'Estefanía_Valcárcel@gmail.com', 2, 2),
('Noemí Vilanova', 'Noemí_Vilanova@gmail.com', 2, 2);


--INSERT TABLA 'notas'
INSERT INTO notas (alumno_id, proyecto_id, nota)
VALUES
(1,1,'Apto'),(1,2,'No Apto'),(1,3,'Apto'),(1,4,'Apto'),(1,5,'Apto'),
(2,1,'Apto'),(2,2,'No Apto'),(2,3,'Apto'),(2,4,'Apto'),(2,5,'Apto'),
(3,1,'Apto'),(3,2,'No Apto'),(3,3,'Apto'),(3,4,'No Apto'),(3,5,'Apto'),
(4,1,'Apto'),(4,2,'No Apto'),(4,3,'No Apto'),(4,4,'Apto'),(4,5,'No Apto'),
(5,1,'Apto'),(5,2,'No Apto'),(5,3,'Apto'),(5,4,'Apto'),(5,5,'Apto'),
(6,1,'Apto'),(6,2,'Apto'),(6,3,'Apto'),(6,4,'Apto'),(6,5,'Apto'),
(7,1,'No Apto'),(7,2,'Apto'),(7,3,'Apto'),(7,4,'Apto'),(7,5,'Apto'),
(8,1,'No Apto'),(8,2,'Apto'),(8,3,'Apto'),(8,4,'Apto'),(8,5,'Apto'),
(9,1,'Apto'),(9,2,'Apto'),(9,3,'Apto'),(9,4,'No Apto'),(9,5,'Apto'),
(10,1,'Apto'),(10,2,'No Apto'),(10,3,'Apto'),(10,4,'Apto'),(10,5,'Apto'),
(11,1,'Apto'),(11,2,'Apto'),(11,3,'Apto'),(11,4,'Apto'),(11,5,'Apto'),
(12,1,'Apto'),(12,2,'No Apto'),(12,3,'No Apto'),(12,4,'Apto'),(12,5,'Apto'),
(13,1,'Apto'),(13,2,'No Apto'),(13,3,'Apto'),(13,4,'Apto'),(13,5,'Apto'),
(14,1,'Apto'),(14,2,'Apto'),(14,3,'Apto'),(14,4,'Apto'),(14,5,'Apto'),
(15,1,'Apto'),(15,2,'Apto'),(15,3,'Apto'),(15,4,'Apto'),(15,5,'Apto'),
(16,1,'Apto'),(16,2,'No Apto'),(16,3,'No Apto'),(16,4,'Apto'),(16,5,'No Apto'),
(17,1,'Apto'),(17,2,'No Apto'),(17,3,'Apto'),(17,4,'Apto'),(17,5,'No Apto'),
(18,1,'Apto'),(18,2,'No Apto'),(18,3,'Apto'),(18,4,'Apto'),(18,5,'Apto'),
(19,1,'Apto'),(19,2,'Apto'),(19,3,'Apto'),(19,4,'Apto'),(19,5,'Apto'),
(20,1,'No Apto'),(20,2,'Apto'),(20,3,'No Apto'),(20,4,'Apto'),(20,5,'Apto'),
(21,1,'No Apto'),(21,2,'No Apto'),(21,3,'Apto'),(21,4,'Apto'),(21,5,'Apto'),
(22,1,'Apto'),(22,2,'Apto'),(22,3,'No Apto'),(22,4,'Apto'),(22,5,'Apto'),
(23,1,'No Apto'),(23,2,'Apto'),(23,3,'No Apto'),(23,4,'Apto'),(23,5,'Apto'),
(24,1,'No Apto'),(24,2,'Apto'),(24,3,'No Apto'),(24,4,'No Apto'),(24,5,'Apto'),
(25,1,'Apto'),(25,2,'Apto'),(25,3,'Apto'),(25,4,'Apto'),(25,5,'Apto'),
(26,6,'Apto'),(26,7,'Apto'),(26,8,'Apto'),(26,9,'Apto'),(26,10,'No Apto'),
(27,6,'No Apto'),(27,7,'No Apto'),(27,8,'Apto'),(27,9,'No Apto'),(27,10,'Apto'),
(28,6,'Apto'),(28,7,'No Apto'),(28,8,'Apto'),(28,9,'No Apto'),(28,10,'Apto'),
(29,6,'Apto'),(29,7,'No Apto'),(29,8,'Apto'),(29,9,'No Apto'),(29,10,'Apto'),
(30,6,'Apto'),(30,7,'Apto'),(30,8,'Apto'),(30,9,'Apto'),(30,10,'No Apto'),
(31,6,'No Apto'),(31,7,'No Apto'),(31,8,'No Apto'),(31,9,'Apto'),(31,10,'No Apto'),
(32,6,'No Apto'),(32,7,'Apto'),(32,8,'Apto'),(32,9,'Apto'),(32,10,'Apto'),
(33,6,'Apto'),(33,7,'Apto'),(33,8,'No Apto'),(33,9,'Apto'),(33,10,'Apto'),
(34,6,'No Apto'),(34,7,'Apto'),(34,8,'Apto'),(34,9,'Apto'),(34,10,'Apto'),
(35,6,'No Apto'),(35,7,'Apto'),(35,8,'Apto'),(35,9,'No Apto'),(35,10,'Apto'),
(36,6,'No Apto'),(36,7,'Apto'),(36,8,'Apto'),(36,9,'Apto'),(36,10,'Apto'),
(37,6,'Apto'),(37,7,'Apto'),(37,8,'Apto'),(37,9,'Apto'),(37,10,'Apto'),
(38,6,'Apto'),(38,7,'Apto'),(38,8,'No Apto'),(38,9,'No Apto'),(38,10,'No Apto'),
(39,6,'Apto'),(39,7,'Apto'),(39,8,'Apto'),(39,9,'Apto'),(39,10,'Apto'),
(40,6,'Apto'),(40,7,'Apto'),(40,8,'Apto'),(40,9,'Apto'),(40,10,'Apto'),
(41,6,'Apto'),(41,7,'Apto'),(41,8,'No Apto'),(41,9,'Apto'),(41,10,'Apto'),
(42,6,'Apto'),(42,7,'Apto'),(42,8,'Apto'),(42,9,'Apto'),(42,10,'Apto'),
(43,6,'Apto'),(43,7,'No Apto'),(43,8,'No Apto'),(43,9,'Apto'),(43,10,'Apto'),
(44,6,'No Apto'),(44,7,'Apto'),(44,8,'Apto'),(44,9,'Apto'),(44,10,'No Apto'),
(45,6,'Apto'),(45,7,'Apto'),(45,8,'Apto'),(45,9,'Apto'),(45,10,'Apto'),
(46,6,'No Apto'),(46,7,'No Apto'),(46,8,'No Apto'),(46,9,'Apto'),(46,10,'Apto'),
(47,6,'No Apto'),(47,7,'No Apto'),(47,8,'Apto'),(47,9,'No Apto'),(47,10,'No Apto'),
(48,6,'No Apto'),(48,7,'No Apto'),(48,8,'No Apto'),(48,9,'Apto'),(48,10,'Apto'),
(49,6,'Apto'),(49,7,'Apto'),(49,8,'No Apto'),(49,9,'Apto'),(49,10,'Apto'),
(50,6,'No Apto'),(50,7,'No Apto'),(50,8,'Apto'),(50,9,'No Apto'),(50,10,'No Apto'),
(51,6,'Apto'),(51,7,'Apto'),(51,8,'No Apto'),(51,9,'No Apto'),(51,10,'Apto'),
(52,6,'Apto'),(52,7,'No Apto'),(52,8,'No Apto'),(52,9,'Apto'),(52,10,'Apto');

----------------------------------------------------------------------------------------------------------------------------
--QUERYS DE PRUEBA.

-- SELECT PARA MOSTRAR EL NOMBRE DEL ALUMNO, EL NOMOBRE DEL PROYECTO Y LA NOTA
select nombre, descripcion, nota from alumnos
inner join notas on alumnos.alumno_id = notas.alumno_id
inner join proyectos on notas.proyecto_id = proyectos.proyecto_id

-- SELECT PARA SABER QUE PROFESOR TIENE CADA ALUMNO SU PROMOCION Y SU CAMPUS.
select profesores.nombre as nombre_profesor,profesores.vertical, alumnos.nombre as nombre_alumno, promociones.promocion 
from profesores
inner join promociones on profesores.promocion_id = promociones.promocion_id
inner join alumnos on promociones.promocion_id = alumnos.promocion_id
