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
<title>92ID:CMS � �92dpi</title>
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
            <div class="welcome"><a href="#" title=""><img src="../sgc/images/userPic.png" alt="" /></a><span>Ol�, <?php echo $_SESSION['MM_Username'] ?></span></div>
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
        	<li class="dash"><a href="../sgc/sgc.php?urlactive=01" title="" ><span>In�cio</span></a></li>
        	<li class="dash"><a href="../sgc/noticias.php?urlactive=02" title=""  ><span>Not&iacute;cias</span></a></li>
            <li class="dash"><a href="../sgc/depoimentos.php?urlactive=02" title=""  ><span>Depoimentos</span></a></li>
            <li class="dash"><a href="../sgc/agenda.php?urlactive=02" title=""  ><span>Agenda</span></a></li>
            <li class="dash"><a href="#" title="" class="exp"><span>Produtos e Servi�os</span><span class="numberLeft">2</span></a>
            	<ul class="sub">
                    <li><a href="/sgc/produtos-servicos.php" title="">Produtos e Servi�os</a></li>
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
                    <li><a href="/sgc/midias.php" title="">M�dias</a></li>
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
            
  			<li class="contacts"><a href="#" title="" class="exp"><span>Adminstra��o</span><span class="numberLeft">4</span></a>
            	<ul class="sub">
                    <li><a href="../sgc/usuarios-sgc.php" title="">Usu�rios</a></li>
                    <li><a href="#" title="">Customiza��o</a></li>
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
    <div class="content" id="container">
    	<div class="title"><h5>Not�cias</h5></div>
                    
        <!-- Statistics --><!-- Form begins -->
        <form method="POST" name="form" class="mainForm">
        
        	<!-- Input text fields -->
            <fieldset>
                <div class="widget first">
                    <div class="head">
                  <h5 class="iList">Inserir Novo</h5></div>
                        <div class="rowElem nobg">
                  <label>T�tulo:</label>
                  <input type="hidden" name="MAT_COD" id="MAT_COD" />
                  <div class="formRight"><input name="MAT_TITULO" type="text" id="MAT_TITULO"/></div><div class="fix"></div></div>
                        
                        
                        <div class="rowElem nobg">
                        <label>Status</label>
                        <div class="formRight">
                        <select name="MAT_STATUS" id="MAT_STATUS" >
                          <option value="0">0 - Inativa</option>
                          <option value="1" selected="selected">1 - Ativa</option>
                        </select>
                        </div>
                        <div class="fix"></div>
                    </div>
                    
                    
                    <div class="rowElem">
                        <label>Data:</label> 
                        <div class="formRight moreFields onlyNums">
                            <ul>
                                <li><input type="text" name="MAT_DATA_DIA" maxlength="2" value=<?php echo date("d") ?> /></li>
                                <li class="sep">/</li>
                                <li><input type="text" name="MAT_DATA_MES" maxlength="2" value=<?php echo date("m") ?> /></li>
                                <li class="sep">/</li>
                                <li><input type="text" name="MAT_DATA_ANO" maxlength="4" value=<?php echo date("Y") ?> /></li>
                                <li><span>"dd/mm/aaaa"</span></li>
                            </ul>  
                        </div> 
                        <div class="fix"></div>   
                    </div>
                    
                       
                        <div class="rowElem nobg">
                        <label>Posi��o / Home</label>
                        <div class="formRight">
                        <select name="POS_COD_HOME" id="POS_COD_HOME" >
                          <option value="0" selected="selected">0 - N�o Entra</option>
                          <option value="1">1 - Entra</option>
                        </select>
                        </div>
                        <div class="fix"></div>
                    </div>
                    
                    
                    <div class="rowElem nobg">
                        <label>Posi��o / Internas</label>
                        <div class="formRight">
                        <select name="POS_COD_CANAL" id="POS_COD_CANAL" >
                          <option value="0" selected="selected">0 - N�o Entra</option>
                          <option value="1">1 - Entra</option>
                        </select>
                        </div>
                        <div class="fix"></div>
                    </div>
                    
                  <div class="rowElem">
                    <label>Legenda da Foto</label>
                    <div class="formRight"><input name="MAT_FOTO_LEGENDA" type="text" id="MAT_FOTO_LEGENDA" placeholder="enter your placeholder text here"/></div><div class="fix"></div></div>
                  <div class="rowElem">
                  <label>Fonte:</label><div class="formRight"><input name="MAT_FONTE" type="text" id="MAT_FONTE" /></div><div class="fix"></div></div>
                        <div class="rowElem">
                  <label>Tags:</label><div class="formRight"><input name="MAT_TAGS" type="text" id="MAT_TAGS" /></div><div class="fix"></div></div>
              
                        <div class="rowElem">
                          <label>Resumo:</label><div class="formRight"><textarea name="MAT_CORPO_HOME" cols="" rows="8" id="MAT_CORPO_HOME"></textarea></div><div class="fix"></div></div>
                        <div class="rowElem">
                        <label>Corpo:</label><div class="formRight"><textarea name="MAT_CORPO" cols="" rows="5" class="wysiwyg" id="MAT_CORPO"></textarea></div><div class="fix"></div></div>
                        
                        
                        <input type="submit" value="Inserir Novo" class="basicBtn submitForm mb22" />
                        <div class="fix"></div>

                </div>
            </fieldset>
            
            <!-- Filtering data rows -->
            <fieldset>
            </fieldset>
            
            <!-- Dropdowns and selects -->
            <fieldset>
            </fieldset>
            
            <!-- Checkboxes and radios --><!-- File upload --><!-- WYSIWYG editor -->
</form>
        
        <!-- Form with validation -->
        <form action="" id="valid" class="mainForm">
            <fieldset>
            </fieldset>
        </form>   
        
        <!-- Form -->
        <form action="" class="mainForm displayNone">
        
        	<!-- Another version of text inputs -->
            <fieldset>
                <div class="widget">
                    <div class="head"><h5 class="iList">Form. One more version</h5></div>
                    <div class="rowElem nobg"><label class="topLabel">Usual input text:</label><div class="formBottom"><input type="text" name="inputtext"/></div><div class="fix"></div></div>
                    <div class="rowElem"><label class="topLabel">Input password:</label><div class="formBottom"><input type="password" /></div><div class="fix"></div></div>
                    <div class="rowElem"><label class="topLabel">Autogrowing textarea:</label><div class="formBottom"><textarea rows="8" cols="" class="auto" name="textarea"></textarea></div><div class="fix"></div></div>
                    <input type="submit" value="Submit form" class="basicBtn submitForm mb22" />
                    <div class="fix"></div>
                </div>
            </fieldset>      
            
            <!-- And one more version -->
            <fieldset>
                <div class="widget">
                    <div class="head"><h5 class="iList">Form. One more version</h5></div>
                    <div class="floatleft twoOne">
                    <div class="rowElem nobg pb0"><label class="topLabel">Usual input text:</label><div class="formBottom"><input type="text" name="inputtext"/></div><div class="fix"></div></div>
                    <div class="rowElem nobg pb0"><label class="topLabel">Input password:</label><div class="formBottom"><input type="password" /></div><div class="fix"></div></div>
                    </div>
                    <div class="floatright twoOne">
                    <div class="rowElem nobg"><label class="topLabel">Textarea:</label><div class="formBottom"><textarea rows="7" cols="" name="textarea"></textarea></div><div class="fix"></div></div>
                    <input type="submit" value="Submit form" class="basicBtn submitForm mb22" />
                    
                    </div>
                    <div class="fix"></div>
                </div>
            </fieldset> 
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
