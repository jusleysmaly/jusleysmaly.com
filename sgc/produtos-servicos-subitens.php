<?php require_once('../Connections/conn92ID.php'); ?>
<?php
//initialize the session
if (!isset($_SESSION)) {
  session_start();
}

// ** Logout the current user. **
$logoutAction = $_SERVER['PHP_SELF']."?doLogout=true";
if ((isset($_SERVER['QUERY_STRING'])) && ($_SERVER['QUERY_STRING'] != "")){
  $logoutAction .="&". htmlentities($_SERVER['QUERY_STRING']);
}

if ((isset($_GET['doLogout'])) &&($_GET['doLogout']=="true")){
  //to fully log out a visitor we need to clear the session varialbles
  $_SESSION['MM_Username'] = NULL;
  $_SESSION['MM_UserGroup'] = NULL;
  $_SESSION['PrevUrl'] = NULL;
  unset($_SESSION['MM_Username']);
  unset($_SESSION['MM_UserGroup']);
  unset($_SESSION['PrevUrl']);
	
  $logoutGoTo = "index.php";
  if ($logoutGoTo) {
    header("Location: $logoutGoTo");
    exit;
  }
}
?>
<?php
if (!isset($_SESSION)) {
  session_start();
}
$MM_authorizedUsers = "1,9";
$MM_donotCheckaccess = "false";

// *** Restrict Access To Page: Grant or deny access to this page
function isAuthorized($strUsers, $strGroups, $UserName, $UserGroup) { 
  // For security, start by assuming the visitor is NOT authorized. 
  $isValid = False; 

  // When a visitor has logged into this site, the Session variable MM_Username set equal to their username. 
  // Therefore, we know that a user is NOT logged in if that Session variable is blank. 
  if (!empty($UserName)) { 
    // Besides being logged in, you may restrict access to only certain users based on an ID established when they login. 
    // Parse the strings into arrays. 
    $arrUsers = Explode(",", $strUsers); 
    $arrGroups = Explode(",", $strGroups); 
    if (in_array($UserName, $arrUsers)) { 
      $isValid = true; 
    } 
    // Or, you may restrict access to only certain users based on their username. 
    if (in_array($UserGroup, $arrGroups)) { 
      $isValid = true; 
    } 
    if (($strUsers == "") && false) { 
      $isValid = true; 
    } 
  } 
  return $isValid; 
}

$MM_restrictGoTo = "index.php";
if (!((isset($_SESSION['MM_Username'])) && (isAuthorized("",$MM_authorizedUsers, $_SESSION['MM_Username'], $_SESSION['MM_UserGroup'])))) {   
  $MM_qsChar = "?";
  $MM_referrer = $_SERVER['PHP_SELF'];
  if (strpos($MM_restrictGoTo, "?")) $MM_qsChar = "&";
  if (isset($_SERVER['QUERY_STRING']) && strlen($_SERVER['QUERY_STRING']) > 0) 
  $MM_referrer .= "?" . $_SERVER['QUERY_STRING'];
  $MM_restrictGoTo = $MM_restrictGoTo. $MM_qsChar . "accesscheck=" . urlencode($MM_referrer);
  header("Location: ". $MM_restrictGoTo); 
  exit;
}
?>
<?php
if (!function_exists("GetSQLValueString")) {
function GetSQLValueString($theValue, $theType, $theDefinedValue = "", $theNotDefinedValue = "") 
{
  if (PHP_VERSION < 6) {
    $theValue = get_magic_quotes_gpc() ? stripslashes($theValue) : $theValue;
  }

  $theValue = function_exists("mysql_real_escape_string") ? mysql_real_escape_string($theValue) : mysql_escape_string($theValue);

  switch ($theType) {
    case "text":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;    
    case "long":
    case "int":
      $theValue = ($theValue != "") ? intval($theValue) : "NULL";
      break;
    case "double":
      $theValue = ($theValue != "") ? doubleval($theValue) : "NULL";
      break;
    case "date":
      $theValue = ($theValue != "") ? "'" . $theValue . "'" : "NULL";
      break;
    case "defined":
      $theValue = ($theValue != "") ? $theDefinedValue : $theNotDefinedValue;
      break;
  }
  return $theValue;
}
}

$currentPage = $_SERVER["PHP_SELF"];

$maxRows_rsPRODUTOS_SERVICOS = 20;
$pageNum_rsPRODUTOS_SERVICOS = 0;
if (isset($_GET['pageNum_rsPRODUTOS_SERVICOS'])) {
  $pageNum_rsPRODUTOS_SERVICOS = $_GET['pageNum_rsPRODUTOS_SERVICOS'];
}
$startRow_rsPRODUTOS_SERVICOS = $pageNum_rsPRODUTOS_SERVICOS * $maxRows_rsPRODUTOS_SERVICOS;

$colname_rsPRODUTOS_SERVICOS = "1";
if (isset($_GET['URL_PRDS_STATUS'])) {
  $colname_rsPRODUTOS_SERVICOS = $_GET['URL_PRDS_STATUS'];
}
mysql_select_db($database_conn92ID, $conn92ID);
$query_rsPRODUTOS_SERVICOS = sprintf("SELECT * FROM vw_produtos_servicos_subitens WHERE PRDS_STATUS = %s ORDER BY PRD_COD ASC", GetSQLValueString($colname_rsPRODUTOS_SERVICOS, "int"));
$query_limit_rsPRODUTOS_SERVICOS = sprintf("%s LIMIT %d, %d", $query_rsPRODUTOS_SERVICOS, $startRow_rsPRODUTOS_SERVICOS, $maxRows_rsPRODUTOS_SERVICOS);
$rsPRODUTOS_SERVICOS = mysql_query($query_limit_rsPRODUTOS_SERVICOS, $conn92ID) or die(mysql_error());
$row_rsPRODUTOS_SERVICOS = mysql_fetch_assoc($rsPRODUTOS_SERVICOS);

if (isset($_GET['totalRows_rsPRODUTOS_SERVICOS'])) {
  $totalRows_rsPRODUTOS_SERVICOS = $_GET['totalRows_rsPRODUTOS_SERVICOS'];
} else {
  $all_rsPRODUTOS_SERVICOS = mysql_query($query_rsPRODUTOS_SERVICOS);
  $totalRows_rsPRODUTOS_SERVICOS = mysql_num_rows($all_rsPRODUTOS_SERVICOS);
}
$totalPages_rsPRODUTOS_SERVICOS = ceil($totalRows_rsPRODUTOS_SERVICOS/$maxRows_rsPRODUTOS_SERVICOS)-1;

mysql_select_db($database_conn92ID, $conn92ID);
$query_rsCOUNT_ACTIVE = "SELECT COUNT(*) AS TOT_ACTIVE FROM vw_produtos_servicos_subitens where prds_status = 1";
$rsCOUNT_ACTIVE = mysql_query($query_rsCOUNT_ACTIVE, $conn92ID) or die(mysql_error());
$row_rsCOUNT_ACTIVE = mysql_fetch_assoc($rsCOUNT_ACTIVE);
$totalRows_rsCOUNT_ACTIVE = mysql_num_rows($rsCOUNT_ACTIVE);

mysql_select_db($database_conn92ID, $conn92ID);
$query_rsCOUNT_INACTIVE = "SELECT COUNT(*) AS TOT_INACTIVE FROM vw_produtos_servicos_subitens WHERE prds_status = 0";
$rsCOUNT_INACTIVE = mysql_query($query_rsCOUNT_INACTIVE, $conn92ID) or die(mysql_error());
$row_rsCOUNT_INACTIVE = mysql_fetch_assoc($rsCOUNT_INACTIVE);
$totalRows_rsCOUNT_INACTIVE = mysql_num_rows($rsCOUNT_INACTIVE);

$queryString_rsPRODUTOS_SERVICOS = "";
if (!empty($_SERVER['QUERY_STRING'])) {
  $params = explode("&", $_SERVER['QUERY_STRING']);
  $newParams = array();
  foreach ($params as $param) {
    if (stristr($param, "pageNum_rsPRODUTOS_SERVICOS") == false && 
        stristr($param, "totalRows_rsPRODUTOS_SERVICOS") == false) {
      array_push($newParams, $param);
    }
  }
  if (count($newParams) != 0) {
    $queryString_rsPRODUTOS_SERVICOS = "&" . htmlentities(implode("&", $newParams));
  }
}
$queryString_rsPRODUTOS_SERVICOS = sprintf("&totalRows_rsPRODUTOS_SERVICOS=%d%s", $totalRows_rsPRODUTOS_SERVICOS, $queryString_rsPRODUTOS_SERVICOS);

error_reporting(E_ALL);
ini_set("display_errors", 1);
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/cms-01.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<!-- InstanceBeginEditable name="doctitle" -->
<title>Categorias &laquo; Produtos e Servi&ccedil;os &laquo; 92ID:CMS &laquo; &copy;92dpi</title>
<!-- InstanceEndEditable -->
<link href="css/main.css" rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=Cuprum" rel="stylesheet" type="text/css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<!-- <script src="../js/jquery-1.4.4.js" type="text/javascript"></script> -->

<script type="text/javascript" src="js/spinner/jquery.mousewheel.js"></script>
<script type="text/javascript" src="js/spinner/ui.spinner.js"></script>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script> 

<script type="text/javascript" src="js/fileManager/elfinder.min.js"></script>

<script type="text/javascript" src="js/wysiwyg/jquery.wysiwyg.js"></script>
<script type="text/javascript" src="js/wysiwyg/wysiwyg.image.js"></script>
<script type="text/javascript" src="js/wysiwyg/wysiwyg.link.js"></script>
<script type="text/javascript" src="js/wysiwyg/wysiwyg.table.js"></script>

<script type="text/javascript" src="js/flot/jquery.flot.js"></script>
<script type="text/javascript" src="js/flot/jquery.flot.pie.js"></script>
<script type="text/javascript" src="js/flot/excanvas.min.js"></script>
<script type="text/javascript" src="js/flot/jquery.flot.resize.js"></script>

<script type="text/javascript" src="js/dataTables/jquery.dataTables.js"></script>
<script type="text/javascript" src="js/dataTables/colResizable.min.js"></script>

<script type="text/javascript" src="js/forms/forms.js"></script>
<script type="text/javascript" src="js/forms/autogrowtextarea.js"></script>
<script type="text/javascript" src="js/forms/autotab.js"></script>
<script type="text/javascript" src="js/forms/jquery.validationEngine-en.js"></script>
<script type="text/javascript" src="js/forms/jquery.validationEngine.js"></script>
<script type="text/javascript" src="js/forms/jquery.dualListBox.js"></script>
<script type="text/javascript" src="js/forms/jquery.filestyle.js"></script>

<script type="text/javascript" src="js/colorPicker/colorpicker.js"></script>

<script type="text/javascript" src="js/uploader/plupload.js"></script>
<script type="text/javascript" src="js/uploader/plupload.html5.js"></script>
<script type="text/javascript" src="js/uploader/plupload.html4.js"></script>
<script type="text/javascript" src="js/uploader/jquery.plupload.queue.js"></script>

<script type="text/javascript" src="js/ui/progress.js"></script>
<script type="text/javascript" src="js/ui/jquery.jgrowl.js"></script>
<script type="text/javascript" src="js/ui/jquery.tipsy.js"></script>
<script type="text/javascript" src="js/ui/jquery.alerts.js"></script>

<script type="text/javascript" src="js/jBreadCrumb.1.1.js"></script>
<script type="text/javascript" src="js/cal.min.js"></script>
<script type="text/javascript" src="js/jquery.smartWizard.min.js"></script>
<script type="text/javascript" src="js/jquery.collapsible.min.js"></script>
<script type="text/javascript" src="js/jquery.ToTop.js"></script>
<script type="text/javascript" src="js/jquery.listnav.js"></script>
<script type="text/javascript" src="js/jquery.sourcerer.js"></script>
<script type="text/javascript" src="js/jquery.timeentry.min.js"></script>
<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>

<script type="text/javascript" src="js/custom.js"></script>
<!-- InstanceBeginEditable name="head" -->

<link href="css/colorbox.css" rel="stylesheet" type="text/css" />
		<script src="js/jquery.colorbox.js"></script>
		<script>
			$(document).ready(function(){
				//Examples of how to assign the ColorBox event to elements
				$(".group1").colorbox({rel:'group1'});
				$(".group2").colorbox({rel:'group2', transition:"fade"});
				$(".group3").colorbox({rel:'group3', transition:"none", width:"75%", height:"75%"});
				$(".group4").colorbox({rel:'group4', slideshow:true});
				$(".ajax").colorbox();
				$(".iframe").colorbox({iframe:true, innerWidth:500, innerHeight:400});
				$(".vimeo").colorbox({iframe:true, innerWidth:500, innerHeight:409});
				$(".inline").colorbox({inline:true, width:"50%"});
				$(".callbacks").colorbox({
					onOpen:function(){ alert('onOpen: colorbox is about to open'); },
					onLoad:function(){ alert('onLoad: colorbox has started to load the targeted content'); },
					onComplete:function(){ alert('onComplete: colorbox has displayed the loaded content'); },
					onCleanup:function(){ alert('onCleanup: colorbox has begun the close process'); },
					onClosed:function(){ alert('onClosed: colorbox has completely closed'); }
				});
				
				//Example of preserving a JavaScript event for inline calls.
				$("#click").click(function(){ 
					$('#click').css({"background-color":"#f00", "color":"#fff", "cursor":"inherit"}).text("Open this window again and this message will still be here.");
					return false;
				});
			});
		</script>
<!-- InstanceEndEditable -->
</head>

<body>

<!-- Top navigation bar -->
<div id="topNav">
    <div class="fixed">
        <div class="wrapper">
            <div class="welcome"><a href="#" title=""><img src="images/userPic.png" alt="" /></a><span>Olá, <?php echo $_SESSION['MM_Username'] ?></span></div>
            <div class="userNav">
                <ul>
                    <li><a href="#" title=""><img src="images/icons/topnav/profile.png" alt="" /><span>Meu Perfil</span></a></li>
                    <li class="dd">
                        <ul class="menu_body">
                            <li><a href="#" title="">new message</a></li>
                            <li><a href="#" title="">inbox</a></li>
                            <li><a href="#" title="">outbox</a></li>
                            <li><a href="#" title="">trash</a></li>
                        </ul>
                    </li>
                  <!-- InstanceBeginEditable name="logoutbtn" -->
                    <li><a href="<?php echo $logoutAction ?>" title=""><img src="images/icons/topnav/logout.png" alt="" /><span>Logout</span></a></li>
                  <!-- InstanceEndEditable -->
                </ul>
            </div>
            <div class="fix"></div>
        </div>
    </div>
</div>

<!-- Header -->
<div id="header" class="wrapper">
    <div class="logo"><a href="sgc.php" title=""><img src="images/loginLogo.png" alt="" /></a></div>
    <div class="middleNav">
    	<ul>
        	<li class="iMes"><a href="#" title=""><span>Reportar  Erro</span></a><span class="numberMiddle">9</span></li>
        	<!-- InstanceBeginEditable name="opcoes01" -->
        	<li class="iOrders"><a href="/sgc/produtos-servicos-subitens-ins.php" title="Inserir Novo"><span>Inserir Novo</span></a></li>
			<!-- InstanceEndEditable -->
        </ul>
    </div>
    <div class="fix"></div>
</div>

<!-- Main wrapper -->
<div class="wrapper">

	<!-- Left navigation -->
    <div class="leftNav">
    	<ul id="menu">
        	<li class="dash"><a href="sgc.php?urlactive=01" title="" ><span>Início</span></a></li>
        	<li class="dash"><a href="noticias.php?urlactive=02" title=""  ><span>Not&iacute;cias</span></a></li>
            <li class="dash"><a href="depoimentos.php?urlactive=02" title=""  ><span>Depoimentos</span></a></li>
            <li class="dash"><a href="agenda.php?urlactive=02" title=""  ><span>Agenda</span></a></li>
            <li class="dash"><a href="#" title="" class="exp"><span>Produtos e Serviços</span><span class="numberLeft">2</span></a>
            	<ul class="sub">
                    <li><a href="/sgc/produtos-servicos.php" title="">Produtos e Serviços</a></li>
                    <li><a href="/sgc/produtos-servicos-tipo.php" title="">Categorias</a></li>
                </ul>
            </li>
            <li class="dash"><a href="#" title="" class="exp"><span>Dicas</span><span class="numberLeft">2</span></a>
            	<ul class="sub">
                    <li><a href="/sgc/dicas.php" title="">Dicas</a></li>
                    <li><a href="/sgc/dicas-tipo.php" title="">Categorias</a></li>
                </ul>
            </li>
            <li class="dash"><a href="#" title="" class="exp"><span>Midias</span><span class="numberLeft">2</span></a>
            	<ul class="sub">
                    <li><a href="/sgc/midias.php" title="">Mídias</a></li>
                    <li><a href="/sgc/midias-tipo.php" title="">Categorias</a></li>
                </ul>
            </li>
            <!--
            <li class="dash"><a href="#" title="" class="exp"><span>Vagas/Candidatos</span><span class="numberLeft">2</span></a>
            	<ul class="sub">
                    <li><a href="/sgc/vagas.php" title="">Vagas</a></li>
                    <li><a href="/sgc/candidatos.php" title="">Candidatos</a></li>
                </ul>
            </li>
            -->
            <li class="dash"><a href="clientes.php?urlactive=07" title=""  ><span>Clientes</span></a></li>
            <!-- <li class="dash"><a href="../sgc/fotos.php?urlactive=07" title=""  ><span>Fotos</span></a></li> -->
            <li class="dash"><a href="lojas.php?urlactive=07" title=""  ><span>Lojas</span></a></li>
            <li class="dash"><a href="publicidade.php?urlactive=08" title=""  ><span>Publicidade/Links</span></a></li>
            
            <?php
            if ( $_SESSION['MM_UserGroup'] == 9) { 
            ?>
            
  			<li class="contacts"><a href="#" title="" class="exp"><span>Adminstração</span><span class="numberLeft">4</span></a>
            	<ul class="sub">
                    <li><a href="usuarios-sgc.php" title="">Usuários</a></li>
                    <li><a href="#" title="">Customização</a></li>
            	</ul>
            </li>
            
              <?php
            }			
			
            ?>
            
            
            <li class="errors"><a href="#" title="" class="exp"><span>Ajuda</span><span class="numberLeft">4</span></a>
            	<ul class="sub">
                    <li><a href="#" title="">Envie uma mensagem</a></li>
                    <li><a href="http://www.92dpi.com.br" title="" target="_blank">Site da 92dpi</a></li>
                    <li><a href="mailto:suporte@92dpi.com.br" title="">suporte@92dpi.com.br</a></li>
                    <li><a href="92dpi-vcard.vcf" title="">92 9113.6545</a></li>
            	</ul>
            </li>
        </ul>
    </div>

	<!-- Content --><!-- InstanceBeginEditable name="conteudo" -->
    <div class="content">
      <div class="title">
        <h5>Subitens &laquo; Produtos e Servi&ccedil;os &laquo; Categorias</h5>
      </div>
      <!-- Statistics -->
      <div class="stats">
        <ul>
          <li><a href="produtos-servicos-subitens.php" class="count green" title=""><?php echo $row_rsCOUNT_ACTIVE['TOT_ACTIVE']; ?></a><span>Registros Ativos</span></li>
          <li class="last"><a href="produtos-servicos-subitens.php?URL_PRDS_STATUS=0" class="count red" title=""><?php echo $row_rsCOUNT_INACTIVE['TOT_INACTIVE']; ?></a><span>Registros Inativos</span></li>
        </ul>
        <div class="fix"></div>
      </div>
      
      
      <!-- Static table -->
      <!-- Static table with resizable columns -->
      <!-- Table with data on the right head side -->
      <!-- Tables inside tabs -->
      <!-- Dynamic table -->
      <div class="widget">
       	<div class="head">
        	  <h5 class="iFrames">Listagem</h5>
        	  <div class="num">REGISTRO ATIVOS <a href="#" class="blueNum">+<?php echo $row_rsCOUNT_ACTIVE['TOT_ACTIVE']; ?></a></div></div>
        <table cellpadding="0" cellspacing="0" width="100%" class="tableStatic">
          <thead>
            <tr>
              <th>Item</th>
              <th>Categoria</th>
              <th>Descri&ccedil;&atilde;o</th>
              <th>&nbsp;</th>
              <th>&nbsp;</th>
            </tr>
          </thead>
          <tbody>
            <?php do { ?>
            <tr class="gradeX">
              <td><a href="/sgc/produtos-servicos-subitens-edit.php?URL_PRDS_COD=<?php echo $row_rsPRODUTOS_SERVICOS['PRDS_COD']; ?>"><?php echo $row_rsPRODUTOS_SERVICOS['PRDS_COD']; ?> - <?php echo $row_rsPRODUTOS_SERVICOS['PRDS_NOME']; ?></a></td>
              <td><?php echo $row_rsPRODUTOS_SERVICOS['PRD_TITULO']; ?></td>
              <td><a href="/sgc/produtos-servicos-subitens-edit.php?URL_PRDS_COD=<?php echo $row_rsPRODUTOS_SERVICOS['PRDS_COD']; ?>"><?php echo $row_rsPRODUTOS_SERVICOS['PRDS_DESCRICAO']; ?></a></td>
              
              <!-- capa -->
              <td><!-- end:capa -->
                <a href="/sgc/upload-resize.php?URL_FILENAME=<?php echo $row_rsPRODUTOS_SERVICOS['PRDS_COD']; ?>&amp;URL_DIR=produtos-servicos-subitens&amp;IMG_SIZE=700 x 700 pixel [JPG]" class="iframe"><img src="images/icons/color/arrow-curve-090.png" alt="" class="mr10" /> </a>
                
                <?php If (file_exists('../images/content/produtos-servicos-subitens/'.$row_rsPRODUTOS_SERVICOS['PRDS_COD'].'.jpg')) { ?> <a href="/images/content/produtos-servicos-subitens/<?php echo $row_rsPRODUTOS_SERVICOS['PRDS_COD']; ?>.jpg" class="group1" ><img src="images/icons/color/image-resize-actual.png" alt="" class="mr10" /></a>                <?php } ?>
                
                
                
                
              </td>
              <td>
              
              
              <?php $url_dis_status = isset( $_GET['URL_PRDS_STATUS'] ) ? $_GET['URL_PRDS_STATUS'] : null; ?>
              <?php
              switch ($url_dis_status) { 
			  case '0':
			  ?>
              
              <!-- ativa -->
              <a href="../_sgc_templates/active.php?URL_CHAVE=<?php echo $row_rsPRODUTOS_SERVICOS['PRDS_COD']; ?>&amp;URL_REDIR=produtos-servicos-subitens.php&amp;URL_TABLE=tb_produtos_servicos_subitens&amp;URL_PREFIX=PRDS_"><img src="images/icons/color/tick.png" alt="" class="mr10" /></a>
              
     		<?php 
			break;
			default: 
			?>
              
              <!-- desativa -->
              <a href="inactive.php?URL_CHAVE=<?php echo $row_rsPRODUTOS_SERVICOS['PRDS_COD']; ?>&amp;URL_REDIR=produtos-servicos-subitens.php&amp;URL_TABLE=tb_produtos_servicos_subitens&amp;URL_PREFIX=PRDS_"><img src="images/icons/color/cross.png" alt="" class="mr10" /></a>
              
              <?php 
			  break;
			  } ?>
              

              
              </td>
            </tr>
              <?php } while ($row_rsPRODUTOS_SERVICOS = mysql_fetch_assoc($rsPRODUTOS_SERVICOS)); ?>
          </tbody>
        </table>
      </div>
      
       <!-- Pagination -->
		<div class="pagination">
			<ul class="pages">
				<li class="prev"><a href="<?php printf("%s?pageNum_rsPRODUTOS_SERVICOS=%d%s", $currentPage, max(0, $pageNum_rsPRODUTOS_SERVICOS - 1), $queryString_rsPRODUTOS_SERVICOS); ?>">&lt;</a></li>
				
				<li class="next"><a href="<?php printf("%s?pageNum_rsPRODUTOS_SERVICOS=%d%s", $currentPage, min($totalPages_rsPRODUTOS_SERVICOS, $pageNum_rsPRODUTOS_SERVICOS + 1), $queryString_rsPRODUTOS_SERVICOS); ?>">&gt;</a></li>
			</ul>
		</div>
      
    </div><!-- InstanceEndEditable -->
    <div class="fix"></div>
</div>

<!-- Footer -->
<div id="footer">
	<div class="wrapper">
    	<span>&copy; Copyright 2012 <a href="http://www.92dpi.com.br" target="_blank">92dpi - Ag&ecirc;ncia Digital</a>. All rights reserved.</span>
    </div>
</div>

</body>
<!-- InstanceEnd --></html>
<?php
mysql_free_result($rsPRODUTOS_SERVICOS);

mysql_free_result($rsCOUNT_ACTIVE);

mysql_free_result($rsCOUNT_INACTIVE);
?>
