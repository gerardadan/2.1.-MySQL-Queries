select nombre from tienda.producto;

select p.nif, p.nombre, p.apellido1, p.apellido2, p.fecha_nacimiento from universidad.persona p inner join universidad.alumno_se_matricula_asignatura a on a.id_alumno = p.id where year(p.fecha_nacimiento) = 1999;
select p.nif, p.nombre, p.apellido1, p.apellido2, p.fecha_nacimiento from universidad.persona p inner join universidad.alumno_se_matricula_asignatura a on a.id_alumno = p.id where p.telefono is null and lower(right(p.nif,1)) = 'k';
select * from universidad.asignatura a where a.cuatrimestre = 1 and a.id_grado = 7;
select persona.nif, persona.nombre, persona.apellido1, persona.apellido2, persona.fecha_nacimiento from universidad.persona persona  inner join universidad.profesor profesor on persona.id = profesor.id_profesor inner join universidad.departamento deparamento on profesor.id_departamento = deparamento.id order by persona.nombre asc, persona.apellido1 asc, persona.apellido2 asc;
select asignatura.nombre, curso.anyo_inicio, curso.anyo_fin from universidad.asignatura asignatura inner join universidad.alumno_se_matricula_asignatura alumno on alumno.id_asignatura = asignatura.id inner join universidad.curso_escolar curso on curso.id = alumno.id_curso_escolar inner join universidad.persona persona on persona.id = alumno.id_alumno where persona.nif = '26902806M';
select distinct departamento.nombre from universidad.departamento departamento inner join universidad.profesor profesor on profesor.id_departamento = departamento.id inner join universidad.grado grado on  grado.id inner join universidad.asignatura asignatura on asignatura.id = profesor.id_profesor where grado.id = 1;
select distinct alumno.id_alumno from universidad.alumno_se_matricula_asignatura alumno inner join universidad.curso_escolar curso on curso.id = alumno.id_curso_escolar where curso.id = 5;

