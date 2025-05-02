<?php
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
        	<li class="iUser"><a href="#" title=""><span>Inativos</span></a></li>
        	<li class="iOrders"><a href="sgc-forms.php" title=""><span>Inserir Novo</span></a></li>
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
        <h5>Tables examples</h5>
      </div>
      <!-- Statistics -->
      <div class="stats">
        <ul>
          <li><a href="#" class="count grey" title="">52</a><span>Registros Cadastrados</span></li>
          <li class="last"><a href="#" class="count grey" title="">48</a><span>new user registrations</span></li>
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
          <h5 class="iFrames">Dynamic table</h5>
        </div>
        <table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
          <thead>
            <tr>
              <th>Rendering engine</th>
              <th>Browser</th>
              <th>Platform(s)</th>
              <th>Engine version</th>
              <th>CSS grade</th>
            </tr>
          </thead>
          <tbody>
            <tr class="gradeX">
              <td>Trident</td>
              <td>Internet
                Explorer 4.0</td>
              <td>Win 95+</td>
              <td class="center">4</td>
              <td class="center">X</td>
            </tr>
            <tr class="gradeC">
              <td>Trident</td>
              <td>Internet
                Explorer 5.0</td>
              <td>Win 95+</td>
              <td class="center">5</td>
              <td class="center">C</td>
            </tr>
            <tr class="gradeA">
              <td>Trident</td>
              <td>Internet
                Explorer 5.5</td>
              <td>Win 95+</td>
              <td class="center">5.5</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Trident</td>
              <td>Internet
                Explorer 6</td>
              <td>Win 98+</td>
              <td class="center">6</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Trident</td>
              <td>Internet Explorer 7</td>
              <td>Win XP SP2+</td>
              <td class="center">7</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Trident</td>
              <td>AOL browser (AOL desktop)</td>
              <td>Win XP</td>
              <td class="center">6</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Gecko</td>
              <td>Firefox 1.0</td>
              <td>Win 98+ / OSX.2+</td>
              <td class="center">1.7</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Gecko</td>
              <td>Firefox 1.5</td>
              <td>Win 98+ / OSX.2+</td>
              <td class="center">1.8</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Gecko</td>
              <td>Firefox 2.0</td>
              <td>Win 98+ / OSX.2+</td>
              <td class="center">1.8</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Gecko</td>
              <td>Firefox 3.0</td>
              <td>Win 2k+ / OSX.3+</td>
              <td class="center">1.9</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Gecko</td>
              <td>Camino 1.0</td>
              <td>OSX.2+</td>
              <td class="center">1.8</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Gecko</td>
              <td>Camino 1.5</td>
              <td>OSX.3+</td>
              <td class="center">1.8</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Gecko</td>
              <td>Netscape 7.2</td>
              <td>Win 95+ / Mac OS 8.6-9.2</td>
              <td class="center">1.7</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Gecko</td>
              <td>Netscape Browser 8</td>
              <td>Win 98SE+</td>
              <td class="center">1.7</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Gecko</td>
              <td>Netscape Navigator 9</td>
              <td>Win 98+ / OSX.2+</td>
              <td class="center">1.8</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Gecko</td>
              <td>Mozilla 1.0</td>
              <td>Win 95+ / OSX.1+</td>
              <td class="center">1</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Gecko</td>
              <td>Mozilla 1.1</td>
              <td>Win 95+ / OSX.1+</td>
              <td class="center">1.1</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Gecko</td>
              <td>Mozilla 1.2</td>
              <td>Win 95+ / OSX.1+</td>
              <td class="center">1.2</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Gecko</td>
              <td>Mozilla 1.3</td>
              <td>Win 95+ / OSX.1+</td>
              <td class="center">1.3</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Gecko</td>
              <td>Mozilla 1.4</td>
              <td>Win 95+ / OSX.1+</td>
              <td class="center">1.4</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Gecko</td>
              <td>Mozilla 1.5</td>
              <td>Win 95+ / OSX.1+</td>
              <td class="center">1.5</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Gecko</td>
              <td>Mozilla 1.6</td>
              <td>Win 95+ / OSX.1+</td>
              <td class="center">1.6</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Gecko</td>
              <td>Mozilla 1.7</td>
              <td>Win 98+ / OSX.1+</td>
              <td class="center">1.7</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Gecko</td>
              <td>Mozilla 1.8</td>
              <td>Win 98+ / OSX.1+</td>
              <td class="center">1.8</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Gecko</td>
              <td>Seamonkey 1.1</td>
              <td>Win 98+ / OSX.2+</td>
              <td class="center">1.8</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Gecko</td>
              <td>Epiphany 2.20</td>
              <td>Gnome</td>
              <td class="center">1.8</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Webkit</td>
              <td>Safari 1.2</td>
              <td>OSX.3</td>
              <td class="center">125.5</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Webkit</td>
              <td>Safari 1.3</td>
              <td>OSX.3</td>
              <td class="center">312.8</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Webkit</td>
              <td>Safari 2.0</td>
              <td>OSX.4+</td>
              <td class="center">419.3</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Webkit</td>
              <td>Safari 3.0</td>
              <td>OSX.4+</td>
              <td class="center">522.1</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Webkit</td>
              <td>OmniWeb 5.5</td>
              <td>OSX.4+</td>
              <td class="center">420</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Webkit</td>
              <td>iPod Touch / iPhone</td>
              <td>iPod</td>
              <td class="center">420.1</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Webkit</td>
              <td>S60</td>
              <td>S60</td>
              <td class="center">413</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Presto</td>
              <td>Opera 7.0</td>
              <td>Win 95+ / OSX.1+</td>
              <td class="center">-</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Presto</td>
              <td>Opera 7.5</td>
              <td>Win 95+ / OSX.2+</td>
              <td class="center">-</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Presto</td>
              <td>Opera 8.0</td>
              <td>Win 95+ / OSX.2+</td>
              <td class="center">-</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Presto</td>
              <td>Opera 8.5</td>
              <td>Win 95+ / OSX.2+</td>
              <td class="center">-</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Presto</td>
              <td>Opera 9.0</td>
              <td>Win 95+ / OSX.3+</td>
              <td class="center">-</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Presto</td>
              <td>Opera 9.2</td>
              <td>Win 88+ / OSX.3+</td>
              <td class="center">-</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Presto</td>
              <td>Opera 9.5</td>
              <td>Win 88+ / OSX.3+</td>
              <td class="center">-</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Presto</td>
              <td>Opera for Wii</td>
              <td>Wii</td>
              <td class="center">-</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Presto</td>
              <td>Nokia N800</td>
              <td>N800</td>
              <td class="center">-</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>Presto</td>
              <td>Nintendo DS browser</td>
              <td>Nintendo DS</td>
              <td class="center">8.5</td>
              <td class="center">C/A<sup>1</sup></td>
            </tr>
            <tr class="gradeC">
              <td>KHTML</td>
              <td>Konqureror 3.1</td>
              <td>KDE 3.1</td>
              <td class="center">3.1</td>
              <td class="center">C</td>
            </tr>
            <tr class="gradeA">
              <td>KHTML</td>
              <td>Konqureror 3.3</td>
              <td>KDE 3.3</td>
              <td class="center">3.3</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeA">
              <td>KHTML</td>
              <td>Konqureror 3.5</td>
              <td>KDE 3.5</td>
              <td class="center">3.5</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeX">
              <td>Tasman</td>
              <td>Internet Explorer 4.5</td>
              <td>Mac OS 8-9</td>
              <td class="center">-</td>
              <td class="center">X</td>
            </tr>
            <tr class="gradeC">
              <td>Tasman</td>
              <td>Internet Explorer 5.1</td>
              <td>Mac OS 7.6-9</td>
              <td class="center">1</td>
              <td class="center">C</td>
            </tr>
            <tr class="gradeC">
              <td>Tasman</td>
              <td>Internet Explorer 5.2</td>
              <td>Mac OS 8-X</td>
              <td class="center">1</td>
              <td class="center">C</td>
            </tr>
            <tr class="gradeA">
              <td>Misc</td>
              <td>NetFront 3.1</td>
              <td>Embedded devices</td>
              <td class="center">-</td>
              <td class="center">C</td>
            </tr>
            <tr class="gradeA">
              <td>Misc</td>
              <td>NetFront 3.4</td>
              <td>Embedded devices</td>
              <td class="center">-</td>
              <td class="center">A</td>
            </tr>
            <tr class="gradeX">
              <td>Misc</td>
              <td>Dillo 0.8</td>
              <td>Embedded devices</td>
              <td class="center">-</td>
              <td class="center">X</td>
            </tr>
            <tr class="gradeX">
              <td>Misc</td>
              <td>Links</td>
              <td>Text only</td>
              <td class="center">-</td>
              <td class="center">X</td>
            </tr>
            <tr class="gradeX">
              <td>Misc</td>
              <td>Lynx</td>
              <td>Text only</td>
              <td class="center">-</td>
              <td class="center">X</td>
            </tr>
            <tr class="gradeC">
              <td>Misc</td>
              <td>IE Mobile</td>
              <td>Windows Mobile 6</td>
              <td class="center">-</td>
              <td class="center">C</td>
            </tr>
            <tr class="gradeC">
              <td>Misc</td>
              <td>PSP browser</td>
              <td>PSP</td>
              <td class="center">-</td>
              <td class="center">C</td>
            </tr>
            <tr class="gradeU">
              <td>Other browsers</td>
              <td>All others</td>
              <td>-</td>
              <td class="center">-</td>
              <td class="center">U</td>
            </tr>
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
