<?
define( 'BASE' , dirname( __FILE__ ) . '/../..');
include_once(  BASE . '/_global.php' );

$aParametros = array();
$aParametros = getParametrosBasicos(1);

/* Opciones configurables */
$Pagina = intval(cd_paramGlobal('Pagina'));
$CampoOrden = cd_paramGlobal('CampoOrden');
$TipoOrden = cd_paramGlobal('TipoOrden');

if ($Pagina <= 0) $Pagina = 1;

$NombreMod = 'Empleados';									// Nombre del modulo
$NombreTipoRegistro = 'empleado';					// Nombre tipo de registro
$NombreTipoRegistroPlu = 'empleados';			// Nombre tipo de registros en Plural
$Masculino = true;												// Genero del tipo de registro (true: masculino - false: femenino)
$arrListaCampos = array('Empleados.sApellido', 'sLogin','sMail');
$arrListaEncabezados = array('Nombre y Apellido','Login', 'E-Mail');
$Tabla = 'Empleados';											// Tabla sobre la cual trabajaremos
$PK = 'id';												// Nombre del campo Clave Principal
$CampoOrdenPre = 'Empleados.sApellido';											// Campo de orden predeterminado
$TipoOrdenPre = 'ASC';										// Tipo de orden predeterminado
$RegPorPag = 15;														// Cantidad de registros por p?gina
if(!$CampoOrden) $CampoOrden = $CampoOrdenPre;
if(!$TipoOrden) $TipoOrden = $TipoOrdenPre;
$PrimReg = ($Pagina - 1) * $RegPorPag;

$sqlCuenta = "SELECT COUNT(id) FROM $Tabla";

if(isset($_POST['buscar'])){
	
	$nombre_u = $_POST['nombre_u'];
	$sEstado = $_POST['sEstado'];
	
	$condic = $_POST['condic']; // variable para manejar las condiciones
	$condic1 = $_POST['condic']; //variable que se usa en la paginacion 
	
	
	if(!session_is_registered('snombre_u'))
	{
		session_register('snombre_u');
		session_register('sEstado_u');
		
		session_register('scondic');
	}
	
	$_SESSION['snombre_u'] = $_POST['nombre_u'];	
	$_SESSION['sEstado_u'] = $_POST['sEstado'];	
	$_SESSION['scondic'] = $_POST['condic'];
	
	unset($_SESSION['volver']);
}
else{
	$nombre_u = $_SESSION['snombre_u'];
	$sEstado = $_SESSION['sEstado_u'];
	
	$condic = $_SESSION['scondic'];	
	$condic1 = $_SESSION['scondic'];	
}
	$sWhere = "";
	
	$aCond=Array();
	
	if($nombre_u)
	{
		$aCond[]=" $condic LIKE '%$nombre_u%' ";
	}

	if($sEstado != 'T')
	{
		$aCond[]= " Empleados.sEstado = '$sEstado'";
	}
	
//var_export($aCond); 
	$sCondiciones= " WHERE ".implode(' AND ',$aCond)."  ORDER BY $CampoOrden $TipoOrden LIMIT $PrimReg, $RegPorPag ";
	$sCondiciones_sLim=" WHERE ".implode(' AND ',$aCond)."  ORDER BY $CampoOrden $TipoOrden";
	
	
	session_register('nombre_u');
	session_register('condic');
	$nombre_u = $_GET['nombre_u'];
	$condic = $_GET['condic'];

$sqlDatos="Call usp_getEmpleados(\"$sCondiciones\");";
$sqlDatos_sLim="Call usp_getEmpleados(\"$sCondiciones_sLim\");";


// Cuento la cantidad de registros sin LIMIT
$CantReg = $oMysql->consultaSel($sqlCuenta,true); 
// Ejecuto la consulta
$result = $oMysql->consultaSel($sqlDatos);
$result_sLim = $oMysql->consultaSel($sqlDatos_sLim);

//echo $sqlDatos;

//var_export($result); 
$CantRegFiltro = sizeof($result_sLim);


$oXajax=new xajax();

$oXajax->registerFunction("updateEstadoEmpleado");
$oXajax->registerFunction("habilitarEmpleados");
$oXajax->processRequest();
$oXajax->printJavascript("../includes/xajax/");

$aParametros['DHTMLX_WINDOW']=1;
xhtmlHeaderPaginaGeneral($aParametros);	
?>
<body style="background-color:#FFFFFF;">
<div id="BodyUser">
	
<?php 
echo parserTemplate( TEMPLATES_XHTML_DIR . "/Bloques/BloqueBuscadorEmpleados.tpl");

?>
<p><img src="../includes/images/Formularios/icoNuevo.gif" align="absmiddle" alt="Nuevo"> <a href="EdicionEmpleados.php?action=new"><? if($Masculino) echo 'Nuevo '; else echo 'Nueva '; echo $NombreTipoRegistro;?></a></p>

<?
if (count($result)==0){echo "Ningun registro encontrado";}
$sCadena = "";
if ($result){	

  $sCadena .= "<p>Hay ".$CantReg." ";
  if ($CantReg>1) $sCadena .= $NombreTipoRegistroPlu; 
  else $sCadena .= $NombreTipoRegistro;

  $sCadena .= " en la base de datos.</p>
	<form id='formEmpleados' action='' method='POST' >
	<center>
	<table class='tablePoliza' align='center' style='width:80% !important;' cellpadding='3' cellspacing='0' border='1' bordercolor='#000000' width='98%' id='tablaEmpleado'>
		<tr class='filaPrincipal'>
		<!-- Lista de encabezados de columna -->";
	
	$CantEncabezados = count($arrListaEncabezados);
	for($i=0; $i<$CantEncabezados; $i++){
		$sCadena .= "<th>";
		if($CampoOrden == $arrListaCampos[$i]){
			//var_export('entro');
			if ($TipoOrden == 'ASC') $NuevoTipoOrden = 'DESC'; else $NuevoTipoOrden = 'ASC';
		}
		else $NuevoTipoOrden = 'ASC';
		//var_export($TipoOrden.'----'.$NuevoTipoOrden);
		$sCadena .= "<a href=\"{$_SERVER['PHP_SELF']}?CampoOrden={$arrListaCampos[$i]}&TipoOrden={$NuevoTipoOrden}\">{$arrListaEncabezados[$i]}</a>";
		if($CampoOrden == $arrListaCampos[$i]){
			if ($TipoOrden == 'ASC') $sCadena .= " &nabla;"; else $sCadena .= " &Delta;";
		}
		$sCadena .= "</th>\r\n";
	}
	///Opciones de Mod. y Elim.
	$sCadena .="<th colspan='2'>Acciones</th>
		<th style='cursor:pointer;'><input type='checkbox' onchange='tildar_checkboxs( this.checked )' id='checkbox_principal' /> </th>
		</tr>";
    echo $sCadena;

	$CantMostrados = 0;
	
	foreach ($result as $rs ){
		$sBotonera = '';	
		$CantMostrados ++;
		$PK = $rs['id'];
		$sClase='';
		switch ($rs['sEstado']){
			case 'S': $sClase="class='naranja'"; break;//estado Suspendido
			case 'B': $sClase="class='rojo'"; break;//estado Baja
			case 'U': $sClase="class='azul'"; break;//estado cambio de Clave
		}
	
		$sUsuario = html_entity_decode($rs['sNombre']).' '.html_entity_decode($rs['sApellido']);
		if($rs['sEstado'] == 'B'){
			$sBotonera='&nbsp;';
		}else{
			$oBtn = new aToolBar();
			$oBtn->setAnchoBotonera('auto');
			$oBtn->addBoton("Modificar{$rs['id']}","onclick","editarEmpleado({$rs['id']})",'Editar','Modificar',true,true);	
			$oBtn->addBoton("Eliminar{$rs['id']}","onclick","eliminarEmpleado({$rs['id']})",'Eliminar','Eliminar',true,true);	
			
			if(in_array($_SESSION['id_user'],array(1,296))) $oBtn->addBoton("Configurar{$rs['id']}","onclick","SetearPermisos({$rs['id']},'{$sUsuario}')",'Configurar','Permisos',true,true);	
			
			$sBotonera = $oBtn->getBotoneraToolBar('');		
		}
		?>
		<tr id="empleado<?php echo $PK;?>">
			<!-- Valores -->
			<td align="left" <?php echo $sClase;?>>&nbsp;<?=$sUsuario;?></td>
			<td align="left" <?php echo $sClase;?>>&nbsp;<?=$rs['sLogin'];?></td>	
			<td align="left" <?php echo $sClase;?>>&nbsp;<?=$rs['sMail'];?></td>	
			
			<!-- Links para Mod. y Elim. -->
			<td colspan="2" align="center">
				<?=$sBotonera;?>
			</td>
			<td align="center"><input type='checkbox' id='aEmpleado[]' name='aEmpleado[]' class="check_user" value='<?php echo $PK;?>'/> </td>
			
		</tr>
		<?
	}
	?>
	<tr>
	   <td colspan="7" align="right">
	   	   <div> 
	   	    	<button type="button" onclick="Habilitar();"> Habilitar </button> &nbsp;
	   	   </div>
	   </td>
	</tr> 
	</table>
	<div style='font-size:10px;text-align:left;width:80%'>
		<span class='rojo'>Rojo-Empleados de Baja. <span><br>
	</div>
	</center>
	</form>
	<!-- Paginacion -->
	<?
	if (ceil($CantRegFiltro/$RegPorPag) > 1){
		echo "<p>P&aacute;gina $Pagina. Mostrando $CantMostrados de $CantRegFiltro $NombreTipoRegistroPlu.</p>\r\n";
	
		echo "<p>";
		if ($Pagina > 1) echo "<a href=\"{$_SERVER['PHP_SELF']}?{$_SERVER['QUERY_STRING']}&Pagina=". ($Pagina-1) ."\">Anterior</a>";
		if ($Pagina > 1 && $Pagina<ceil($CantRegFiltro/$RegPorPag)) echo " - ";
	
		if ($Pagina<ceil($CantRegFiltro/$RegPorPag)) echo "<a href=\"{$_SERVER['PHP_SELF']}?{$_SERVER['QUERY_STRING']}&Pagina=". ($Pagina+1) ."\">Siguiente</a>";
	
		echo " | P&aacute;ginas: ";
		$strPaginas = '';
		
		for($i=1;$i<=ceil($CantRegFiltro/$RegPorPag);$i++){
			if ($i == $Pagina) $strPaginas .= "<b>";
			else $strPaginas .= "<a href=\"{$_SERVER['PHP_SELF']}?{$_SERVER['QUERY_STRING']}&Pagina=". $i ."&nombre_u=".$nombre_u."&condic=".$condic1."\">";
			$strPaginas .= $i;
			if ($i == $Pagina) $strPaginas .= "</b> - ";
			else $strPaginas .= "</a> - ";
		}
		echo substr($strPaginas, 0, strlen($strPaginas) - 3);
	}
}
	?>
	
<script>
function editarEmpleado(idEmpleado){
	window.location ="EdicionEmpleados.php?idEmpleado="+ idEmpleado;	
}

function eliminarEmpleado(idEmpleado){
	if(confirm("?Desea eliminar el Empleado?")){
		xajax_updateEstadoEmpleado(idEmpleado,'B');
	}
}

function SetearPermisos(id,sUser){
	var sUrl='../Empleados/TreePermisos.php?id='+id;
	var sTitulo='Permisos '+sUser;
	var iTypo='Permisos';
	//top.getVentanaPop(sUrl,sTitulo,500,650,iTypo);
	createWindows(sUrl,sTitulo,'1',iTypo);
}

function Habilitar(){
	  var mensaje="?Esta seguro de Habilitar a el/los Empleado/s seleccionado/s?"; 
	  var el = document.getElementById('tablaEmpleado');
	  var imputs= el.getElementsByTagName('input');
	  var band=0;
	  for (var i=0; i<imputs.length; i++) 
	  {
	    if (imputs[i].type=='checkbox')	
	     if(!imputs[i].checked) 
	     {
	         band=0;
	     }
	     else{ band=1; break;}
	  }	
	  if(band==1)
	  {
	  	 if(confirm(mensaje))
	       xajax_habilitarEmpleados(xajax.getFormValues('formEmpleados'));
	  }
	  else alert('Debe Elegir al menos un Empleado a habilitar.');	   
}

function doOnLoad() {
    dhxWins1 = new dhtmlXWindows();
    dhxWins1.enableAutoViewport(false);
    dhxWins1.attachViewportTo("dhtmlx_wins_body_content");
    dhxWins1.setImagePath("../../codebase/imgs/");
}
var dhxWins1;
function createWindows(sUrl,sTitulo,idProyecto_,tipo_){
    var idWind = "window_"+idProyecto_+"_"+tipo_;
	//if(!dhxWins.window(idWind)){
     	dhxWins1 = new dhtmlXWindows();     	
	    dhxWins1.setImagePath("../includes/grillas/dhtmlxWindows/sources/imgs/");	  
	    _popup_ = dhxWins1.createWindow(idWind, 250, 50, 700, 500);
	    _popup_.setText(sTitulo);
	    ///_popup_.center();
	    _popup_.button("close").attachEvent("onClick", closeWindows);
		_url_ = sUrl;
	    _popup_.attachURL(_url_);
	//}
} 

function closeWindows(_popup_){
	_popup_.close();
	recargar();
	//parent.dhxWins.close(); // close a window
}  	

function recargar(){
	window.location ="Empleados.php";
}
</script>
<?php echo xhtmlFootPagina();?>
