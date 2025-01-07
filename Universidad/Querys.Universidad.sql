use universidad;

select apellido1, apellido2, nombre from persona  where tipo = 'alumno' order by apellido1, apellido2, nombre;
select nombre, apellido1, apellido2 from persona where tipo = 'alumno' and telefono is null order by nombre;
select * from persona where tipo = 'alumno' and year(fecha_nacimiento) = '1999';
select * from persona where tipo = 'profesor' and telefono is null and nif like '%K';
select * from asignatura where cuatrimestre = 1 and curso = 3 and id_grado = 7;
select apellido1, apellido2, persona.nombre, departamento.nombre from persona join profesor on persona.id = profesor.id_profesor join departamento on profesor.id_departamento = departamento.id order by apellido1, apellido2, persona.nombre;
select asignatura.nombre, curso_escolar.anyo_inicio, curso_escolar.anyo_fin from persona join alumno_se_matricula_asignatura on persona.id = alumno_se_matricula_asignatura.id_alumno join asignatura on asignatura.id = alumno_se_matricula_asignatura.id_asignatura join curso_escolar on curso_escolar.id = alumno_se_matricula_asignatura.id_curso_escolar where persona.nif = '26902806M';
select departamento.nombre from departamento join profesor on profesor.id_departamento = departamento.id join asignatura on profesor.id_profesor = asignatura.id_profesor join grado on asignatura.id_grado = grado.id where grado.nombre = 'Grado en Ingeniería Informática (Plan 2015)';
select distinct apellido1, apellido2, nombre from persona join alumno_se_matricula_asignatura on persona.id = alumno_se_matricula_asignatura.id_alumno join curso_escolar on alumno_se_matricula_asignatura.id_curso_escolar = curso_escolar.id where curso_escolar.anyo_inicio = '2018' and curso_escolar.anyo_fin = '2019';
select departamento.nombre, apellido1, apellido2, persona.nombre from persona left join profesor on profesor.id_profesor = persona.id left join departamento on profesor.id_departamento = departamento.id order by departamento.nombre, persona.apellido1, persona.apellido2, persona.nombre;
select departamento.nombre, persona.apellido1, persona.apellido2, persona.nombre from profesor left join departamento on profesor.id_departamento = departamento.id left join persona on profesor.id_profesor = persona.id order by departamento.nombre, persona.apellido1, persona.apellido2, persona.nombre;
select persona.nombre, persona.apellido1, persona.apellido2 from persona left join profesor on persona.id = profesor.id_profesor where profesor.id_departamento is null;
select deparatamento.nombre from departamento left join profesor on profesor.id_departamento = departamento_id where profesor.id_departamento is null;
select persona.nombre, persona.apellido1, persona.apellido2 from profesor left join asignatura on profesor.id_profesor = asignatura.id_profesor join persona on profesor.id_profesor = persona.id where asignatura.id_profesor is null;
select asignatura.nombre from asignatura left join profesor on asignatura.id_profesor = profesor.id_profesor where asignatura.id_profesor is null;
select departamento.nombre from departamento left join profesor on departamento.id = profesor.id_departamento left join asignatura on profesor.id_profesor = asignatura.id_profesor where asignatura.id is null;
select count(id) as 'total estudiantes' from persona where tipo = 'alumno';
select count(id) as 'estudiantes 1999' from persona where tipo = 'alumno' and year(fecha_nacimiento) = '1999';
select departamento.nombre, count(profesor.id_profesor) as num_profesores from departamento join profesor on departamento.id = profesor.id_departamento group by departamento.nombre order by num_profesores desc;
select departamento.nombre, count(profesor.id_profesor) as 'numero de profesores' from departamento left join profesor on departamento.id = profesor.id_departamento group by departamento.nombre;
select grado.nombre, count(asignatura.id) as 'numero de asignaturas' from grado left join asignatura on grado.id = asignatura.id_grado group by grado.nombre order by 'numero de asignaturas' desc;

