--Procedimiento almacenado 
----que retorne el rendimineto de los estudiantes exelente.

CREATE OR REPLACE FUNCTION rendimiento_estudiante(
actividad char) 
returns table(rendimiento_estudiante char)
AS $BODY$
BEGIN
return query
select
rendimiento.rendimiento_est
from programa
inner join public.rendimiento_est on programa.rendiento_id=actividad_programa.rendimieto_id
where programa.programa_descripcion = actividad;
END;
$BODY$ LANGUAGE plpgsql;

select * from actividades_programa('Motriz');