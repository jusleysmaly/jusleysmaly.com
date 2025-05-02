<?php require_once('../Connections/conn92ID.php'); ?>
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

$editFormAction = $_SERVER['PHP_SELF'];
if (isset($_SERVER['QUERY_STRING'])) {
  $editFormAction .= "?" . htmlentities($_SERVER['QUERY_STRING']);
}

if ((isset($_POST["MM_update"])) && ($_POST["MM_update"] == "form")) {
  $updateSQL = sprintf("UPDATE tb_usuario_sgc SET USR_LOGIN=%s, USR_PWD=%s, USR_NOME=%s, USR_PERMISSION=%s, USR_DESC=%s, USR_STATUS=%s WHERE USR_COD=%s",
                       GetSQLValueString($_POST['USR_LOGIN'], "text"),
                       GetSQLValueString($_POST['USR_PWD'], "text"),
                       GetSQLValueString($_POST['USR_NOME'], "text"),
                       GetSQLValueString($_POST['USR_PERMISSION'], "int"),
                       GetSQLValueString($_POST['USR_DESC'], "text"),
                       GetSQLValueString($_POST['USR_STATUS'], "int"),
                       GetSQLValueString($_POST['USR_COD'], "int"));

  mysql_select_db($database_conn92ID, $conn92ID);
  $Result1 = mysql_query($updateSQL, $conn92ID) or die(mysql_error());

  $updateGoTo = "usuarios-sgc.php";
  if (isset($_SERVER['QUERY_STRING'])) {
    $updateGoTo .= (strpos($updateGoTo, '?')) ? "&" : "?";
    $updateGoTo .= $_SERVER['QUERY_STRING'];
  }
  header(sprintf("Location: %s", $updateGoTo));
}

$colname_rsUSUARIO_SGC = "1";
if (isset($_GET['URL_USR_COD'])) {
  $colname_rsUSUARIO_SGC = $_GET['URL_USR_COD'];
}
mysql_select_db($database_conn92ID, $conn92ID);
$query_rsUSUARIO_SGC = sprintf("SELECT * FROM tb_usuario_sgc WHERE USR_COD = %s", GetSQLValueString($colname_rsUSUARIO_SGC, "int"));
$rsUSUARIO_SGC = mysql_query($query_rsUSUARIO_SGC, $conn92ID) or die(mysql_error());
$row_rsUSUARIO_SGC = mysql_fetch_assoc($rsUSUARIO_SGC);
$totalRows_rsUSUARIO_SGC = mysql_num_rows($rsUSUARIO_SGC);

error_reporting(E_ALL);
ini_set("display_errors", 1);
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/cms-01.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<!-- InstanceBeginEditable name="doctitle" -->
<title>Editar &laquo; Usu&aacute;rios SGC&laquo; 92ID:CMS &laquo; &copy;92dpi</title>
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
                    <li><a href="login.html" title=""><img src="images/icons/topnav/logout.png" alt="" /><span>Logout</span></a></li>
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
    <div class="content" id="container">
    	<div class="title">
    	  <h5>Usu&aacute;rios SGC &laquo; Editar</h5></div>
                    
        <!-- Statistics --><!-- Form begins -->
        <form action="<?php echo $editFormAction; ?>" method="POST" name="form" class="mainForm">
        
        	<!-- Input text fields -->
            <fieldset>
                <div class="widget first">
                    <div class="head">
                  <h5 class="iList">Editar</h5></div>
                        <div class="rowElem nobg">
                  <label>Nome:</label>
                  <input name="USR_COD" type="hidden" id="USR_COD" value="<?php echo $row_rsUSUARIO_SGC['USR_COD']; ?>" />
                  <div class="formRight"><input name="USR_NOME" type="text" id="USR_NOME" value="<?php echo $row_rsUSUARIO_SGC['USR_NOME']; ?>"/></div><div class="fix"></div></div>
                  
                  
                  <div class="rowElem nobg">
                  <label>Descri&ccedil;&atilde;o:</label>
                  <div class="formRight"><input name="USR_DESC" type="text" id="USR_DESC" value="<?php echo $row_rsUSUARIO_SGC['USR_DESC']; ?>"/></div><div class="fix"></div></div>
                        
                        
                        <div class="rowElem nobg">
                        <label>Status</label>
                        <div class="formRight">
                        <select name="USR_STATUS" id="USR_STATUS" >
                          <option value="0" <?php if (!(strcmp(0, $row_rsUSUARIO_SGC['USR_STATUS']))) {echo "selected=\"selected\"";} ?>>0 - Inativa</option>
                          <option value="1" <?php if (!(strcmp(1, $row_rsUSUARIO_SGC['USR_STATUS']))) {echo "selected=\"selected\"";} ?>>1 - Ativa</option>
                        </select>
                        </div>
                        <div class="fix"></div>
                    </div>
                        <div class="rowElem nobg">
                        <label>Permiss&atilde;o:</label>
                        <div class="formRight">
                        <select name="USR_PERMISSION" id="USR_PERMISSION" >
                          <option value="9" <?php if (!(strcmp(9, $row_rsUSUARIO_SGC['USR_PERMISSION']))) {echo "selected=\"selected\"";} ?>>9 - Administrador</option>
                          <option value="1" <?php if (!(strcmp(1, $row_rsUSUARIO_SGC['USR_PERMISSION']))) {echo "selected=\"selected\"";} ?>>1 - Atualiza&ccedil;&atilde;o de Conte&uacute;do</option>
                        </select>
                        </div>
                        <div class="fix"></div>
                    </div>
                  <div class="rowElem">
                    <label>Login:</label>
                    <div class="formRight"><input name="USR_LOGIN" type="text" id="USR_LOGIN" value="<?php echo $row_rsUSUARIO_SGC['USR_LOGIN']; ?>"/></div><div class="fix"></div></div>
                  <div class="rowElem">
                  <label>Senha (M&aacute;x. 8 caracteres):</label>
                  <div class="formRight"><input name="USR_PWD" type="text" id="USR_PWD" value="<?php echo $row_rsUSUARIO_SGC['USR_PWD']; ?>" /></div><div class="fix"></div></div>
                  <input type="submit" value="Salvar Altera&ccedil;&otilde;es" class="basicBtn submitForm mb22" />
                        <div class="fix"></div>

                </div>
            </fieldset>
            
            
            
            <!-- Checkboxes and radios --><!-- File upload --><!-- WYSIWYG editor -->
            <input type="hidden" name="MM_update" value="form" />
      </form>
        
       

               
                
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
mysql_free_result($rsUSUARIO_SGC);
?>
