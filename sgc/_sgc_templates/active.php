<?php
error_reporting(E_ALL);
ini_set("display_errors", 1);
?>
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
  $updateSQL = sprintf("UPDATE ". $_GET['URL_TABLE'] ." SET ". $_GET['URL_PREFIX'] ."STATUS=%s WHERE ". $_GET['URL_PREFIX'] ."COD=%s",
                       GetSQLValueString($_POST['STATUS'], "int"),
                       GetSQLValueString($_POST['CHAVE_UNICA'], "int"));

  mysql_select_db($database_conn92ID, $conn92ID);
  $Result1 = mysql_query($updateSQL, $conn92ID) or die(mysql_error());

  $updateGoTo = $_GET['URL_REDIR'];
  if (isset($_SERVER['QUERY_STRING'])) {
    $updateGoTo .= (strpos($updateGoTo, '?')) ? "&" : "?";
    $updateGoTo .= $_SERVER['QUERY_STRING'];
  }
  header(sprintf("Location: %s", $updateGoTo));
}

$colname_rsDADOS = "-1";
if (isset($_GET['URL_". $_GET["URL_PREFIX"] ."COD'])) {
  $colname_rsDADOS = $_GET['URL_". $_GET["URL_PREFIX"] ."COD'];
}
mysql_select_db($database_conn92ID, $conn92ID);
$query_rsDADOS = sprintf("SELECT * FROM ". $_GET['URL_TABLE'] ." WHERE ". $_GET['URL_PREFIX'] ."COD = %s", GetSQLValueString($colname_rsDADOS, "int"));
$rsDADOS = mysql_query($query_rsDADOS, $conn92ID) or die(mysql_error());
$row_rsDADOS = mysql_fetch_assoc($rsDADOS);
$colname_rsDADOS = "-1";
if (isset($_GET['URL_CHAVE'])) {
  $colname_rsDADOS = $_GET['URL_CHAVE'];
}
mysql_select_db($database_conn92ID, $conn92ID);
$query_rsDADOS = sprintf("SELECT ". $_GET['URL_PREFIX'] ."COD AS CHAVE FROM ". $_GET['URL_TABLE'] ." WHERE ". $_GET['URL_PREFIX'] ."COD = %s", GetSQLValueString($colname_rsDADOS, "int"));
$rsDADOS = mysql_query($query_rsDADOS, $conn92ID) or die(mysql_error());
$row_rsDADOS = mysql_fetch_assoc($rsDADOS);
$totalRows_rsDADOS = mysql_num_rows($rsDADOS);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Untitled Document</title>
</head>
<form name="form" action="<?php echo $editFormAction; ?>" method="POST">

<input name="CHAVE_UNICA" type="hidden" value="<?php echo $row_rsDADOS['CHAVE']; ?>" />

<input name="STATUS" type="hidden" value="1" />

<?php echo $row_rsDADOS['CHAVE']; ?>
<input type="hidden" name="MM_update" value="form" />



<script type="text/javascript">
  document.forms['form'].submit();
</script>

</form>
<body>
</body>
</html>
<?php
mysql_free_result($rsDADOS);
?>
