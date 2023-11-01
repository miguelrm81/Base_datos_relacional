CREATE TABLE Profesores (
	Profesor_id SERIAL PRIMARY KEY,
	Nombre VARCHAR(255),
	Rol VARCHAR(255),
	Vertical VARCHAR(255),
	Promocion_id INTEGER,
	Campus_id INTEGER
	);
	

INSERT INTO Profesores (Nombre, Rol, Vertical, Promocion_id, Campus_id)
VALUES
    ('Noa Yáñez', 'TA', 'DS', 1, 1),
    ('Saturnina Benitez', 'TA', 'DS', 1, 1),
    ('Anna Feliu', 'TA', 'FS', 1, 1),
    ('Rosalva Ayuso', 'TA', 'FS', 1, 2),
    ('Ana Sofía Ferrer', 'TA', 'FS', 2, 2),
    ('Angélica Corral', 'TA', 'FS', 2, 1),
    ('Ariel Lledó', 'TA', 'DS', 1, 1),
    ('Mario Prats', 'LI', 'FS', 2, 2),
    ('Luis Ángel Suárez', 'LI', 'FS', 1, 1),
    ('María Dolores Diaz', 'LI', 'DS', 1, 1);