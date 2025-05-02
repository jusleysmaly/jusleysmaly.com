<?php 
error_reporting(0);

$change="";
$abc="";


 define ("MAX_SIZE","400");
 function getExtension($str) {
         $i = strrpos($str,".");
         if (!$i) { return ""; }
         $l = strlen($str) - $i;
         $ext = substr($str,$i+1,$l);
         return $ext;
 }

 $errors=0;
  
 if($_SERVER["REQUEST_METHOD"] == "POST")
 {
 	$image =$_FILES["file"]["name"];
	$uploadedfile = $_FILES['file']['tmp_name'];
     
 
 	if ($image) 
 	{
 	
 		$filename = stripslashes($_FILES['file']['name']);
 	
  		$extension = getExtension($filename);
 		$extension = strtolower($extension);
		
		
 if (($extension != "jpg") && ($extension != "jpeg") && ($extension != "png") && ($extension != "gif")) 
 		{
		
 			$change='<div class="msgdiv">Unknown Image extension </div> ';
 			$errors=1;
 		}
 		else
 		{

 $size=filesize($_FILES['file']['tmp_name']);


if ($size > MAX_SIZE*1024)
{
	$change='<div class="msgdiv">You have exceeded the size limit!</div> ';
	$errors=1;
}


$arqfinal = "../images/content/".$_POST['edt-dir']."/".$_POST['edt-filename'].'.jpg';
$arqfinal1 = "../images/content/".$_POST['edt-dir']."/".$_POST['edt-filename'].'_01.jpg';
$arqfinal2 = "../images/content/".$_POST['edt-dir']."/".$_POST['edt-filename'].'_02.jpg';
$arqfinal3 = "../images/content/".$_POST['edt-dir']."/".$_POST['edt-filename'].'_03.jpg';



//verifica se o arquivo existe

If (file_exists($arqfinal))
	unlink($arqfinal);

If (file_exists($arqfinal1))
	unlink($arqfinal1);
	
If (file_exists($arqfinal2))
	unlink($arqfinal2);
	
If (file_exists($arqfinal3))
	unlink($arqfinal3);

if($extension=="jpg" || $extension=="jpeg" )
{
$uploadedfile = $_FILES['file']['tmp_name'];
$src = imagecreatefromjpeg($uploadedfile);

}
else if($extension=="png")
{
$uploadedfile = $_FILES['file']['tmp_name'];
$src = imagecreatefrompng($uploadedfile);

}
else 
{
$src = imagecreatefromgif($uploadedfile);
}

echo $scr;

list($width,$height)=getimagesize($uploadedfile);

//resize
$newwidth=630;
$newheight=($height/$width)*$newwidth;
$tmp=imagecreatetruecolor($newwidth,$newheight);

//1
$newwidth1=310;
$newheight1=($height/$width)*$newwidth1;
$tmp1=imagecreatetruecolor($newwidth1,$newheight1);

//2
$newwidth2=207;
$newheight2=($height/$width)*$newwidth2;
$tmp2=imagecreatetruecolor($newwidth2,$newheight2);

//3
$newwidth3=110;
$newheight3=($height/$width)*$newwidth3;
$tmp3=imagecreatetruecolor($newwidth3,$newheight3);

imagecopyresampled($tmp,$src,0,0,0,0,$newwidth,$newheight,$width,$height);
imagecopyresampled($tmp1,$src,0,0,0,0,$newwidth1,$newheight1,$width,$height);
imagecopyresampled($tmp2,$src,0,0,0,0,$newwidth2,$newheight2,$width,$height);
imagecopyresampled($tmp3,$src,0,0,0,0,$newwidth3,$newheight3,$width,$height);


//SAVE
$filename = "../images/content/".$_FILES['file']['name'];
$filename1 = "../images/content/1".$_FILES['file']['name'];
$filename2 = "../images/content/2".$_FILES['file']['name'];
$filename3 = "../images/content/3".$_FILES['file']['name'];

//ajustes
imagejpeg($tmp,$filename,100);
imagejpeg($tmp1,$filename1,100);
imagejpeg($tmp2,$filename2,100);
imagejpeg($tmp3,$filename3,100);

//rename
$de = $filename;
rename($de, $arqfinal);

$de = $filename1;
rename($de, $arqfinal1);

$de = $filename2;
rename($de, $arqfinal2);

$de = $filename3;
rename($de, $arqfinal3);

imagedestroy($src);
imagedestroy($tmp);
imagedestroy($tmp1);
imagedestroy($tmp2);
imagedestroy($tmp3);
}}

}

//If no errors registred, print the success message
 if(isset($_POST['Submit']) && !$errors) 
 {
 
   // mysql_query("update {$prefix}users set img='$big',img_small='$small' where user_id='$user'");
 	$change=' <div class="msgdiv">Image Uploaded Successfully!</div>';
 }
 
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<title>92ID:CMS • ©92dpi</title>

<link href="css/main.css" rel="stylesheet" type="text/css" />
<link href="http://fonts.googleapis.com/css?family=Cuprum" rel="stylesheet" type="text/css" />

<script src="js/jquery-1.4.4.js" type="text/javascript"></script>

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

</head>

<body>

<!-- Top navigation bar --><!-- Header --><!-- Main wrapper -->
<div class="wrapper">

	<!-- Left navigation --><!-- Content -->
    <div class="content2" id="container"><!-- Statistics --><!-- Form begins -->
        <form action="" class="mainForm" METHOD="POST" enctype="multipart/form-data">
        
            
            <!-- Checkboxes and radios -->
            <fieldset>
                <div class="widget">    
                    <div class="head">
                      <h5 class="iRecord">Upload de Imagens</h5></div>
                    <div class="rowElem">
                      <label>Selecione o arquivo :</label> 
                        <div class="formRight">
                            <input type="file" class="fileInput" id="fileInput" />
                            <input name="edt-filename" type="hidden" id="edt-filename" value="<?php echo $_GET['URL_FILENAME'] ?>" />
                            
                          <input name="edt-dir" type="hidden" id="edt-dir" value="<?php echo $_GET['URL_DIR'] ?>" />
                        </div>
                        <input type="submit" value="Enviar Imagem" class="basicBtn submitForm mb22" />
                        
                        <div class="fix"></div>
                        
                    </div>
                    
                </div>
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
                
    </div>
    
<div class="fix"></div>
</div>

<!-- Footer -->
</body>
</html>
