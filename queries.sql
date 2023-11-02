-- SELECT PARA MOSTRAR EL NOMBRE DEL ALUMNO, EL NOMOBRE DEL PROYECTO Y LA NOTA
select nombre, descripcion, nota from alumnos
inner join notas on alumnos.alumno_id = notas.alumno_id
inner join proyectos on notas.proyecto_id = proyectos.proyecto_id

-- SELECT PARA SABER QUE PROFESOR TIENE CADA ALUMNO SU PROMOCION Y SU CAMPUS.
select profesores.nombre as nombre_profesor,profesores.vertical, alumnos.nombre as nombre_alumno, promociones.promocion, campus.localizacion 
from profesores
inner join promociones on profesores.promocion_id = promociones.promocion_id
inner join alumnos on promociones.promocion_id = alumnos.promocion_id
inner join campus on profesores.campus_id = campus.campus_id

-- --SELECT 
-- SELECT alumnos.alumno_id, campus.localizacion, alumnos.nombre AS Nombre_alumno, profesores.nombre AS Nombre_profesor, promociones.promocion, promociones.fecha
-- FROM campus
-- INNER JOIN alumnos ON campus.campus_id = alumnos.campus_id
-- INNER JOIN profesores ON profesores.campus_id = campus.campus_id
-- INNER JOIN promociones ON promociones.promocion_id = alumnos.promocion_id
-- ORDER BY promociones.fecha ASC