ALTER TABLE encuesta_ahorro 
 MODIFY COLUMN tiene_efectivo INTEGER  DEFAULT 2,
 MODIFY COLUMN tiene_joya INTEGER  DEFAULT 2,
 MODIFY COLUMN interes_ahorro INTEGER  DEFAULT 2,
 MODIFY COLUMN posee_ahorro INTEGER  DEFAULT 2;

update encuesta_ahorro set tiene_efectivo = 2 where tiene_efectivo is null;
update encuesta_ahorro set tiene_joya = 2 where tiene_joya is null;
update encuesta_ahorro set interes_ahorro = 2 where interes_ahorro is null;
update encuesta_ahorro set posee_ahorro= 2 where posee_ahorro is null;

ALTER TABLE encuesta_abono
 MODIFY COLUMN respuesta INTEGER  DEFAULT 2,
 MODIFY COLUMN pulpa INTEGER  DEFAULT 2,
 MODIFY COLUMN estiercol INTEGER  DEFAULT 2,
 MODIFY COLUMN composta INTEGER  DEFAULT 2,
 MODIFY COLUMN lombrices INTEGER  DEFAULT 2,
 MODIFY COLUMN bocachi INTEGER  DEFAULT 2,
 MODIFY COLUMN foliar INTEGER  DEFAULT 2,
 MODIFY COLUMN verde INTEGER  DEFAULT 2,
 MODIFY COLUMN hojas INTEGER  DEFAULT 2,
 MODIFY COLUMN quince INTEGER  DEFAULT 2,
 MODIFY COLUMN veinte INTEGER  DEFAULT 2,
 MODIFY COLUMN seis INTEGER  DEFAULT 2,
 MODIFY COLUMN urea INTEGER  DEFAULT 2,
 MODIFY COLUMN gallinaza INTEGER  DEFAULT 2;

update encuesta_abono set respuesta = 2 where respuesta is null;
update encuesta_abono set pulpa = 2 where pulpa is null;
update encuesta_abono set estiercol = 2 where estiercol is null;
update encuesta_abono set composta = 2 where composta is null;
update encuesta_abono set lombrices= 2 where lombrices is null;
update encuesta_abono set bocachi = 2 where bocachi is null;
update encuesta_abono set foliar = 2 where foliar is null;
update encuesta_abono set verde = 2 where verde is null;
update encuesta_abono set hojas = 2 where hojas is null;
update encuesta_abono set quince = 2 where quince is null;
update encuesta_abono set veinte = 2 where veinte is null;
update encuesta_abono set seis = 2 where seis is null;
update encuesta_abono set urea = 2 where urea is null;
update encuesta_abono set gallinaza = 2 where gallinaza is null;
