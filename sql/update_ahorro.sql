ALTER TABLE encuesta_ahorro 
 MODIFY COLUMN tiene_efectivo INTEGER  DEFAULT 2,
 MODIFY COLUMN tiene_joya INTEGER  DEFAULT 2,
 MODIFY COLUMN interes_ahorro INTEGER  DEFAULT 2,
 MODIFY COLUMN posee_ahorro INTEGER  DEFAULT 2;

update encuesta_ahorro set tiene_efectivo = 2 where tiene_efectivo is null;
update encuesta_ahorro set tiene_joya = 2 where tiene_joya is null;
update encuesta_ahorro set interes_ahorro = 2 where interes_ahorro is null;
update encuesta_ahorro set posee_ahorro= 2 where posee_ahorro is null;
