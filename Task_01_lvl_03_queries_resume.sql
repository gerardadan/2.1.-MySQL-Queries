SELECT count(id_alumno) FROM universidad.alumno_se_matricula_asignatura;
SELECT count(persona.id) FROM universidad.persona persona where year(persona.fecha_nacimiento)  = 1999 and persona.tipo = 'alumno';
select departamento.nombre, count(profesor.id_profesor) as 'Total Profesors' from universidad.departamento departamento left join universidad.profesor profesor on departamento.id = profesor.id_departamento GROUP BY departamento.nombre order by count(profesor.id_profesor) asc;
select departamento.nombre, count(profesor.id_profesor) as 'Total Profesors' from universidad.departamento departamento right join universidad.profesor profesor on departamento.id = profesor.id_departamento GROUP BY departamento.nombre order by count(profesor.id_profesor) asc;
select grado.nombre , count(asignatura.id_grado) as aa from universidad.grado left join universidad.asignatura asignatura on grado.id = asignatura.id_grado group by grado.nombre order by count(asignatura.id_grado) asc;
select grado.nombre , count(asignatura.id_grado) as aa from universidad.grado left join universidad.asignatura asignatura on grado.id = asignatura.id_grado group by grado.nombre HAVING COUNT(asignatura.id_grado) > 40 order by count(asignatura.id_grado) asc;
select grado.nombre , asignatura.tipo, sum(asignatura.creditos) from universidad.grado left join universidad.asignatura asignatura on grado.id = asignatura.id_grado group by grado.nombre, asignatura.tipo order by count(asignatura.id_grado) asc;
select c.anyo_inicio, count(distinct a.id_alumno) from universidad.curso_escolar c join universidad.alumno_se_matricula_asignatura a on c.id = a.id_curso_escolar group by c.anyo_inicio order by c.anyo_inicio;
select p.nombre, p.apellido1, p.apellido2, count(a.id) from universidad.profesor p left join universidad.asignatura a on p.id_profesor = a.id_profesor group by p.id_profesor order by p.apellido1, p.apellido2;
select * from universidad.persona where tipo = 'alumno' order by fecha_nacimiento desc limit 1;
select p.id, p.nombre, p.apellido1, p.apellido2 from universidad.profesor p left join universidad.asignatura a on p.id_profesor = a.id_






