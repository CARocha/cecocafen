ALTER TABLE encuesta_jovenes CHANGE COLUMN
`desde_miembro_trabajo` `desde_miembro_trab` INTEGER  DEFAULT NULL;
ALTER TABLE encuesta_jovenes CHANGE COLUMN
`desde_miembro` `desde_miembro_trabajo` INTEGER  DEFAULT NULL;
ALTER TABLE encuesta_jovenes CHANGE COLUMN
`desde_miembro_trab` `desde_miembro` INTEGER  DEFAULT NULL;

ALTER TABLE encuesta_jovenes MODIFY COLUMN `socio` INTEGER  DEFAULT 2,
 MODIFY COLUMN promotor INTEGER  DEFAULT 2,
 MODIFY COLUMN miembro INTEGER  DEFAULT 2,
 MODIFY COLUMN miembro_trabajo INTEGER  DEFAULT 2,
 MODIFY COLUMN cargo INTEGER  DEFAULT 2,
 MODIFY COLUMN no_miembro INTEGER  DEFAULT 2;

update encuesta_jovenes set promotor = 2 where promotor is null;
update encuesta_jovenes set miembro = 2 where miembro is null;
update encuesta_jovenes set miembro_trabajo = 2 where miembro_trabajo is null;
update encuesta_jovenes set no_miembro = 2 where no_miembro is null;
update encuesta_jovenes set cargo = 2 where cargo is null;

ALTER TABLE encuesta_organizacion MODIFY COLUMN `socio`
INTEGER  DEFAULT 2,
 MODIFY COLUMN `socio_cooperativa` INTEGER  DEFAULT 2,
 MODIFY COLUMN `hijos_socios` INTEGER  DEFAULT 2,
 MODIFY COLUMN `miembro` INTEGER  DEFAULT 2,
 MODIFY COLUMN `miembro_trabajo` INTEGER  DEFAULT 2,
 MODIFY COLUMN `cargo` INTEGER  DEFAULT 2,
 MODIFY COLUMN `no_miembro` INTEGER  DEFAULT 2;

update encuesta_organizacion set socio = 2 where socio is null;
update encuesta_organizacion set hijos_socios = 2 where hijos_socios is null;
update encuesta_organizacion set miembro = 2 where miembro is null;
update encuesta_organizacion set no_miembro = 2 where no_miembro is null;
update encuesta_organizacion set miembro_trabajo = 2 where
miembro_trabajo is null;
update encuesta_organizacion set socio_cooperativa = 2 where
socio_cooperativa is null;
update encuesta_organizacion set cargo = 2 where cargo is null;
