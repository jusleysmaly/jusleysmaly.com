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

$colname_rsNOTICIAS = "1";
if (isset($_GET['URL_MAT_STATUS'])) {
  $colname_rsNOTICIAS = $_GET['URL_MAT_STATUS'];
}
mysql_select_db($database_conn92ID, $conn92ID);
$query_rsNOTICIAS = sprintf("SELECT * FROM tb_materia WHERE MAT_STATUS = %s ORDER BY MAT_COD ASC", GetSQLValueString($colname_rsNOTICIAS, "int"));
$rsNOTICIAS = mysql_query($query_rsNOTICIAS, $conn92ID) or die(mysql_error());
$row_rsNOTICIAS = mysql_fetch_assoc($rsNOTICIAS);
$totalRows_rsNOTICIAS = mysql_num_rows($rsNOTICIAS);

mysql_select_db($database_conn92ID, $conn92ID);
$query_rsCOUNT_ACTIVE = "SELECT COUNT(*) AS TOT_ACTIVE FROM tb_materia where mat_status = 1";
$rsCOUNT_ACTIVE = mysql_query($query_rsCOUNT_ACTIVE, $conn92ID) or die(mysql_error());
$row_rsCOUNT_ACTIVE = mysql_fetch_assoc($rsCOUNT_ACTIVE);
$totalRows_rsCOUNT_ACTIVE = mysql_num_rows($rsCOUNT_ACTIVE);

mysql_select_db($database_conn92ID, $conn92ID);
$query_rsCOUNT_INACTIVE = "SELECT COUNT(*) AS TOT_INACTIVE FROM tb_materia WHERE mat_status = 0";
$rsCOUNT_INACTIVE = mysql_query($query_rsCOUNT_INACTIVE, $conn92ID) or die(mysql_error());
$row_rsCOUNT_INACTIVE = mysql_fetch_assoc($rsCOUNT_INACTIVE);
$totalRows_rsCOUNT_INACTIVE = mysql_num_rows($rsCOUNT_INACTIVE);

error_reporting(E_ALL);
ini_set("display_errors", 1);
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/cms-01.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<!-- InstanceBeginEditable name="doctitle" -->
<title>92ID:CMS • ©92dpi</title>
<!-- InstanceEndEditable -->
<link href="../sgc/css/main.css" rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=Cuprum" rel="stylesheet" type="text/css" />

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<!-- <script src="../js/jquery-1.4.4.js" type="text/javascript"></script> -->

<script type="text/javascript" src="../sgc/js/spinner/jquery.mousewheel.js"></script>
<script type="text/javascript" src="../sgc/js/spinner/ui.spinner.js"></script>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script> 

<script type="text/javascript" src="../sgc/js/fileManager/elfinder.min.js"></script>

<script type="text/javascript" src="../sgc/js/wysiwyg/jquery.wysiwyg.js"></script>
<script type="text/javascript" src="../sgc/js/wysiwyg/wysiwyg.image.js"></script>
<script type="text/javascript" src="../sgc/js/wysiwyg/wysiwyg.link.js"></script>
<script type="text/javascript" src="../sgc/js/wysiwyg/wysiwyg.table.js"></script>

<script type="text/javascript" src="../sgc/js/flot/jquery.flot.js"></script>
<script type="text/javascript" src="../sgc/js/flot/jquery.flot.pie.js"></script>
<script type="text/javascript" src="../sgc/js/flot/excanvas.min.js"></script>
<script type="text/javascript" src="../sgc/js/flot/jquery.flot.resize.js"></script>

<script type="text/javascript" src="../sgc/js/dataTables/jquery.dataTables.js"></script>
<script type="text/javascript" src="../sgc/js/dataTables/colResizable.min.js"></script>

<script type="text/javascript" src="../sgc/js/forms/forms.js"></script>
<script type="text/javascript" src="../sgc/js/forms/autogrowtextarea.js"></script>
<script type="text/javascript" src="../sgc/js/forms/autotab.js"></script>
<script type="text/javascript" src="../sgc/js/forms/jquery.validationEngine-en.js"></script>
<script type="text/javascript" src="../sgc/js/forms/jquery.validationEngine.js"></script>
<script type="text/javascript" src="../sgc/js/forms/jquery.dualListBox.js"></script>
<script type="text/javascript" src="../sgc/js/forms/jquery.filestyle.js"></script>

<script type="text/javascript" src="../sgc/js/colorPicker/colorpicker.js"></script>

<script type="text/javascript" src="../sgc/js/uploader/plupload.js"></script>
<script type="text/javascript" src="../sgc/js/uploader/plupload.html5.js"></script>
<script type="text/javascript" src="../sgc/js/uploader/plupload.html4.js"></script>
<script type="text/javascript" src="../sgc/js/uploader/jquery.plupload.queue.js"></script>

<script type="text/javascript" src="../sgc/js/ui/progress.js"></script>
<script type="text/javascript" src="../sgc/js/ui/jquery.jgrowl.js"></script>
<script type="text/javascript" src="../sgc/js/ui/jquery.tipsy.js"></script>
<script type="text/javascript" src="../sgc/js/ui/jquery.alerts.js"></script>

<script type="text/javascript" src="../sgc/js/jBreadCrumb.1.1.js"></script>
<script type="text/javascript" src="../sgc/js/cal.min.js"></script>
<script type="text/javascript" src="../sgc/js/jquery.smartWizard.min.js"></script>
<script type="text/javascript" src="../sgc/js/jquery.collapsible.min.js"></script>
<script type="text/javascript" src="../sgc/js/jquery.ToTop.js"></script>
<script type="text/javascript" src="../sgc/js/jquery.listnav.js"></script>
<script type="text/javascript" src="../sgc/js/jquery.sourcerer.js"></script>
<script type="text/javascript" src="../sgc/js/jquery.timeentry.min.js"></script>
<script type="text/javascript" src="../sgc/js/jquery.prettyPhoto.js"></script>

<script type="text/javascript" src="../sgc/js/custom.js"></script>
<!-- InstanceBeginEditable name="head" -->

<link href="../sgc/css/colorbox.css" rel="stylesheet" type="text/css" />
		<script src="../sgc/js/jquery.colorbox.js"></script>
		<script>
			$(document).ready(function(){
				//Examples of how to assign the ColorBox event to elements
				$(".group1").colorbox({rel:'group1'});
				$(".group2").colorbox({rel:'group2', transition:"fade"});
				$(".group3").colorbox({rel:'group3', transition:"none", width:"75%", height:"75%"});
				$(".group4").colorbox({rel:'group4', slideshow:true});
				$(".ajax").colorbox();
				$(".youtube").colorbox({iframe:true, innerWidth:425, innerHeight:344});
				$(".vimeo").colorbox({iframe:true, innerWidth:500, innerHeight:409});
				$(".iframe").colorbox({iframe:true, width:"30%", height:"30%"});
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
            <div class="welcome"><a href="#" title=""><img src="../sgc/images/userPic.png" alt="" /></a><span>Olá, <?php echo $_SESSION['MM_Username'] ?></span></div>
            <div class="userNav">
                <ul>
                    <li><a href="#" title=""><img src="../sgc/images/icons/topnav/profile.png" alt="" /><span>Meu Perfil</span></a></li>
                    <li class="dd">
                        <ul class="menu_body">
                            <li><a href="#" title="">new message</a></li>
                            <li><a href="#" title="">inbox</a></li>
                            <li><a href="#" title="">outbox</a></li>
                            <li><a href="#" title="">trash</a></li>
                        </ul>
                    </li>
                  <!-- InstanceBeginEditable name="logoutbtn" -->
                    <li><a href="login.html" title=""><img src="../sgc/images/icons/topnav/logout.png" alt="" /><span>Logout</span></a></li>
                  <!-- InstanceEndEditable -->
                </ul>
            </div>
            <div class="fix"></div>
        </div>
    </div>
</div>

<!-- Header -->
<div id="header" class="wrapper">
    <div class="logo"><a href="../sgc/sgc.php" title=""><img src="../sgc/images/loginLogo.png" alt="" /></a></div>
    <div class="middleNav">
    	<ul>
        	<li class="iMes"><a href="#" title=""><span>Reportar  Erro</span></a><span class="numberMiddle">9</span></li>
        	<!-- InstanceBeginEditable name="opcoes01" -->
        	<li class="iUser"><a href="../sgc/noticias.php?URL_MAT_STATUS=0" title=""><span>Inativos</span></a></li>
        	<li class="iOrders"><a href="../sgc/noticias-ins.php?urlactive=02" title="Inserir Novo"><span>Inserir Novo</span></a></li>
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
        	<li class="dash"><a href="../sgc/sgc.php?urlactive=01" title="" ><span>Início</span></a></li>
        	<li class="dash"><a href="../sgc/noticias.php?urlactive=02" title=""  ><span>Not&iacute;cias</span></a></li>
            <li class="dash"><a href="../sgc/depoimentos.php?urlactive=02" title=""  ><span>Depoimentos</span></a></li>
            <li class="dash"><a href="../sgc/agenda.php?urlactive=02" title=""  ><span>Agenda</span></a></li>
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
            <li class="dash"><a href="../sgc/clientes.php?urlactive=07" title=""  ><span>Clientes</span></a></li>
            <!-- <li class="dash"><a href="../sgc/fotos.php?urlactive=07" title=""  ><span>Fotos</span></a></li> -->
            <li class="dash"><a href="../sgc/lojas.php?urlactive=07" title=""  ><span>Lojas</span></a></li>
            <li class="dash"><a href="../sgc/publicidade.php?urlactive=08" title=""  ><span>Publicidade/Links</span></a></li>
            
            <?php
            if ( $_SESSION['MM_UserGroup'] == 9) { 
            ?>
            
  			<li class="contacts"><a href="#" title="" class="exp"><span>Adminstração</span><span class="numberLeft">4</span></a>
            	<ul class="sub">
                    <li><a href="../sgc/usuarios-sgc.php" title="">Usuários</a></li>
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
                    <li><a href="../sgc/92dpi-vcard.vcf" title="">92 9113.6545</a></li>
            	</ul>
            </li>
        </ul>
    </div>

	<!-- Content --><!-- InstanceBeginEditable name="conteudo" -->
    <div class="content">
      <div class="title">
        <h5>Not&iacute;cias</h5>
      </div>
      <!-- Statistics -->
      <div class="stats">
        <ul>
          <li><a href="../sgc/noticias.php" class="count green" title=""><?php echo $row_rsCOUNT_ACTIVE['TOT_ACTIVE']; ?></a><span>Registros Ativos</span></li>
          <li class="last"><a href="../sgc/noticias.php?URL_MAT_STATUS=0" class="count red" title=""><?php echo $row_rsCOUNT_INACTIVE['TOT_INACTIVE']; ?></a><span>Registros Inativos</span></li>
        </ul>
        <div class="fix"></div>
      </div>
      <!-- Static table -->
      <!-- Static table with resizable columns -->
      <!-- Table with data on the right head side -->
      <!-- Tables inside tabs -->
      <!-- Dynamic table -->
      <div class="table">
        <div class="head">
          <h5 class="iFrames">Listagem
        </h5></div>
        <table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
          <thead>
            <tr>
              <th>Título</th>
              <th>Data</th>
              <th>Pos/Home</th>
              <th>Pos/Canal</th>
              <th>Imagem</th>
              <th>Desativar</th>
            </tr>
          </thead>
          <tbody>
            <?php do { ?>
            <tr class="gradeX">
              <td><a href="../sgc/noticias-edit.php?URL_MAT_COD=<?php echo $row_rsNOTICIAS['MAT_COD']; ?>"><?php echo $row_rsNOTICIAS['MAT_COD']; ?> - <?php echo $row_rsNOTICIAS['MAT_TITULO']; ?></a></td>
              <td><?php echo $row_rsNOTICIAS['MAT_DATA_DIA']; ?>/<?php echo $row_rsNOTICIAS['MAT_DATA_MES']; ?>/<?php echo $row_rsNOTICIAS['MAT_DATA_ANO']; ?></td>
              <td class="center" ><?php echo $row_rsNOTICIAS['POS_COD_HOME']; ?></td>
              <td class="center"><?php echo $row_rsNOTICIAS['POS_COD_CANAL']; ?></td>
              <td class="center">
              <a href="/sgc/upload.php?URL_FILENAME=<?php echo $row_rsNOTICIAS['MAT_COD']; ?>&amp;URL_DIR=noticias" class="iframe"><img src="../sgc/images/icons/color/arrow-curve-090.png" alt="" class="mr10" /> </a>
			  
			  <?php If (file_exists('../images/content/noticias/noticia1.jpg')) { ?> <a href="/images/content/noticias/noticia1.jpg" class="group1" ><img src="../sgc/images/icons/color/image-resize-actual.png" alt="" class="mr10" /></a>                <?php } ?></td>
              <td class="center"><a href="../sgc/inactive.php?URL_CHAVE=<?php echo $row_rsNOTICIAS['MAT_COD']; ?>&amp;URL_REDIR=noticias.php&amp;URL_TABLE=tb_materia&amp;URL_PREFIX=MAT_"><img src="../sgc/images/icons/color/cross.png" alt="" class="mr10" /></a></td>
            </tr>
              <?php } while ($row_rsNOTICIAS = mysql_fetch_assoc($rsNOTICIAS)); ?>
          </tbody>
        </table>
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
mysql_free_result($rsNOTICIAS);

mysql_free_result($rsCOUNT_ACTIVE);

mysql_free_result($rsCOUNT_INACTIVE);
?>
