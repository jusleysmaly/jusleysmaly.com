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

mysql_select_db($database_conn92ID, $conn92ID);
$query_rsINDICES = "SELECT * FROM tb_indices WHERE IND_STATUS = 1 ORDER BY IND_COD DESC";
$rsINDICES = mysql_query($query_rsINDICES, $conn92ID) or die(mysql_error());
$row_rsINDICES = mysql_fetch_assoc($rsINDICES);
$totalRows_rsINDICES = mysql_num_rows($rsINDICES);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/fe-estatico1.dwt" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Vagas &laquo; Civilcorp (Manaus - Amazonas)</title>
<!-- InstanceEndEditable -->
<!-- main -->
<link href="../css/main.css" rel="stylesheet" type="text/css" />

<!-- Nivo -->
<link rel="stylesheet" href="../css/nivo-slider.css" type="text/css" media="screen" />

<!-- js -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>



<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
</head>

<body>

  <div id="header" class="header_civilcorp">
  <div class="container_16">
  <div id="header_theme_civilcorp" class="theme-civilcorp">
  <!-- canal youtube -->
  <div class="grid_16 alpha omega canal-hd">
  <a href="http://www.youtube.com/civilcorp" target="_blank"><img src="../images/base/icone-youtube.png" alt="Conheça nosso Canal no Youtube" /></a>
  </div>

  <!-- logo-civil -->
  <div class="grid_5 alpha">
  <div class="logo-civil">
  <img src="../images/base/logo-civil.png" width="160" height="82" alt="Civil Corp Incorporações Ltda" />
  </div>
  </div>

  <!-- telefones -->
  <div class="grid_11 omega">
  <div class="telefone">
  <p class="tel">&nbsp;</p>
  <p class="tel">3642-6350 &bull; 3642-6355</p>
  <p class="horarios">Seg. &agrave; Qui. &bull; 08h &agrave;s 18h<br>Sex. &bull; 08h &agrave;s 17h</p>
  </div>

  <!-- chat online --><!-- 2ª Via de Boleto -->
  
  <div class="segunda-viaboleto">
  <p>2&ordf; Via de Boleto</p>
  <img src="../images/base/imagem-form-boleto.png" alt="" />
  </div>
  
  
  </div>

  <!-- menu principal --><!-- #BeginLibraryItem "/Library/menu-principal.lbi" --><div class="grid_14 alpha omega mrg-27px-tp">
  <ul class="nav">
    <li><a href="../index.php">Home</a></li>
    <li><a href="../content/inst-quem-somos.php">Institucional</a></li>
    <li><a href="../content/empreendimentos.php?URL_EMPT_COD=1">Empreendimentos</a></li>
    <li><a href="../content/depoimentos.php">Depoimentos</a></li>
    <li><a href="../content/vagas-candidatos.php">Trabalhe conosco</a></li>
    <li><a href="../content/contato.php">Contato</a></li>
  </ul> 
  </div><!-- #EndLibraryItem --><!-- botão btn-blog -->
  <div class="btn-blog pdg-20px-tp-30px-lft">
   <a href="http://www.civilcorp.com.br/blog"><img src="../images/base/btn-blog.png" alt="" /></a>
  </div>

  <!-- indices -->
  <div class="grid_12 alpha pdg-5px-tp">
    <div class="indices">
      <ul class="idc">
        <li><img src="../images/base/icone-indice.png" alt="" /><b>&Iacute;ndices</b> <?php echo $row_rsINDICES['IND_MES']; ?>/<?php echo $row_rsINDICES['IND_ANO']; ?></li>
        <li><img src="../images/base/icone-indice-br.png" alt="" /><b>&Iacute;ndices</b></li>
        <li><img src="../images/base/icone-seta.png" alt="" /><b>INCC</b> <?php echo $row_rsINDICES['IND_INCC']; ?></li>
        <li><b>IGP-M</b> <?php echo $row_rsINDICES['IND_IGPM']; ?></li>
        <li><b>Varia&ccedil;&atilde;o (%)</b></li>
        <li><b><img src="../images/base/icone-seta.png" alt="" />INCC</b> m&ecirc;s <?php echo $row_rsINDICES['IND_INCCV_MES']; ?> / (*) <?php echo $row_rsINDICES['IND_INCCV']; ?></li>
        <li><b> IGP-M</b> m&ecirc;s <?php echo $row_rsINDICES['IND_IGPMV_MES']; ?> / (*) <?php echo $row_rsINDICES['IND_IGPMV']; ?></li>
      </ul>
    </div>
  </div>
  <div class="grid_4 omega  pdg-13px-tp">
  <p class="ultimos-meses">*&Uacute;ltimo 12 meses</p>
  </div>
  </div>
  </div>
  </div>

<div class="container_16">
    <div id="content">
    <!-- institucional quem somos --><!-- InstanceBeginEditable name="conteudo-area-1" -->
    <div class="grid_12 alpha omega mrg-25px-tp">
      <div class="quem-somos"> <span>Trabalhe Conosco</span><br />
        <h1 class="mrg-12px-tp">Obrigado!</h1>
        <img src="../images/content/inst-quem-somos.jpg" alt="Institucional - Quem somos" />
        <p>Obrigado pelo interesse. Entraremos em contato em breve! </p>
        <p>&nbsp;</p>
      </div>
    </div>
    <!-- InstanceEndEditable --><!-- nossos empreendimentos -->
    <div class="grid_4 omega">
    <div class="nossos-empreendimentos  mrg-10px-lft-mrg-26-tp">
    <ul class="empreendimentos pdg-95px-tp">
      <li><a href="/content/empreendimentos.php?URL_EMPT_COD=1">Entregues</a></li>
      <li><a href="/content/empreendimentos.php?URL_EMPT_COD=2">Em andamento</a></li>
      <li><a href="/content/empreendimentos.php?URL_EMPT_COD=3">Futuros</a></li>
      <li><a href="../content/venda-seu-terreno.php">Venda seu terreno</a></li>
    </ul>
    </div>

    <!-- anuncios -->
    <div class="grid_4 omega">
    <a href="../content/venda-seu-terreno.php"><img src="../images/content/anuncios/venda-seu-terreno.jpg" class="mrg-12px-tp" alt="Venda seu terreno" /></a>
    <!--
    <a href="#"><img src="../images/content/anuncios/leia-nosso-blog.jpg" class="mrg-12px-tp pdg-90px-bt" alt="Acesse nosso blog e veja nossos artigos" /></a>
    -->
    </div>
    </div>

    <!-- civil corp newsletter -->
    <div class="grid_16 alpha omega pdg-20px-bt">
    <hr>
    <div class="grid_3 alpha mrg-15px-tp"><img src="../images/base/logo-newsletter.png" alt="" /></div>
    
    <div class="grid_11 pdg-25px-bt">
    <div class="news h-th-news">
    <div id="mc_embed_signup">
    <form action="http://civilcorp.us7.list-manage.com/subscribe/post?u=5aeea2f4ce6de33eea7ff8d1a&amp;id=cb09c65021" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank">
    
    <div class="mc-field-group">
    <input type="email" value="" name="EMAIL" class="required email" id="mce-EMAIL">
    </div>
    
    <div class="button">
    <input type="submit" value="Quero receber!" name="subscribe" id="mc-embedded-subscribe" class="button">
    </div>
    </form>
    <label>Digite seu email e receba nossa Newsletter mensal com nossas novidades.</label> 
    </div><!--End mc_embed_signup-->
    </div>
    </div>
    <div class="grid_2 omega canal-txt">
    <a href="http://www.youtube.com/civilcorp" target="_blank"><img src="../images/base/icone-youtube-news.png" alt="Assista!" class="canal-tube"/><p>Assista!</p></a>
    </div>
    </div>
    
    

  </div><!-- content -->

  </div> <!-- container -->

  <!-- logo-civilcorp - conheça - empreendimentos - contato - e-mail - telefones - chate  -->
  <div class="footer-bg-civilcorp"><!-- #BeginLibraryItem "/Library/footer.lbi" --><div class="mapa">

  <div class="grid_3 alpha mrg-80px-tp">
  <img src="../images/base/logo-civil-footer.png" alt="Civilcorp" />
  </div>

  <div class="grid_4 mrg-33px-tp">
  <div class="footer-sitemap">
  <ul>
    <li class="titulo-li">Conheça a Civilcorp</li>
    <li><a href="../content/inst-quem-somos.php">Quem somos</a></li>
    <li><a href="../content/inst-missao-visao.php">Missão e visão</a></li>
    <li><a href="../content/inst-responsabilidade-ambiental.php">Responsabilidade ambiental</a></li>
    <li><a href="../content/vagas-candidatos.php">Trabalhe Conosco</a></li>
    <li><a href="../content/peguntas-frequentes.php">Perguntas Frequentes</a></li>
  </ul>

  <ul>
    <li class="titulo-li">Nossos Empreendimentos</li>
    <li><a href="../content/empreendimentos.php?URL_EMPT_COD=1">Entregues</a></li>
    <li><a href="../content/empreendimentos.php?URL_EMPT_COD=2">Em andamento</a></li>
    <li><a href="../content/empreendimentos.php?URL_EMPT_COD=3">Futuros</a></li>
    <li><a href="../content/venda-seu-terreno.php">Venda seu terreno</a></li>
  </ul>
  </div>
  </div>

  <div class="grid_4 mrg-33px-tp">
  <div class="ender">
  <ul>
    <li><p class="onde">Contato</p></li>
    <li>Civilcorp - Escritório de Vendas</li>
    <li>Av. André Araújo, 2755, Aleixo</li>
    <li>CEP: 69.060-000</li>
    <li><a href="../content/contato.php"><img src="../images/base/icone-mail-footer.png" alt="Email" />Envie um email</a></li>
  </ul>
  </div>
  </div>

  <div class="grid_4 mrg-33px-tp">
  <div class="telefones">
  <ul>
    <li><img src="../images/base/icone-fone-footer.png" alt="Chat online" class="icon-fone"/>
    <p class="dd">(92) <b>3642-6350/6355</b></p></li>
    <li><p>Segunda à Quinta</p></li>
    <li><p>08 às 18h</p></li>
    <li><p>Sexta 08h às 17h</p></li><br>
    <!-- inactive
    <li><a href="#"><img src="../images/base/icone-chat-footer.png" alt="Chat online" /></a>
    <p>Segunda à Sexta</p></li>
    <li><p>08 às 18h</p></li>
    -->
  </ul>
  </div>
  </div>

  <div class="grid_16 alpha omega mrg-57px-tp">
  <div class="direitos"><p>2012 Copyright - Todos os direitos reservados.</p></div>
  </div>
  </div><!-- #EndLibraryItem --></div>
  <!-- InstanceBeginEditable name="footer-codes" -->
  
  <!-- InstanceEndEditable -->
</body>
<!-- InstanceEnd --></html>
<?php
mysql_free_result($rsINDICES);
?>
