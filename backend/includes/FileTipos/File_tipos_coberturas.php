<?php 
	$aArray_tipos_coberturas = array(
1 => array('cod'=>'AP1','tipo'=>'V','Descripcion'=>"AP1 - AP- MUERTE E INCAPACIDAD PERMANENTE POR ACCIDENTE PERSONAL")
,2 => array('cod'=>'B','tipo'=>'C','Descripcion'=>"B - B- DA?OS TOTALES  A CONSECUENCIA DE:ACCIDENTES, INCENDIO Y ROBO/HURTO, TERREMOTO, INUNDACION DESBORDAMIENTO")
,3 => array('cod'=>'B1','tipo'=>'C','Descripcion'=>"B1 - B1- DA?OS TOTALES A CONSECUENCIA  DE INCENDIO, ROBO/HURTO, TERREMOTO, INUNDACI?N DESBORDAMIENTO")
,5 => array('cod'=>'C1','tipo'=>'C','Descripcion'=>"C1 - C1- DA?OS TOTALES A CONSECUENCIA DE TERREMOTO, INUNDACION DESBORDAMIENTO Y DA?OS TOTALES Y PARCIALES A CAUSA DE INCENDIO, ROBO/HURTO")
,6 => array('cod'=>'RC','tipo'=>'V','Descripcion'=>"RC - RC- RESPONSABILIDAD CIVIL POR LESIONES Y/O MUERTE  Y DA?OS A COSAS DE TERCEROS NO TRANSPORTADOS Y POR LESIONES Y/O MUERTE UNICAMENTE DE TERCEROS TRANSPORTADOS. LIMITE RC - $3.000.000")
,7 => array('cod'=>'RC1','tipo'=>'V','Descripcion'=>"RC1 - RC1- RESPONSABILIDAD CIVIL  POR LESIONES Y/O  MUERTE Y DA?OS A COSAS DE TERCEROS .LIMITE RC -$100.000")
,8 => array('cod'=>'RCM','tipo'=>'V','Descripcion'=>"RCM - RCM- RESP. CIVIL HACIA TERCEROS Y/O COSAS DE TERCEROS LIMITADA HASTA $ 30.000.-")
,9 => array('cod'=>'ZAFRA','tipo'=>'V','Descripcion'=>"ZAFRA - PLAN ZAFRA-RESP. CIVIL CON LIMITE DE $3.000.000")
,10 => array('cod'=>'RC2','tipo'=>'V','Descripcion'=>"RC2 - RC2- RESPONSABILIDAD CIVIL POR LESIONES Y/O MUERTE  Y DA?OS A COSAS DE TERCEROS NO TRANSPORTADOS Y POR LESIONES Y/O MUERTE UNICAMENTE DE TERCEROS TRANSPORTADOS. LIMITE RC -$10.000.000")
,11 => array('cod'=>'C','tipo'=>'C','Descripcion'=>"C - C -DA?OS TOTALES A CONSECUENCIA DE ACCIDENTES, TERREMOTO, INUNDACION DESBORDAMIENTO, DA?OS TOTALES  Y PARCIALES A CAUSA DE INCEMDIO, ROBO/HURTO")
,12 => array('cod'=>'AP2','tipo'=>'V','Descripcion'=>"AP2 - AP- MUERTE E INCAPACIDAD PERMANENTE POR ACCIDENTE PERSONAL")
,13 => array('cod'=>'AP3','tipo'=>'V','Descripcion'=>"AP3 - AP- MUERTE E INCAPACIDAD PERMANENTE POR ACCIDENTE PERSONAL")
,14 => array('cod'=>'RC C2','tipo'=>'V','Descripcion'=>"RC C2 - RESPONABILIDAD CIVIL POR LESIONES Y/O MUERTE Y DA?OS A COSAS DE TERCEROS. LIMITE $10.000.000")
,16 => array('cod'=>'LIDE','tipo'=>'C','Descripcion'=>"LIDE - DA?OS TOTALES A CONSECUENCIA DE ACCIDENTES, TERREMOTO, INUNDACION DESBORDAMIENTO, DA?OS TOTALES  Y PARCIALES A CAUSA DE INCENDIO, ROBO/HURTO-SIN FRANQUICIA. -*INCLUYE ADICIONALES A LA COBERTURA: REPOSICION ANUAL DE  CRISTALES Y CERRADURAS*SEG?N P?LIZA*")
,17 => array('cod'=>'RC-LIDE','tipo'=>'V','Descripcion'=>"RC-LIDE - RCAUTOLIDER- RESPONSABILIDAD CIVIL POR LESIONES Y/O MUERTE  Y DA?OS A COSAS DE TERCEROS NO TRANSPORTADOS Y POR LESIONES Y/O MUERTE UNICAMENTE DE TERCEROS TRANSPORTADOS. LIMITE RC - $3.000.000")
,18 => array('cod'=>'B6-1','tipo'=>'V','Descripcion'=>"B6-1 - B6 ? RESPONSABILIDAD CIVIL POR LESIONES Y/O MUERTE  Y DA?OS A COSAS DE TERCEROS NO TRANSPORTADOS Y POR LESIONES Y/O MUERTE UNICAMENTE DE TERCEROS TRANSPORTADOS. LIMITE RC - $3.000.000, MAS DA?OS TOTALES A CONSECUENCIA INCENDIO Y ROBO O HURTO,  TERREMOTO, ")
,19 => array('cod'=>'B6-2','tipo'=>'V','Descripcion'=>"B6-2 - B6 ? RESPONSABILIDAD CIVIL POR LESIONES Y/O MUERTE  Y DA?OS A COSAS DE TERCEROS NO TRANSPORTADOS Y POR LESIONES Y/O MUERTE UNICAMENTE DE TERCEROS TRANSPORTADOS. LIMITE RC - $3.000.000, MAS DA?OS TOTALES A CONSECUENCIA INCENDIO Y ROBO O HURTO,  TERREMOTO, ")
,20 => array('cod'=>'B6-3','tipo'=>'V','Descripcion'=>"B6-3 - B6 ? RESPONSABILIDAD CIVIL POR LESIONES Y/O MUERTE  Y DA?OS A COSAS DE TERCEROS NO TRANSPORTADOS Y POR LESIONES Y/O MUERTE UNICAMENTE DE TERCEROS TRANSPORTADOS. LIMITE RC - $3.000.000, MAS DA?OS TOTALES A CONSECUENCIA INCENDIO Y ROBO O HURTO,  TERREMOTO, ")
,23 => array('cod'=>'RC-TOP','tipo'=>'V','Descripcion'=>"RC-TOP - RC-TOP-RESPONSABILIDAD CIVIL POR LESIONES Y/O MUERTE  Y DA?OS A COSAS DE TERCEROS NO TRANSPORTADOS Y POR LESIONES Y/O MUERTE UNICAMENTE DE TERCEROS TRANSPORTADOS. LIMITE RC - $3.000.000")
,24 => array('cod'=>'TOP','tipo'=>'C','Descripcion'=>"TOP - DA?OS TOTALES A CONSECUENCIA DE ACCIDENTES, TERREMOTO, INUNDACION DESBORDAMIENTO, DA?OS TOTALES  Y PARCIALES A CAUSA DE INCENDIO, ROBO/HURTO-CON FRANQUICIA 10%- *INCLUYE ADICIONALES A LA COBERTURA: REPOSICION ANUAL DE  CRISTALES, CERRADURAS Y CUBIERTAS, G")
,25 => array('cod'=>'B6-4','tipo'=>'V','Descripcion'=>"B6-4 - B6 ? RESPONSABILIDAD CIVIL POR LESIONES Y/O MUERTE  Y DA?OS A COSAS DE TERCEROS NO TRANSPORTADOS Y POR LESIONES Y/O MUERTE UNICAMENTE DE TERCEROS TRANSPORTADOS. LIMITE RC - $3.000.000, MAS DA?OS TOTALES A CONSECUENCIA INCENDIO Y ROBO O HURTO,  TERREMOTO, ")
,26 => array('cod'=>'ZAFRA LTDA','tipo'=>'V','Descripcion'=>"ZAFRA LTDA - PLAN ZAFRA-RESP. CIVIL LIMITADA HASTA$100.000-NO CUBRE PASAJEROS TRANSPORTADOS")
,28 => array('cod'=>'RC 90','tipo'=>'V','Descripcion'=>"RC 90 - RC 90- RESP. CIVIL HACIA TERCEROS Y/O COSAS DE TERCEROS LIMITADA HASTA $ 90.000.-")
,29 => array('cod'=>'B6-5','tipo'=>'V','Descripcion'=>"B6-5 - B6 ? RESPONSABILIDAD CIVIL POR LESIONES Y/O MUERTE  Y DA?OS A COSAS DE TERCEROS NO TRANSPORTADOS Y POR LESIONES Y/O MUERTE UNICAMENTE DE TERCEROS TRANSPORTADOS. LIMITE RC - $3.000.000, MAS DA?OS TOTALES A CONSECUENCIA INCENDIO Y ROBO O HURTO,  TERREMOTO,")
,30 => array('cod'=>'CITRUS','tipo'=>'V','Descripcion'=>"CITRUS - RCCITRUS- RESPONSABILIDAD CIVIL HASTA $ 10.000.000")
,31 => array('cod'=>'PREMIUM','tipo'=>'V','Descripcion'=>"PREMIUM - DA?OS TOTALES A CONSECUENCIA DE ACCIDENTES, TERREMOTO, INUNDACION DESBORDAMIENTO, DA?OS TOTALES  Y PARCIALES A CAUSA DE INCENDIO, ROBO/HURTO-SIN FRANQUICIA. -*INCLUYE ADICIONALES A LA COBERTURA: REPOSICION ANUALPARABRISAS Y/O LUNETAS, DE  CRISTALES Y CERR")
);
?>