<body style="background-color:#FFFFFF">
<style> 
span.requerido{
color:#F00003;
font-weight:bold;
}
</style>
<center>
 <div> <h3 style="color:RED;"> {MENSAJE} </h3> </div>
</center>
<center>
<div id='idformulariosolicitud' {STYLE_ADICIONAL}>
   <form action='solicitud.php' method='POST' id='formSolicitud' name='formSolicitud'>  
   <input type='hidden' name='Confirmar' id="Confirmar" value='1' />
   <input type='hidden' name='idSolicitud' id="idSolicitud" value='{ID_SOLICITUD}' />
   <input type='hidden' name='hdnIdBIN' id="hdnIdBIN" value='{ID_BIN}' />
   <input type='hidden' name='hdnDocumento' id="hdnDocumento" value='{DOCUMENTO}' />
   <input type='hidden' name='hdnidTipoDocumento' id="hdnidTipoDocumento" value='{ID_TIPODOC}' />
   <input type='hidden' name='hdnUrlBack' id="hdnUrlBack" value='{URL_BACK}' />   
   <input type='hidden' name='hdnExisteDocumento' id="hdnExisteDocumento" value='0' />   
   
   <input type='hidden' name='fPREMIO' id="fPREMIO" value='{fPREMIO}' />   
   <input type='hidden' name='iCUPON' id="iCUPON" value='{iCUPON}' />   
   <input type='hidden' name='fIMPORTECUOTA' id="fIMPORTECUOTA" value='{fIMPORTECUOTA}' />   
   <input type='hidden' name='bESTAXI' id="bESTAXI" value='{bESTAXI}' />   
   <input type='hidden' name='URL_PRINCIPAL_ENCODE' id="URL_PRINCIPAL_ENCODE" value='{URL_PRINCIPAL_ENCODE}' />   
   <input type='hidden' name='sCadenaAll' id="sCadenaAll" value='{sCadenaAll}' />   
  
   <table cellpadding="0" cellspacing="0" width="800" border="0" align="center" class="TablaGeneral">
  
   <tr>
    <td valign="top" style="padding-top:20px">
    
	    <table cellspacing="0" cellpadding="0" width="90%" align="center" border="0" class="TablaGeneral">
			<tbody><tr>
				<td valign="middle" align="center" height="20" class="Titulo">
					SOLICITUD DE TITULAR</td>
			</tr>
			<tr>
				<td align="left" bgcolor="#ffffff" style="height:20px;color:red;font-weight:bold">
				<? echo $msje; ?>
				</td>
			</tr>
			<tr>
				<td align="left">
				<input type="radio" id="rdbTipoPersona" name="rdbTipoPersona" value="1" onclick="setearCampos(1)" tabindex="1" {SELECTED_PERSONA_FISICA} />Persona F&iacute;sica
			
				<input type="radio" id="rdbTipoPersona" name="rdbTipoPersona" value="2" onclick="setearCampos(2)" tabindex="2" {SELECTED_PERSONA_JURIDICA} />Persona Jur&iacute;dica
				</td>
			</tr>
			<tr>
				<td class="SubHead" align="left" bgcolor="#ffffff">
					<table id="TablaTitular" cellspacing="5" cellpadding="0" width="100%" border="0" class="TablaGeneral">
						<tbody>
						<tr>
							<td class="subTitulo" align="left" height="30" colspan="5">
								<label id="Solicitudes_plCuenta">
								</label>
							</td>
						</tr>						
						<tr>
							<td>
								<span class='requerido'>(*)</span>Fecha de Presentaci&oacute;n:
							</td>
							<td>
								<span class='requerido'>(*)</span>Fecha de Solicitud
							</td>
							<td class="SubHead">
								N&uacute;mero:
							</td>	
							<td class="SubHead">
								<span class='requerido'>(*)</span>BIN:
							</td>
						</tr>
						<tr>
							<td valign="top">
							<input id="dFechaPresentacion" name="dFechaPresentacion" type="text" class="FormTextBox" style="width:200px;" onchange="validarFecha(this,'Fecha de Presentacion');" tabindex="3" value="{FECHA_PRESENTACION}">
							</td>
							<td valign="top">
							<input id="dFechaSolicitud" name="dFechaSolicitud" type="text" class="FormTextBox" style="width:200px;" onchange="validarFecha(this,'Fecha de Solicitud')" tabindex="4" value="{FECHA_SOLICITUD}">
							</td>	
							<td valign="top">
							<input id="sNumero" name="sNumero" type="text" class="FormTextBox" style="width:200px;" value="{NUMERO_SOLICITUD}" {READONLY_CAMPO}>
							</td>	
							<td valign="top">
							<select id="idBIN" name="idBIN" class="FormTextBox" style="width:200px;" {DISABLED_CAMPO}>
								{optionsBin}
							</select>
							</td>	
						</tr>
						<tr>							
							<td>
								<span class='requerido'>(*)</span>Canal:								
							</td>
							<td class="SubHead">
								<span id="Solicitudes_plEmpleado_lblLabel"><span class='requerido'>(*)</span>Promotor:</span>
							</td>	
							<td colspan="2"></td>				
						</tr>
						<tr>
							<td valign="top">
								<select id="idCanal" name="idCanal" class="FormTextBox" style="width:200px;" tabindex="5">
								{optionsCanales}
								</select>
							</td>																																		
							<td class="SubHead">
								<select name="idPromotor" id="idPromotor" class="FormTextBox" style="width:200px;" tabindex="6">
								{optionsPromotores}
								</select>
							</td>
							<td colspan="2"></td>
						</tr>	
						</tr>
						<tr>
							<td class="subTitulo" align="left" height="30" colspan="5">
								<label id="Solicitudes_plTituloTitular">Datos del Titular:
								</label>
							</td>
						</tr>
						<tr>
							<td class="SubHead">
								<span id="Solicitudes_plApellido_lblLabel"><span class='requerido'>(*)</span>Apellidos(de soltero/a):</span>
							</td>
							<td class="SubHead">
								<span id="Solicitudes_plNombre_lblLabel"><span class='requerido'>(*)</span>Nombre:</span>
							</td>								
							<td class="SubHead">
								<span id="Solicitudes_plEstadoCivil_lblLabel"><span class='requerido'>(*)</span>Estado Civil:</span>
							</td>		
							<td class="SubHead">
								<span id="Solicitudes_plNacionalidad_lblLabel"><span class='requerido'>(*)</span>Nacionalidad:</span>
							</td>
							<td>
								<span id="Solicitudes_plRazonSocial_lblLabel">Razon Social:</span>
							</td>								
						</tr>
						<tr>
							<td valign="top">
								<input id="sApellido" name="sApellido" type="text" class="FormTextBox" style="width:200px;" onKeyUp="aMayusculas_SinEspeciales(this.value,this.id);" value="{APELLIDO}" tabindex="7" maxlength="50"></td>
							<td valign="top">
								<input id="sNombre"  name="sNombre" type="text" class="FormTextBox" style="width:200px;" onKeyUp="aMayusculas_SinEspeciales(this.value,this.id);" value="{NOMBRE}" tabindex="8" maxlength="50">
							</td>														
							<td class="SubHead">
								<select name="idEstadoCivil" id="idEstadoCivil" class="FormTextBox" style="width:200px;" tabindex="9">
									{optionsEstadoCivil}
								</select>
							</td>
							<td class="SubHead">
								<select name="idNacionalidad" id="idNacionalidad" class="FormTextBox" style="width:200px;" tabindex="10">
									{optionsNacionalidad}
								</select>
							</td>	
							<td>
								<input id="sRazonSocial" name="sRazonSocial" type="text" class="FormTextBox" style="width:200px;" {DISABLED_CAMPO} value="{RAZON_SOCIAL}" onKeyUp="aMayusculas(this.value,this.id)" tabindex="11"></td>
							</td>
						</tr>
						<tr>
							<td class="SubHead">
								<span id="dnn_ctr608_Solicitudes_plTipoDocumento_lblLabel"><span class='requerido'>(*)</span>Tipo de Documento:</span>
							</td>
							<td class="SubHead">
								<span id="dnn_ctr608_Solicitudes_plNroDocumento_lblLabel"><span class='requerido'>(*)</span>N&uacute;mero de Documento:</span>
							</td>
							<td class="SubHead">
								<span id="Solicitudes_plCuit_lblLabel"><span class='requerido'>(*)</span>CUIT:</span>
							</td>
							<td class="SubHead">
								<span id="Solicitudes_plFechaNac_lblLabel"><span class='requerido'>(*)</span>Fecha de Nacimiento:</span>
							</td>
							<td class="SubHead">
								<span id="Solicitudes_Sexo_lblLabel"><span class='requerido'>(*)</span>Sexo:</span>
							</td>		
						</tr>
						<tr>
							<td class="SubHead" valign="top">
							<select id="idTipoDocumento" name="idTipoDocumento" class="FormTextBox" tabindex="12">
								{optionsTipoDoc}
							</select>
							</td>
							<td class="SubHead" valign="top">
								<input id="sDocumento" name="sDocumento" type="text" class="FormTextBox" onblur="this.value=numero_parse_entero(this.value);" value="{DOCUMENTO}" tabindex="13">
							</td>
							<td class="SubHead">
								<input name="sCuit" type="text" id="sCuit" class="FormTextBox" value="{CUIT}" tabindex="14">
							</td>
							<td class="SubHead">
								<input type="text" id="dFechaNacimiento" name="dFechaNacimiento" style="width:110px;" onblur="validarFecha(this,'Fecha de Nacimiento');" value="{FECHA_NACIMIENTO}" tabindex="15"/>
							</td>
							<td valign="top">
								<select id="idSexo" name="idSexo" style="width:120px;" tabindex="16" onchange="GenerarCuit(this.value);">
								{optionsSexos}
								</select>
							</td>
						</tr>
						<tr>
							<td class="SubHead">
							<span id="Solicitudes_ApellidoConyuge_lblLabel">Apellido C&oacute;nyuge:</span>
							</td>
							<td class="SubHead">
							<span id="Solicitudes_NombreConyuge_lblLabel">Nombre C&oacute;nyuge:</span>
							</td>
							<td class="SubHead">
							<span id="Solicitudes_TipoDocConyuge_lblLabel">Tipo doc. C&oacute;nyuge:</span>
							</td>
							<td class="SubHead">
							<span id="Solicitudes_NumDocConyuge_lblLabel">N&uacute;mero doc. C&oacute;nyuge:</span>
							</td>
							<td class="SubHead">
							<span id="Solicitudes_plHijo_lblLabel">Hijos:</span>
							</td>
						</tr>
						<tr>
							<td class="SubHead">
							<input name="sApellidoConyuge" type="text" id="sApellidoConyuge" class="FormTextBox" onKeyUp="aMayusculas(this.value,this.id)" value="{APELLIDO_CONYUGE}" tabindex="17">
							</td>
							<td class="SubHead">
							<input name="sNombreConyuge" type="text" id="sNombreConyuge" class="FormTextBox" onKeyUp="aMayusculas(this.value,this.id)" value="{NOMBRE_CONYUGE}" tabindex="18">
							</td>						
							<td class="SubHead" valign="top">
								<select name="idTipoDocumentoConyuge" id="idTipoDocumentoConyuge" class="FormTextBox" tabindex="19">
									{optionsTipoDoc}
								</select>
							</td>
							<td class="SubHead" valign="top">
								<input name="sDocumentoConyuge" type="text" id="sDocumentoConyuge" class="FormTextBox" onblur="this.value=numero_parse_entero(this.value);" value="{DOCUMENTO_CONYUGE}" tabindex="20">
							</td>
							<td class="SubHead">
								<input name="iHijos" type="text" id="iHijos" class="FormTextBox" style="width:20px;" value="{HIJOS}" tabindex="21">
							</td>
						</tr>
						</tbody>
						</table>
					</td>
				</tr>
				<tr>
					<td align="left">
					</td>
				</tr>
				<tr>
					<td bgcolor="#ffffff">
					<div id="dnn_ctr608_Solicitudes_pnDomicilio">
						
						<table id="TablaDomicilio" cellspacing="5" cellpadding="0" width="100%" border="0" class="TablaGeneral">
							<tr>
								<td class="subTitulo" align="left" height="30" colspan="5">
									  <span id="Solicitudes_plTituloDomicilio">Datos del Domicilio del Titular:</span>
								</td>
							</tr>
							<tr>
								<td class="SubHead">
								<span id="Solicitudes_plProvincia_lblLabel"><span class='requerido'>(*)</span>Provincia:</span>
								</td>
								<td class="SubHead">
								  <span id="Solicitudes_plLocalidad_lblLabel"><span class='requerido'>(*)</span>Localidad:</span>
								</td>
								<td class="SubHead">
								  <span id="Solicitudes_plCPostal_lblLabel"><span class='requerido'>(*)</span>C.P.:</span>
								</td>
								
							</tr>
							<tr>
								<td class="SubHead" align="left">
									<select name="idProvinciaTitu" id="idProvinciaTitu" class="FormTextBox" tabindex="22">
										{optionsProviTitu}
									</select>
								</td>	
								<td class="SubHead" align="left">
									<select name="idLocalidadTitu" id="idLocalidadTitu" class="FormTextBox" tabindex="23">
										{optionsLocalidades}
									</select>
								<td class="SubHead" align="left">
									<input name="sCodigoPostalTitu" type="text" id="sCodigoPostalTitu" class="FormTextBox" onchange="copiarValor(sCodigoPostalResumen,this.value)" value="{CODIGO_POSTAL}" tabindex="24" maxlength="10">
								</td>
								
							</tr>
							<tr>
								<td class="SubHead">
								  <span id="Solicitudes_plCalleTitu_lblLabel"><span class='requerido'>(*)</span>Calle:</span>
								</td>
								<td class="SubHead">
								  <span id="Solicitudes_plNroTitu_lblLabel">Nro.:</span>
								</td>								
								<td class="SubHead">
								  <span id="Solicitudes_plDomicilio_lblLabel">Block:</span>
								</td>
								<td class="SubHead">
								  <span id="Solicitudes_plDomicilio_lblLabel">Piso:</span>
								</td>
								<td class="SubHead">
								  <span id="Solicitudes_plDomicilio_lblLabel">Departamento:</span>
								</td>								
							</tr>
							<tr>
								<td class="SubHead" align="left">
									<input name="sCalleTitu" type="text" id="sCalleTitu" class="FormTextBox" style="width:200px;" onKeyUp="aMayusculas(this.value,this.id)" onblur="copiarValor(sCalleResumen,this.value)" value="{CALLE}" tabindex="25" maxlength="45"/></td>
								<td class="SubHead" align="left">
									<input name="sNumeroCalleTitu" type="text" id="sNumeroCalleTitu" class="FormTextBox" style="width:50px;" onblur="copiarValor(sNumeroCalleResumen,this.value)" value="{NUMERO_CALLE}" tabindex="26" maxlength="6"/></td>												
								<td class="SubHead" align="left">
									<input name="sBlockTitu" type="text" id="sBlockTitu" class="FormTextBox" style="width:50px;" onblur="copiarValor(sBlockResumen,this.value)" value="{BLOCK}" tabindex="27" maxlength="4"/></td>
								<td class="SubHead" align="left">
									<input name="sPisoTitu" type="text" id="sPisoTitu" class="FormTextBox" style="width:50px;" onblur="copiarValor(sPisoResumen,this.value)" value="{PISO}" tabindex="28" maxlength="4"/></td>
								<td class="SubHead" align="left">
									<input name="sDepartamentoTitu" type="text" id="sDepartamentoTitu" class="FormTextBox" style="width:200px;" onblur="copiarValor(sDepartamentoResumen,this.value)" value="{DEPARTAMENTO}" tabindex="29" maxlength="4"/></td>	
							</tr>
							<tr>
								<td class="SubHead">
								  <span id="Solicitudes_plDomicilio_lblLabel">Entre Calles:</span></td>
								<td class="SubHead">
								  <span id="Solicitudes_plDomicilio_lblLabel">Barrio:</span></td>
								<td class="SubHead">
								  <span id="Solicitudes_plDomicilio_lblLabel">Manzana:</span></td>
								<td class="SubHead">
								  <span id="Solicitudes_plDomicilio_lblLabel">Lote:</span></td>
							</tr>
							<tr>
								<td class="SubHead" align="left">
									<input name="sEntreCalleTitu" type="text" id="sEntreCalleTitu" class="FormTextBox" style="width:200px;" onKeyUp="aMayusculas(this.value,this.id)" onblur="copiarValor(sEntreCalleResumen,this.value)"  value="{ENTRE_CALLE}" tabindex="30" maxlength="100"/></td>				
								<td class="SubHead" align="left">
									<input name="sBarrioTitu" type="text" id="sBarrioTitu" class="FormTextBox" style="width:200px;" onKeyUp="aMayusculas(this.value,this.id)" onblur="copiarValor(sBarrioResumen,this.value)"  value="{BARRIO}" tabindex="31" maxlength="45"/></td>
								<td class="SubHead" align="left">
									<input name="sManzanaTitu" type="text" id="sManzanaTitu" class="FormTextBox" style="width:50px;" onKeyUp="aMayusculas(this.value,this.id)" onblur="copiarValor(sManzanaResumen,this.value)" value="{MANZANA}" tabindex="32" maxlength="4"/></td>
								<td class="SubHead" align="left">
									<input name="sLoteTitu" type="text" id="sLoteTitu" class="FormTextBox" style="width:50px;" onKeyUp="aMayusculas(this.value,this.id)" onblur="copiarValor(sLoteResumen,this.value)" value="{LOTE}" tabindex="33" maxlength="4"/></td>	
							</tr>												
						</table>
					</div>
					</td>
				</tr>
				<tr>
					<td>
					<div id="dnn_ctr608_Solicitudes_pnResumen">
						<table id="TablaDomicilio" cellspacing="5" cellpadding="0" width="100%" border="0" class="TablaGeneral">
							<tr>
								<td class="subTitulo" align="left" height="30" colspan="5">
									  <span id="Solicitudes_plTituloDomicilio">Enviar Resumen:</span>
								</td>
							</tr>
								<tr>
								<td class="SubHead">
								<span id="Solicitudes_plProvincia_lblLabel"><span class='requerido'>(*)</span>Provincia:</span>
								</td>
								<td class="SubHead">
								  <span id="Solicitudes_plLocalidad_lblLabel"><span class='requerido'>(*)</span>Localidad:</span>
								</td>
								<td class="SubHead">
								  <span id="Solicitudes_plCPostal_lblLabel"><span class='requerido'>(*)</span>C.P.:</span>
								</td>								
							</tr>
							<tr>
								<td class="SubHead" align="left">
								<select name="idProvinciaResumen" id="idProvinciaResumen" class="FormTextBox" tabindex="34">
									{optionsProviResumen}
								</select>
								</td>	
								<td class="SubHead" align="left">
								<select name="idLocalidadResumen" id="idLocalidadResumen" class="FormTextBox" tabindex="35">
									{optionsLocalidadesResumen}
								</select>
								</td>
								<td class="SubHead" align="left">
									<input name="sCodigoPostalResumen" type="text" id="sCodigoPostalResumen" class="FormTextBox" value="{CP_RESUMEN}" tabindex="36" maxlength="10">
								</td>
								
							</tr>							
							<tr>
								<td class="SubHead">
								  <span id="Solicitudes_plCalleResumen_lblLabel"><span class='requerido'>(*)</span>Calle:</span>
								</td>
								<td class="SubHead">
								  <span id="Solicitudes_plNroResumen_lblLabel">Nro.:</span>
								</td>								
								<td class="SubHead">
								  <span id="Solicitudes_plDomicilio_lblLabel">Block:</span>
								</td>
								<td class="SubHead">
								  <span id="Solicitudes_plDomicilio_lblLabel">Piso:</span>
								</td>
								<td class="SubHead">
								  <span id="Solicitudes_plDomicilio_lblLabel">Departamento:</span>
								</td>								
							</tr>
							<tr>
								<td class="SubHead" align="left">
									<input name="sCalleResumen" type="text" id="sCalleResumen" class="FormTextBox" style="width:200px;" onKeyUp="aMayusculas(this.value,this.id)" value="{CALLE_RESUMEN}" tabindex="37" maxlength="45"/></td>
								<td class="SubHead" align="left">
									<input name="sNumeroCalleResumen" type="text" id="sNumeroCalleResumen" class="FormTextBox" style="width:50px;" value="{NUMERO_CALLE_RESUMEN}" tabindex="38" maxlength="6"/></td>												
								<td class="SubHead" align="left">
									<input name="sBlockResumen" type="text" id="sBlockResumen" class="FormTextBox" style="width:50px;" value="{BLOCK_RESUMEN}" tabindex="39" maxlength="4"/></td>
								<td class="SubHead" align="left">
									<input name="sPisoResumen" type="text" id="sPisoResumen" class="FormTextBox" style="width:50px;" value="{PISO_RESUMEN}" tabindex="40" maxlength="4"/></td>
								<td class="SubHead" align="left">
									<input name="sDepartamentoResumen" type="text" id="sDepartamentoResumen" class="FormTextBox" style="width:200px;" value="{DPTO_RESUMEN}" tabindex="41" maxlength="4"/></td>	
							</tr>
							<tr>
								<td class="SubHead">
								  <span id="Solicitudes_plDomicilio_lblLabel">Entre Calles:</span></td>
								<td class="SubHead">
								  <span id="Solicitudes_plDomicilio_lblLabel">Barrio:</span></td>
								<td class="SubHead">
								  <span id="Solicitudes_plDomicilio_lblLabel">Manzana:</span></td>
								<td class="SubHead">
								  <span id="Solicitudes_plDomicilio_lblLabel">Lote:</span></td>
							</tr>
							<tr>
								<td class="SubHead" align="left">
								<input name="sEntreCalleResumen" type="text" id="sEntreCalleResumen" class="FormTextBox" style="width:200px;" onKeyUp="aMayusculas(this.value,this.id)" value="{ENTRE_CALLE_RESUMEN}" tabindex="42" maxlength="100"/></td>				
								<td class="SubHead" align="left">
								<input name="sBarrioResumen" type="text" id="sBarrioResumen" class="FormTextBox" style="width:200px;" value="{BARRIO_RESUMEN}" onKeyUp="aMayusculas(this.value,this.id)" tabindex="43" maxlength="50"/></td>
								<td class="SubHead" align="left">
								<input name="sManzanaResumen" type="text" id="sManzanaResumen" class="FormTextBox" style="width:50px;" value="{MANZANA_RESUMEN}" tabindex="44" maxlength="4"/></td>
								<td class="SubHead" align="left">
								<input name="sLoteResumen" type="text" id="sLoteResumen" class="FormTextBox" style="width:50px;" value="{LOTE_RESUMEN}" tabindex="45" maxlength="4"/></td>	
							</tr>	
						</table>	
					</div>
					</td>
				</tr>
				<tr>
					<td bgcolor="#ffffff">
					
					<div id="dnn_ctr608_Solicitudes_pnIngresos">
				
				<table id="TablaCondicion" cellspacing="5" cellpadding="0" width="100%" border="0" class="TablaGeneral">
					<tr>
						<td class="subTitulo" align="left" height="30" colspan="5">
						<span id="Solicitudes_plTituloIngresos">Datos Laborales:</span>
						</td>
					</tr>
					<tr>
						<td class="SubHead">
						    <span id="Solicitudes_plRazonSocial_lblLabel"><span class='requerido'>(*)</span>Raz&oacute;n social:</span>
						</td>
						<td class="SubHead">
						    <span id="Solicitudes_plCuitEmpleador_lblLabel">CUIT. Empleador:</span>
						</td>
						<td class="SubHead">
						    <span id="Solicitudes_plCondAFIP_lblLabel"><span class='requerido'>(*)</span>Condici&oacute;n AFIP:</span>
						</td>
						<td class="SubHead">
							<span id="Solicitudes_plCondLab_lblLabel">Condici&oacute;n Laboral:</span>
						</td>
						<td class="SubHead">
							<span id="Solicitudes_plReparticion_lblLabel">Repartici&oacute;n:</span>
						</td>
						
					</tr>	
						<tr>
						<td class="SubHead" align="left">
						<input name="sRazonSocialLab" type="text" id="sRazonSocialLab" class="FormTextBox" style="width:200px;" onKeyUp="aMayusculas(this.value,this.id)" value="{RAZON_SOCIAL_LAB}" tabindex="46"/>
						</td>
						<td class="SubHead" align="left">
						<input name="sCuitEmpleador" type="text" id="sCuitEmpleador" class="FormTextBox" style="width:200px;" value="{CUIT_EMPLEADOR}" tabindex="47"/>
						</td>
						<td class="SubHead" align="left">
							<select name="idCondicionAFIPLab" id="idCondicionAFIPLab" class="FormTextBox" style="width:200px;" value="{CONDICION_AFIP_LAB}" tabindex="48">
								{optionsTiposIva}
							</select>
						</td>
						<td class="SubHead" align="left">
							<select name="idCondicionLaboral" id="idCondicionLaboral" class="FormTextBox" style="width:200px;" tabindex="49" onchange="setearCondicionAfip(this.value)">
								{optionsCondicionesLab}
							</select>
						</td>	
						<td class="SubHead" align="left">
							<input name="sReparticion" type="text" id="sReparticion" class="FormTextBox" style="width:200px;" onKeyUp="aMayusculas(this.value,this.id)" value="{REPARTICION_LAB}" tabindex="50"/>
						</td>
					</tr>		
					<tr>
						<td class="SubHead">
						    <span id="Solicitudes_plActividad_lblLabel">Actividad:</span>
						</td>								
						</td>
						<td class="SubHead">
							<span id="Solicitudes_plCalle_lblLabel">Calle:</span>
						</td>
						<td class="SubHead">
						  	<span id="Solicitudes_plNro_lblLabel">Nro.:</span>
						</td>
						<td class="SubHead">
						  	<span id="Solicitudes_plBlock">Block:</span>
						</td>
						<td align="left">
							<table id="TablaCondicion" cellspacing="0" cellpadding="0" width="100%" border="0" class="TablaGeneral">
							<tr>
								<td class="SubHead">
								<span id="Solicitudes_plPiso_lblLabel">Piso:</span>
								</td>
								<td class="SubHead">
								 <span id="Solicitudes_plDpto_lblLabel">Oficina:</span>
								</td>
							</tr>
							</table>
						</td>
					</tr>	
					<tr>
						<td class="SubHead" align="left">
							<input name="sActividad" type="text" id="sActividad" class="FormTextBox" style="width:200px;" onKeyUp="aMayusculas(this.value,this.id)" value="{ACTIVIDAD_LAB}" tabindex="51"/>
						<td class="SubHead" align="left">
							<input name="sCalleLab" type="text" id="sCalleLab" class="FormTextBox" style="width:200px;" onKeyUp="aMayusculas(this.value,this.id)" value="{CALLE_LAB}" tabindex="52"/></td>
						<td class="SubHead" align="left">
							<input name="sNumeroCalleLab" type="text" id="sNumeroCalleLab" class="FormTextBox" style="width:50px;" value="{NUMERO_CALLE_LAB}" tabindex="53"/></td>
						<td class="SubHead" align="left">
							<input name="sBlockLab" type="text" id="sBlockLab" class="FormTextBox" style="width:30px;" value="{BLOCK_LAB}" tabindex="54"/></td>	
						<td>
							<table id="TablaCondicion" cellspacing="0" cellpadding="0" width="100%" border="0">
							<tr>	
							<td class="SubHead" align="left">
								<input name="sPisoLab" type="text" id="sPisoLab" class="FormTextBox" style="width:30px;" value="{PISO_LAB}" tabindex="55"/></td>
							<td class="SubHead" align="left">
								<input name="sOficinaLab" type="text" id="sOficinaLab" class="FormTextBox" style="width:30px;" value="{OFICINA_LAB}" tabindex="56"/></td>
							</tr>
							</table>
						</td>		
					</tr>
					<tr>
						<td class="SubHead">
						  <span id="Solicitudes_plBarrio">Barrio:</span>
						</td>
						<td class="SubHead">
							<span id="Solicitudes_plManzana_lblLabel">Manzana:</span>
						</td>
						<td class="SubHead">
							<span id="Solicitudes_plProvincia_lblLabel"><span class='requerido'>(*)</span>Provincia:</span>
						</td>
						<td class="SubHead">
						  <span id="Solicitudes_plLocalidad_lblLabel"><span class='requerido'>(*)</span>Localidad:</span>
						</td>
						<td class="SubHead">
						  <span id="Solicitudes_plCP"><span class='requerido'>(*)</span>CP.:</span>
						</td>
					</tr>	
						<tr>
						<td class="SubHead" align="left">
							<input name="sBarrioLab" type="text" id="sBarrioLab" class="FormTextBox" style="width:200px;" onKeyUp="aMayusculas(this.value,this.id)" value="{BARRIO_LAB}" tabindex="57"/></td>	
						<td class="SubHead" align="left">
							<input name="sManzanaLab" type="text" id="sManzanaLab" class="FormTextBox" style="width:30px;" onKeyUp="aMayusculas(this.value,this.id)" value="{MANZANA_LAB}" tabindex="58"/></td>								
						<td class="SubHead" align="left">
							<select name="idProvinciaLab" id="idProvinciaLab" class="FormTextBox" tabindex="59">
								{optionsProviLab}
							</select>
						</td>	
						<td class="SubHead" align="left">
							<select name="idLocalidadLab" id="idLocalidadLab" class="FormTextBox" style="width:200px" tabindex="60">
								{optionsLocalidadesLab}
							</select>
						</td>	
						<td class="SubHead" align="left">
						<input name="sCodigoPostalLab" type="text" id="sCodigoPostalLab" class="FormTextBox" style="width:100px;" value="{CP_LAB}" tabindex="61"/></td>	
					</tr>										
					<tr>
						<td class="SubHead">
						<span id="Solicitudes_plTelefonoLaboral1_lblLabel"><span class='requerido'>(*)</span>Telefono laboral 1:</span>
						</td>
						<td class="SubHead">
						  <span id="Solicitudes_plInterno_lblLabel">Interno 1:</span>
						</td>
						<td class="SubHead">
						  <span id="Solicitudes_plFechaIngreso">Fecha Ingreso 1:</span>
						</td>
						<td class="SubHead">
						<span id="Solicitudes_plCargo1_lblLabel"><span class='requerido'>(*)</span>Cargo 1:</span>
						</td>
						<td class="SubHead">
						  <span id="Solicitudes_plIngresoNetoMensual_lblLabel">Ingreso neto mensual 1:</span>
						</td>
					</tr>	
						<tr>
						<td class="SubHead" align="left">
						<input name="sTelLaboral1Prefijo" type="text" id="sTelLaboral1Prefijo" class="FormTextBox" style="width:50px;" onblur="this.value=numero_parse_entero(this.value);" value="{TEL1_PREFIJO}" tabindex="62" maxlength="4"/>&nbsp;-
						<input name="sTelLaboral1Numero" type="text" id="sTelLaboral1Numero" class="FormTextBox" style="width:120px;" onblur="this.value=numero_parse_entero(this.value);" value="{TEL1_NUMERO}" tabindex="63" maxlength="10"/></td>
						<td class="SubHead" align="left">
						<input name="sInterno1" type="text" id="sInterno1" class="FormTextBox" style="width:200px;" onblur="this.value=numero_parse_entero(this.value);" value="{INTERNO1}" tabindex="64"/></td>
						<td class="SubHead" align="left">
						<input name="dFechaIngreso1" type="text" id="dFechaIngreso1" class="FormTextBox" style="width:200px;" onblur="validarFecha(this,'Fecha de Ingreso 1')" value="{FECHA_INGRESO1}" tabindex="65"/></td>
						<td class="SubHead" align="left">
						<input name="sCargo1" type="text" id="sCargo1" class="FormTextBox" style="width:200px;" value="{CARGO1}" onKeyUp="aMayusculas(this.value,this.id)" tabindex="66"/></td>
						<td class="SubHead" align="left">
						<input name="fIngresoNetoMensual1" type="text" id="fIngresoNetoMensual1" class="FormTextBox" style="width:200px;" value="{ING_MESUAL1}" tabindex="67"/></td>
					</tr>
					<tr>
						<td class="SubHead">
						  <span id="Solicitudes_plTelefonoLaboral2">Telefono laboral 2:</span>
						</td>
						<td class="SubHead">
						<span id="Solicitudes_plInterno2_lblLabel">Interno 2:</span>
						</td>
						<td class="SubHead">
						  <span id="Solicitudes_plFechaIngreso2_lblLabel">Fecha ingreso 2:</span>
						</td>
						<td class="SubHead">
						  <span id="Solicitudes_plCargo2">Cargo 2:</span>
						</td>
						<td class="SubHead">
							<span id="Solicitudes_plIngresoNetoMensual_lblLabel">Ingreso neto mensual 2:</span>
						</td>
					</tr>	
						<tr>
						<td class="SubHead" align="left">
							<input name="sTelLaboral2Prefijo" type="text" id="sTelLaboral2Prefijo" class="FormTextBox" style="width:50px;" onblur="this.value=numero_parse_entero(this.value);" value="{TEL2_PREFIJO}" tabindex="68" maxlength="4"/>&nbsp;-
							<input name="sTelLaboral2Numero" type="text" id="sTelLaboral2Numero" class="FormTextBox" style="width:120px;" onblur="this.value=numero_parse_entero(this.value);" value="{TEL2_NUMERO}" tabindex="69" maxlength="10"/></td>
						<td class="SubHead" align="left">
							<input name="sInterno2" type="text" id="sInterno2" class="FormTextBox" style="width:200px;" value="{INTERNO2}" tabindex="70"/></td>
						<td class="SubHead" align="left">
							<input name="dFechaIngreso2" type="text" id="dFechaIngreso2" class="FormTextBox" style="width:200px;" onchange="validarFecha(this,'Fecha de Ingreso 2')" value="{FECHA_INGRESO2}" tabindex="71"/></td>
						<td class="SubHead" align="left">
							<input name="sCargo2" type="text" id="sCargo2" class="FormTextBox" style="width:200px;" value="{CARGO2}" onKeyUp="aMayusculas(this.value,this.id)" tabindex="72" /></td>
						<td class="SubHead" align="left">
							<input name="fIngresoNetoMensual2" type="text" id="fIngresoNetoMensual2" class="FormTextBox" style="width:200px;" value="{ING_MESUAL2}" tabindex="73"/></td>
					</tr>		
					</table>
					
					</div></td>
			</tr>
			<tr>
				<td bgcolor="#ffffff">
				
				<div id="dnn_ctr608_Solicitudes_pnIngresos">
			
				<table id="TablaCondicion" cellspacing="5" cellpadding="0" width="100%" border="0" class="TablaGeneral">
					<tr>
						<td class="subTitulo" align="left" height="30" colspan="6">
						<span id="dnn_ctr608_Solicitudes_plTituloIngresos_lblLabel">Otros Datos:</span>
						</td>
					</tr>
					<tr>
						<td></td>
						<td class="SubHead" width="200">
							<span id="dnn_ctr608_Solicitudes_plCondicionLaboral_lblLabel">Tel. fijo:</span>
						</td>
						<td class="SubHead" width="200">
							<span id="lblEmpresa">Celular:</span>								
						</td>
						<td class="SubHead" width="200">
							<span id="lblEmpresa">Repetir Celular:</span>
						</td>
						<td class="SubHead">
						<span id="Solicitudes_plEmpresaCel_lblLabel">Empresas Celular:</span>
						</td>							
					</tr>
					<tr>
						<td>PARTICULAR</td>
						<td class="SubHead" width="200" style="height:25px">
							<input name="sTelParticularFijoPrefijo" type="text" id="sTelParticularFijoPrefijo" class="FormTextBox" style="width:50px;" onblur="this.value=numero_parse_entero(this.value);" value="{TEL_PART_FIJO_PREFIJO}" tabindex="74" maxlength="4"/>&nbsp;-
							<input name="sTelParticularFijoNumero" type="text" id="sTelParticularFijoNumero" class="FormTextBox" style="width:120px;" onblur="this.value=numero_parse_entero(this.value);" value="{TEL_PART_FIJO_NUMERO}" tabindex="75" maxlength="10"/><br><br>
						</td>
						<td class="SubHead" width="200">
							<div id="divTelefonoCelular">
							<input name="sTelParticularMovilPrefijo" type="text" id="sTelParticularMovilPrefijo" class="FormTextBox" style="width:50px;" onblur="this.value=numero_parse_entero(this.value);" value="{TEL_PART_MOVIL_PREFIJO}" tabindex="76" maxlength="4"/>&nbsp;-
							<input name="sTelParticularMovilNumero" type="text" id="sTelParticularMovilNumero" class="FormTextBox" style="width:120px;" onblur="this.value=numero_parse_entero(this.value);ocultar();" value="{TEL_PART_MOVIL_NUMERO}" tabindex="77" maxlength="10"/>
							
							<br/><span style="font-style:italic;font-size:7pt; " >Ejemplo: 387-4222222<span>
	    					<span style="font-style:italic;font-size:7pt;color: red;" >SIN "0" NI "15"<span>
	    					</div>
						</td>
						<td class="SubHead" width="200">
							<input name="sTelParticularMovilPrefijoRepetir" type="text" id="sTelParticularMovilPrefijoRepetir" class="FormTextBox" style="width:50px;" onblur="this.value=numero_parse_entero(this.value);" value="{TEL_PART_MOVIL_PREFIJO}" tabindex="78" maxlength="4"/>&nbsp;-
							<input name="sTelParticularMovilNumeroRepetir" type="text" id="sTelParticularMovilNumeroRepetir" class="FormTextBox" style="width:120px;" onblur="this.value=numero_parse_entero(this.value);compararCampos()" value="{TEL_PART_MOVIL_NUMERO}" tabindex="79" maxlength="10"/>
							
							<div id="divCheckbox" style="display:none;color:red;font-weight:bold;font-size:11pt;"><br/><input type="checkbox" id="chkMostrar" name="chkMostrar" onchange="habilitarCampo(this)" />Mostrar campo Celular</div>
						</td>	
						<td>
						<select name="idEmpresaCelularTitular" id="idEmpresaCelularTitular" class="FormTextBox" style="width:200px;" tabindex="80">
							{optionsEmpresasCelulares}
						</select>
						<br/><br/>
						</td>						
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td class="SubHead" width="200">
							<span id="dnn_ctr608_Solicitudes_plCondicionLaboral_lblLabel">Tel. contacto:</span>
						</td>
						<td class="SubHead" width="200">
							<span id="lblEmpresa">Referencia Contacto:</span>
						</td>
						<td class="SubHead">E-mail:</td>
						<td class="SubHead">Repetir E-mail:</td>
					</tr>						
					<tr>
						<td>REFERENCIA</td>
						<td class="SubHead" width="200">
							<input name="sTelContactoPrefijo" type="text" id="sTelContactoPrefijo" class="FormTextBox" style="width:50px;" onblur="this.value=numero_parse_entero(this.value);" value="{TEL_CONTACTO_PREFIJO}" tabindex="82" maxlength="4"/>&nbsp;-
							<input name="sTelContactoNumero" type="text" id="sTelContactoNumero" class="FormTextBox" style="width:120px;" onblur="this.value=numero_parse_entero(this.value);" value="{TEL_CONTACTO_NUMERO}" tabindex="83" maxlength="10"/>
						</td>
						<td class="SubHead" width="200">
							<input name="sReferenciaContacto" type="text" id="sReferenciaContacto" class="FormTextBox" style="width:200px;" value="{REF_CONTACTO}" tabindex="84" onKeyUp="aMayusculas(this.value,this.id)"/>
						</td>
						<td><div id="divMail">
							<input name="sMail" type="text" id="sMail" class="FormTextBox" value="{MAIL}" tabindex="85" onblur="ocultarMail();">
							</div>
						</td>
						<td><input name="sMailRepetir" type="text" id="sMailRepetir" class="FormTextBox" value="{MAIL}" onblur="compararCamposMail()" >
						<div id="divCheckboxMail" style="display:none;color:red;font-weight:bold;font-size:11pt;"><br/><input type="checkbox" id="chkMostrarMail" name="chkMostrarMail" onchange="habilitarCampoMail(this)" />Mostrar campo E-mail</div></td>
					</tr>
				</table>
				</div>
				</td>						
			</tr>
			<tr><td style="height:10px"></td></tr>	
			<tr>
				<td colspan="2">
				<input type="checkbox" id="chkEnvioDomicilio" name="chkEnvioDomicilio" value="1" {CHECKED_ENVIO_DOMICILIO}/> El TITULAR solicita le envien los resumenes de cuenta a Domicilio. <!--, por lo que acepta se le debite mensualmente $3,00 en el mismo.-->
				</td>
			</tr>
			<tr>
				<td colspan="2">
				<input type="checkbox" id="chkEnvioMail" name="chkEnvioMail" value="1" onclick="validarMailRequerido()" {CHECKED_ENVIO_MAIL}/> El TITULAR solicita le envien los resumenes de cuenta al siguiente E-mail:&nbsp;<span id="mailTitular"></span>
				</td>
			</tr>
			<tr>
				<td class="SubHeadRed" align="left" height="30">&nbsp;
					</td>
			</tr>
			<tr valign="top">
				<td class="SubHead">
					<span class='requerido'>(*)</span>Datos requeridos.
					</td>
			</tr>
			<tr valign="top">
				<td align="center">
					<input type="button" id="cmd_alta" name="cmd_alta" onclick="javascript:darAltaSolicitud();" value="Dar Alta" {MOSTRAR_DAR_ALTA} tabindex="86"/>&nbsp;&nbsp;
					<input type="button" id="cmd_enviar" name="cmd_enviar" onclick="javascript:sendFormSolicitud();" value="Guardar" {MOSTRAR_GUARDAR} tabindex="87"/>&nbsp;&nbsp;
					<input type="button" id="cmd_borrar" name="cmd_borrar" onclick="this.form.reset()" value="Borrar" {MOSTRAR_BORRAR} tabindex="88"/>
					<input type="button" id="cmd_volver" name="cmd_volver" onclick="window.location.href='{URL_PRINCIPAL}'" value="Volver" tabindex="89"/>
				</td>
			</tr>
			<tr><td style="height:20px"></td></tr>
		</tbody>
	</table>	
    
    </td>
  </tr>
  </table>
  
  </form>
</div>	
</center>
</body>
  <script>  
  InputMask('dFechaPresentacion','99/99/9999');
  InputMask('dFechaSolicitud','99/99/9999');
  InputMask('dFechaNacimiento','99/99/9999');
  InputMask('dFechaIngreso1','99/99/9999');
  InputMask('dFechaIngreso2','99/99/9999');  
  document.formSolicitud.rdbTipoPersona[0].checked=true;
  document.formSolicitud.dFechaPresentacion.focus(); 
  
  function validarMailRequerido(){
  	  if(document.getElementById("sMailRepetir").value == ""){
  	  	  alert("- El campo E-mail es requerido para el envio de Resumenes.\n");			
		  document.getElementById("sMail").focus();
		  document.getElementById("chkEnvioMail").checked= false;
		  document.getElementById("mailTitular").innerHTML = "";
		  return;
  	  }else{
  	  	  document.getElementById("mailTitular").innerHTML = document.getElementById("sMailRepetir").value;
  	  }
  }
  
  function compararCamposMail(){
  	  if(document.getElementById("sMailRepetir").value != ""){
	  	
  	  	if(!validaMail(document.getElementById("sMailRepetir").value)){
			 alert("- El E-mail no es valido.\n");			
			 document.getElementById("sMailRepetir").focus();
		 	return;
	  	}
	  
	  	if(document.getElementById("sMail").value != document.getElementById("sMailRepetir").value)
  	  	{
  	  		alert("El campo E-mail y Repetir E-mail deben ser iguales.");
  	  	 	document.getElementById("sMail").value = "";
  	  	 	document.getElementById("sMailRepetir").value = "";
  	  	 	document.getElementById("chkMostrarMail").checked = false;
  	  	 	document.getElementById("divCheckboxMail").style.display = "inline";
  	  	 	return;
  	  	}
  	  }
  }
  
  function ocultarMail(){
  	  
  	 if(document.getElementById("sMail").value != ""){			
		
  	 	if(!validaMail(document.getElementById("sMail").value)){
			alert("- El E-mail no es valido2.\n");			
			document.getElementById("sMail").focus();
			return;
		}
  	   	document.getElementById("divMail").style.display = "none";
 	 }  	
  }
  
  function habilitarCampoMail(obj){
  	  if(obj.checked){  	  	 
  	  	 document.getElementById("divMail").style.display="inline";
  	  	 document.getElementById("divCheckboxMail").style.display = "none";  	  	 
  	  }else{
  	   	 document.getElementById("divMail").style.display="none";
  	  }
  }
  
  function compararCampos(){  	  
  	  if(document.getElementById("sTelParticularMovilPrefijo").value != document.getElementById("sTelParticularMovilPrefijoRepetir").value ||
  	  document.getElementById("sTelParticularMovilNumero").value != document.getElementById("sTelParticularMovilNumeroRepetir").value)
  	  {
  	  	alert("El campo Celular y Repetir Celular deben ser iguales.");
  	  	document.getElementById("sTelParticularMovilPrefijo").value = "";
  	  	document.getElementById("sTelParticularMovilNumero").value = "";
  	  	document.getElementById("sTelParticularMovilPrefijoRepetir").value = "";
  	  	document.getElementById("sTelParticularMovilNumeroRepetir").value = "";
  	  	document.getElementById("chkMostrar").checked = false;
  	  	document.getElementById("divCheckbox").style.display = "inline";
  	  	return;
  	  }
  }
  
  function habilitarCampo(obj){
  	  if(obj.checked){  	  	 
  	  	 document.getElementById("divTelefonoCelular").style.display="inline";
  	  	 document.getElementById("divCheckbox").style.display = "none";
  	  	 
  	  }else{
  	   	 document.getElementById("divTelefonoCelular").style.display="none";
  	  }
  }
  
  function ocultar(){
  	 if(document.getElementById("sTelParticularMovilNumero").value != ""){
  	 	document.getElementById("divTelefonoCelular").style.display="none";
  	 }
  }
  
  function darAltaSolicitud(){
  	if(!validarForm()){
  	 	return;  	 	
  	}
  	if(confirm("�Esta seguro que desea dar de Alta la Solicitud?"))	{
  		xajax_SaveSolicitudLex(xajax.getFormValues('formSolicitud'));
  	}
  }
  
  function sendFormSolicitud(){
  	 if(!validarForm()){
  	 	return;  	 	
  	 }  	 
  	 xajax_SaveSolicitudLex(xajax.getFormValues('formSolicitud'));
  }
  
  function aMayusculas_SinEspeciales(obj,id){
  	 //var RegExPattern = /[a-zA-Z]/; 
  	 
  	 //if(obj.match(RegExPattern)){
  	 	obj = obj.replace(/([^a-zA-Z����������\t\s]+)/,'');
  	 	obj = obj.toUpperCase();
	 	document.getElementById(id).value = obj;
  	 //}
  }
  
  function setearCondicionAfip(CondLaboral){
  	  if(CondLaboral == 1){
  	  	 document.getElementById("Solicitudes_plCondAFIP_lblLabel").innerHTML = "Condici&oacute;n AFIP:";	
  	  }else{
  	  	 document.getElementById("Solicitudes_plCondAFIP_lblLabel").innerHTML = "<span class='requerido'>(*)</span>Condici&oacute;n AFIP:";	
  	  }
  	  if(CondLaboral == 4 || CondLaboral == 5 ){
   	  	 document.getElementById("Solicitudes_plCalle_lblLabel").innerHTML = "<span class='requerido'>(*)</span>Calle:";
   	  	 document.getElementById("Solicitudes_plNro_lblLabel").innerHTML = "<span class='requerido'>(*)</span>Nro.:";
  	  }else{
  	  	 document.getElementById("Solicitudes_plCalle_lblLabel").innerHTML = "Calle:";
  	  	 document.getElementById("Solicitudes_plNro_lblLabel").innerHTML = "Nro.:";
  	  }
  }
  
  function validarForm(){
  	 var form = document.getElementById('formSolicitud');
	 var errores = "";
	 with (form){
	 	
		if (dFechaPresentacion.value == ""){
			alert("- El campo Fecha de Presentacion es requerido.\n");
			dFechaPresentacion.focus();
			return false;
		}
		if(!validarFecha(dFechaPresentacion, 'Fecha de Presentacion')){
			dFechaPresentacion.focus(); 
			return false;
		}
		if(!validaFechaPresentacion(dFechaPresentacion.value)){
			dFechaSolicitud.focus(); 
		    return false;
		}
		if(!validarFecha(dFechaSolicitud,'Fecha de Solicitud')){
			dFechaSolicitud.focus(); 
			return false;
		}
		if(!validaFechaSolicitud(dFechaSolicitud.value)){
			dFechaSolicitud.focus(); 
		    return false;
		}
		
		/*if (idCanal.value == 0){
			alert("- El campo Canal es requerido.\n");
			idCanal.focus();return false;
		}
		if (idPromotor.value == 0){
			alert("- El campo Promotor es requerido.\n");
			idPromotor.focus();return false;
		}*/
		if (sApellido.value == ""){
			alert("- El campo Apellido del Titular es requerido.\n");
			sApellido.focus();return false;
		}
		if (sNombre.value == ""){
			alert("- El campo Nombre del Titular es requerido.\n");
			sNombre.focus();return false;
		}
		if (idEstadoCivil.value == 0){
			alert("- El campo Estado Civil del Titular es requerido.\n");
			idEstadoCivil.focus();return false;
		}
		if (idNacionalidad.value == 0){		
			alert("- El campo Nacionalidad del Titular es requerido.\n");
			idNacionalidad.focus();return false;
		}		
		if(rdbTipoPersona[1].checked){
			if (sRazonSocial.value == 0){
				alert("- El campo Razon Social del Titular es requerido.\n");
				sRazonSocial.focus();return false;
			}
		}
		if (idTipoDocumento.value == 0){
			alert("- El campo Tipo de Documento del Titular es requerido.\n");
			idTipoDocumento.focus();return false;
		}
		if (sDocumento.value == ""){			
			alert("- El campo Numero de Documento es requerido.\n");
			sDocumento.focus();return false;
		}		
		if (sDocumento.value == "0"){			
			alert("- El campo Numero de Documento no debe ser 0.\n");
			sDocumento.focus();return false;
		}		
		if(!validarDNI(sDocumento)){
			alert("- El campo Numero de Documento no es valido.\n");
			sDocumento.focus();return false;
		}
		/*if((hdnDocumento.value != sDocumento.value)||(hdnidTipoDocumento.value != idTipoDocumento.value))
			xajax_verificarDocumento(idTipoDocumento.value, sDocumento.value);	*/
		
		if (sCuit.value == ""){
			alert("- El campo CUIT del Titular es requerido.\n");
			sCuit.focus();return false;
		}
		
		/*if(!validarCuitTitu(sCuit)){
			sCuit.focus();return false;
		}*/
		
		if(rdbTipoPersona[0].checked){
			if (dFechaNacimiento.value == ""){
				alert("- El campo Fecha de Nacimiento del Titular es requerido.\n");
				dFechaNacimiento.focus();return false;
			}
			if(!validaEdadValidaDeSolicitud(dFechaNacimiento.value)){
				dFechaNacimiento.focus();return false;
			}
		}
		if (idSexo.value == 0){			
			alert("- El campo Sexo del Titular es requerido.\n");			
			idSexo.focus();return false;
		}
		
		if (idProvinciaTitu.value == 0){
			alert("- El campo Provincia del Titular es requerido.\n");
			idProvinciaTitu.focus();return false;
		}
		if (idLocalidadTitu.value == 0){
			alert("- El campo Localidad del Titular es requerido.\n");
			idLocalidadTitu.focus();return false;
		}
		if (sCodigoPostalTitu.value == ""){
			alert("- El campo Codigo Postal del Titular es requerido.\n");
			sCodigoPostalTitu.focus();return false;
		}
		if (sCalleTitu.value == ""){
			alert("- El campo Calle del Titular es requerido.\n");
			sCalleTitu.focus();return false;
		}
		if (idProvinciaResumen.value == 0){
			alert("- El campo Provincia de Resumen es requerido.\n");
			sCalleTitu.focus();return false;
		}
		if (idLocalidadResumen.value == 0){
			alert("- El campo Localidad de Resumen es requerido.\n");
			idLocalidadResumen.focus();return false;
		}
		if (sCodigoPostalResumen.value == ""){
			alert("- El campo Codigo Postal de Resumen es requerido.\n");
			sCodigoPostalResumen.focus();return false;
		}
		if (sCalleResumen.value == ""){
			alert("- El campo Calle de Resumen es requerido.\n");
			sCalleResumen.focus();return false;
		}
		if (sRazonSocialLab.value == ""){
			alert("- El campo Razon Social en Datos Laborales es requerido.\n");				
			sRazonSocialLab.focus();return false;
		}
		/*if (sCuitEmpleador.value == ""){
			alert("- El campo CUIT. Empleador en Datos Laborales es requerido.\n");				
			sCuitEmpleador.focus();return false;
		}*/	
		/*if(!validaCuit(sCuitEmpleador.value)){
			alert("- El CUIT. Empleador no es valido.\n");				
			sCuitEmpleador.focus();return false;
		}*/
		if(idCondicionLaboral.value != 1){	
			if (idCondicionAFIPLab.value == 0){
				alert("- El campo Condicion AFIP en Datos Laborales es requerido.\n");
				idCondicionAFIPLab.focus();return false;
			}
		}
		if((idCondicionLaboral.value==4) || (idCondicionLaboral.value==5)){
			if(sCalleLab.value == ""){
				alert("- El campo Calle en Datos Laborales es requerido.\n");				
				sCalleLab.focus();return false;
			}
			if(sNumeroCalleLab.value == ""){
				alert("- El campo Nro. en Datos Laborales es requerido.\n");				
				sNumeroCalleLab.focus();return false;
			}
		}		
		if (idProvinciaLab.value == 0){
			alert("- El campo Provincia en Datos Laborales es requerido.\n");
			idProvinciaLab.focus();return false;
		}
		if (idLocalidadLab.value == 0){
			alert("- El campo Localidad en Datos Laborales es requerido.\n");
			idLocalidadLab.focus();return false;
		}
		if (sCodigoPostalLab.value == ""){
			alert("- El campo Codigo Postal en Datos Laborales es requerido.\n");	
			sCodigoPostalLab.focus();return false;		
		}
		if (sTelLaboral1Prefijo.value == "" || sTelLaboral1Numero.value == ""){
			alert("- El campo Telefono Laboral 1 en Datos Laborales es requerido.\n");	
			if(sTelLaboral1Prefijo.value == ""){
				sTelLaboral1Prefijo.focus();return false;
			}else{
				if(sTelLaboral1Numero.value == ""){	
					sTelLaboral1Numero.focus();return false;		
				}
			}
		}
		if(dFechaIngreso1.value != ""){
			if(!validarFecha(dFechaIngreso1,'Fecha de Ingreso 1')){
				dFechaIngreso1.focus();	return false;
			}	
		}	 
		if(dFechaIngreso2.value != ""){
			if(!validarFecha(dFechaIngreso2,'Fecha de Ingreso 2')){
				dFechaIngreso2.focus();	return false;
			}	
		}	 
		if (sCargo1.value == ""){
			alert("- El campo Cargo 1 en Datos Laborales es requerido.\n");	
			sCargo1.focus();return false;		
		}
		if((sTelParticularFijoNumero.value == "")&&(sTelParticularMovilNumero.value == "")){
			alert("- Debe suministrar un Telefono Particular Fijo o Celular.\n");	
			if(sTelParticularFijoPrefijo.value == ""){
				sTelParticularFijoPrefijo.focus();return false;
			}else{
				if(sTelParticularFijoNumero.value == ""){
					sTelParticularFijoNumero.focus();return false;	
				}
			}
		}
		if(sTelParticularMovilNumero.value != ""){
			if(sTelParticularMovilNumeroRepetir.value == ""){
				alert("- El campo Repetir Celular es requerido.\n");	
				return false;
			}
			if((sTelParticularMovilPrefijo.value!=sTelParticularMovilPrefijoRepetir.value)||(sTelParticularMovilNumero.value!=sTelParticularMovilNumeroRepetir.value)){
				alert("- El campo Celular y Repetir Celular deben ser iguales.\n");	
				return false;
			}
		}
		if((sTelParticularFijoNumero.value == "")&&(sTelParticularMovilNumero.value == "")){
			if(sTelContactoNumero.value == ""){
				alert("- El campo Telefono Contacto es requerido.\n");
				if(sTelContactoPrefijo.value == ""){
					sTelContactoPrefijo.focus();return false;
				}else{
					if(sTelContactoNumero.value == ""){
						sTelContactoNumero.focus();return false;	
					}
				}
			}
			if(sReferenciaContacto.value == ""){
				alert("- El campo Referencia Contacto es requerido.\n");
				sReferenciaContacto.focus();return false;
			}
		}
		
		if(!document.getElementById("chkEnvioDomicilio").checked && !document.getElementById("chkEnvioMail").checked){
			alert("- Debe seleccionar al menos una forma de envio de Resumenes.\n");
			return false;
		}
	 
	 }
	 return true;
	 /*if (errores){
		alert("Por favor, revise los siguientes errores:\n"+ errores);
		return false;
	 }
	 else return true;*/
  }
  
  function recargarFormSolicitud(){
  	 var form = document.getElementById('formSolicitud');
  	 form.reset(); 
  }
  
  function copiarValor(object, valor){
  	object.value = valor;
  }
  
  function validarDNI(obj){
		if(obj.value.length>8 || obj.value.length<7){
			alert("El Numero de Documento es invalido");
			return false;
		}		
		return true;	
  }

  function validarCuitTitu(obj){
		if(!validaCuit(obj.value)){
			alert("El Numero de CUIT no es valido.");
			return false;
		}
		var numeroDni = document.getElementById("sDocumento").value;
		if(obj.value.indexOf(numeroDni)<0){
			alert("El Numero de Documento y Cuit del Titular no son consistentes, verifique.");
			return false;
		}
		return true;
  }
	
  function validarFecha(obj,nombreObj){
  	 if(obj.value != "" && obj.value != "__/__/____"){
		if(!validaFecha(obj.value)){
			alert('-La Fecha '+nombreObj+' no es valida.\n');
			return false;
		}
		return true;
  	 }
  }
	
	function calcularEdad(Fecha){
		fecha = new Date(Fecha); 
		fechaActual = new Date('{FECHA_SOLICITUD}');
		edad = parseInt((fechaActual -fecha)/365/24/60/60/1000);
		return edad;
		//document.getElementById('pepe').value = "tienes " + ed + " a�os";
	}
	
	function validaEdadValidaDeSolicitud(fecha){
		var edad = calcularEdad(fecha);
		if((edad>80)||(edad<18)){
			alert("EL Titular no tiene la edad valida para solicitar la Tarjeta");
			return false;
		}
		return true;
	}
	
	function setearCampos(tipoPersona){
		var Formu = document.getElementById('formSolicitud');
		if(tipoPersona == 1){//Persona fisica
			/*Formu.sApellido.value = "";
			Formu.sNombre.value = "";*/
			Formu.sRazonSocial.disabled = true; 
			Formu.idEstadoCivil.value = 0;
			Formu.idEstadoCivil.disabled = false;
			Formu.dFechaNacimiento.disabled = false;
			Formu.sApellidoConyuge.disabled = false;
			Formu.sNombreConyuge.disabled = false;
			Formu.idTipoDocumentoConyuge.disabled = false;
			Formu.sDocumentoConyuge.disabled = false;
			Formu.iHijos.disabled = false;		
			document.getElementById("Solicitudes_plRazonSocial_lblLabel").innerHTML = "Razon Social:";
			document.getElementById("Solicitudes_plFechaNac_lblLabel").innerHTML = "<span class='requerido'>(*)</span>Fecha de Nacimiento";	

		}else{ //Persona Juridica
			/*Formu.sApellido.value = "-";
			Formu.sNombre.value = "-";*/
			Formu.sRazonSocial.disabled=false; 
			Formu.idEstadoCivil.value=7;
			Formu.idEstadoCivil.disabled=true;
			Formu.dFechaNacimiento.disabled=true;
			Formu.sApellidoConyuge.disabled=true;
			Formu.sNombreConyuge.disabled=true;
			Formu.idTipoDocumentoConyuge.disabled=true;
			Formu.sDocumentoConyuge.disabled=true;
			Formu.iHijos.disabled=true;	
			document.getElementById("Solicitudes_plRazonSocial_lblLabel").innerHTML = "<span class='requerido'>(*)</span>Razon Social:";
			document.getElementById("Solicitudes_plFechaNac_lblLabel").innerHTML = "Fecha de Nacimiento";
		}
	}

	function hoy(){
	    var fechaActual = new Date();
	    dia = fechaActual.getDate();
	    mes = fechaActual.getMonth() +1;
	    anno = fechaActual.getFullYear();
	    if (dia <10) dia = "0" + dia;
	    if (mes <10) mes = "0" + mes;  
	    fechaHoy = '{FECHA_SOLICITUD}';
	    //fechaHoy = dia + "/" + mes + "/" + anno; // ERROR DEBERIA TOMAR LA FECHA DEL SERVIDOR NO EL DE LA MAQUINA, CORREGIDO EL 02-11-2011
	    return fechaHoy;
	}
	
	function validaFechaPresentacion(dFechaPresentacion){
		var dFechaActual = hoy();
		//alert(dFechaPresentacion +'------'+dFechaActual);
		if(mayorfecha(dFechaPresentacion,dFechaActual)){
			alert("No puede ingresar una Fecha de Presentacion Mayor a la Fecha Actual");	
			return false;
		}
		var dFechaSolicitud = document.getElementById('dFechaSolicitud').value;
		if(mayorfecha(dFechaSolicitud,dFechaPresentacion)){
			alert("No puede ingresar una Fecha de Presentacion Menor a la Fecha de Solicitud");	
			return false;			
		}		
		if(DiferenciaFechas(dFechaPresentacion,dFechaActual) >31){ //menos de un Mes
			alert("La Fecha de Presentacion no debe ser Menor a un Mes de la Fecha Actual");	
			return false;	
		}
		return true;
	}
	
	function validaFechaSolicitud(dFechaSolicitud){
		var dFechaActual = hoy();
		if(DiferenciaFechas(dFechaSolicitud,dFechaActual) >31){ //menos de un Mes
			alert("La Fecha de Solicitud no debe ser Menor a un Mes de la Fecha Actual");	
			return false;	
		}
		return true;
	}	
	
	function GenerarCuit(idTipo){
		var sDocumento = document.getElementById("sDocumento").value;
		xajax_getCuil(idTipo,sDocumento)
	}
  </script>