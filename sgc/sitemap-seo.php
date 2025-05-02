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

#tabela-noticias
mysql_select_db($database_conn92ID, $conn92ID);
$query_rsTABELA = "SELECT * FROM tb_materia WHERE MAT_STATUS = 1 ORDER BY MAT_COD DESC";
$rsTABELA = mysql_query($query_rsTABELA, $conn92ID) or die(mysql_error());
$row_rsTABELA = mysql_fetch_assoc($rsTABELA);
$totalRows_rsTABELA = mysql_num_rows($rsTABELA);

?>
<?php

#xml header
const NS_URI_SITE_MAP = 'http://www.sitemaps.org/schemas/sitemap/0.9';

#versao do encoding xml
$dom = new DOMDocument("1.0", "UTF-8");

#retirar os espacos em branco
$dom->preserveWhiteSpace = false;

#gerar o codigo
$dom->formatOutput = true;

#criando o nó principal (root)
$root = $dom->createElement("urlset");
$root = $dom->createElementNS('http://www.sitemaps.org/schemas/sitemap/0.9', 'urlset');





#paginas estaticas
 $array_estaticas = array(
 			array("http://92dpi.ag","weekly", 0.9),
			array("http://92dpi.ag/content/sobre.php","weekly", 0.9),
			array("http://92dpi.ag/content/servicos.php","weekly", 0.9),
			array("http://92dpi.ag/content/portfolio.php","weekly", 0.9),
			array("http://92dpi.ag/content/clientes.php","weekly", 0.9),
			array("http://92dpi.ag/content/contato.php","weekly", 0.9));


$i=0;
foreach($array_estaticas as $estaticas)
{
	echo $array_estaticas[$i][0].'<br/>';
	
	#nó filho (url)
	$url = $dom->createElement("url");

	#setanto nomes e atributos dos elementos xml (nós)
	$loc = $dom->createElement("loc", $array_estaticas[$i][0]);
	$changefreq = $dom->createElement("changefreq", $array_estaticas[$i][1]);
	$priority = $dom->createElement("priority", $array_estaticas[$i][2]);	
	
	#adiciona os nós (informacaoes do url) em url
	$url->appendChild($loc);
	$url->appendChild($changefreq);
	$url->appendChild($priority);
	
	#adiciona o nó url em (root) urlset
	$root->appendChild($url);
	$dom->appendChild($root);
	
	$i++;
}

#Eis um exemplo de um matriz 3x3 (três linhas por três colunas)
 $array_tabelas = array(
 			array('tb_clientes',"CLI_","http://www.92dpi.com.br/clientes.php",'weekly', 0.9),
			array('tb_materia',"MAT_","http://www.92dpi.com.br/materias.php",'daily', 0.9),
			array('tb_dicas',"DIC_","http://www.92dpi.com.br/dicas.php",'weekly', 0.9));

// Loop das tabelas - leitura
$i=0;
foreach($array_tabelas as $data)
{
	echo $array_tabelas [$i][0]."</br>";
	
	//Leitura da Tabela Atual
	mysql_select_db($database_conn92ID, $conn92ID);
	$query_rsTABELA = "SELECT * FROM ".$array_tabelas [$i][0]." WHERE ".$array_tabelas [$i][1]."STATUS = 1 ORDER BY ".$array_tabelas [$i][1]."COD DESC";
	$rsTABELA = mysql_query($query_rsTABELA, $conn92ID) or die(mysql_error());
	$row_rsTABELA = mysql_fetch_assoc($rsTABELA);
	$totalRows_rsTABELA = mysql_num_rows($rsTABELA);

	
	// Loop das tabelas
	do { 
		echo $row_rsTABELA[$array_tabelas [$i][1].'COD']."</br>";
		
		//Montagem Sitemap
		
		#nó filho (url)
		$url = $dom->createElement("url");
		
		$loc = $dom->createElement("loc", $array_tabelas [$i][2]."?URL_".$array_tabelas [$i][1]."COD=".$row_rsTABELA[$array_tabelas [$i][1].'COD']);
		$changefreq = $dom->createElement("changefreq", "weekly");
		$priority = $dom->createElement("priority", "0.9");
		
		#adiciona os nós (informacaoes do url) em url
		$url->appendChild($loc);
		$url->appendChild($changefreq);
		$url->appendChild($priority);
		
		#adiciona o nó url em (root) urlset
		$root->appendChild($url);
		$dom->appendChild($root);
	} while ($row_rsTABELA = mysql_fetch_assoc($rsTABELA));
	

	
	//Fecha Tabelas
	mysql_free_result($rsTABELA);
	
	$i++;
}


# Para salvar o arquivo, descomente a linha
$dom->save("../sitemap.xml");

#cabeçalho da página
header("Content-Type: text/xml");
# imprime o xml na tela
print $dom->saveXML();


# ping to google
//Set this to be your site map URL
$sitemapUrl = "http://92dpi.ag/sitemap.xml";

// cUrl handler to ping the Sitemap submission URLs for Search Engines…
function myCurl($url){
  $ch = curl_init($url);
  curl_setopt($ch, CURLOPT_HEADER, 0);
  curl_exec($ch);
  $httpCode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
  curl_close($ch);
  return $httpCode;
}

//Google
$url = "http://www.google.com/webmasters/sitemaps/ping?sitemap=".$sitemapUrl;
$returnCode = myCurl($url);
echo "<p>Google Sitemaps has been pinged (return code: $returnCode).</p>";

//Bing / MSN
$url = "http://www.bing.com/webmaster/ping.aspx?siteMap=".$sitemapUrl;
$returnCode = myCurl($url);
echo "<p>Bing / MSN Sitemaps has been pinged (return code: $returnCode).</p>";

//ASK
$url = "http://submissions.ask.com/ping?sitemap=".$sitemapUrl;
$returnCode = myCurl($url);
echo "<p>ASK.com Sitemaps has been pinged (return code: $returnCode).</p>";



?>


