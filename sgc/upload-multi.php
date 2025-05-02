<?php 


/**
* Smart Image Uploader by @cafewebmaster.com
* Free for private use
* Please support us with donations or backlink
*/

$fnew_name = $_POST['edt-filename'];
$upload_image_limit = $_GET['URL_QTDEIMG']; // How many images you want to upload at once?
$upload_dir			= "../images/content/".$_POST['edt-dir']."/"; // default script location, use relative or absolute path


################################# UPLOAD IMAGES
		
		$conta = 1;
		foreach($_FILES as $k => $v){ 

			$img_type = "";

			### $htmo .= "$k => $v<hr />"; 	### print_r($_FILES);

			if( !$_FILES[$k]['error'] && preg_match("#^image/#i", $_FILES[$k]['type']) && $_FILES[$k]['size'] < 1000000){

				$img_type = ($_FILES[$k]['type'] == "image/jpeg") ? ".jpg" : $img_type ;
				$img_type = ($_FILES[$k]['type'] == "image/gif") ? ".gif" : $img_type ;
				$img_type = ($_FILES[$k]['type'] == "image/png") ? ".png" : $img_type ;

				//$img_rname = $_FILES[$k]['name'];
				$img_rname = $fnew_name."-".$conta.$img_type;
				$img_path = $upload_dir.$img_rname;

				copy( $_FILES[$k]['tmp_name'], $img_path ); 
				$feedback .= "Imagem enviada: $img_rname<br />";
				
				$conta ++;

			}
		}


//close window
if(isset($_POST['edt-filename']))
{
echo  "<script type='text/javascript'>";
echo "window.close();";
echo "</script>";
}

 
?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;">
<title>It's Brain - premium admin HTML template by Eugene Kopyov</title>

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
<!-- Left navigation --><!-- Content -->
  <div class="content" id="container">
   	  <div class="title">
   	    <h5>Upload de Imagem múltiplas para "<?php echo $_GET['INAME'] ?>"</h5></div>
        
      <!-- Statistics --><!-- Form begins -->
    <form method="post" enctype="multipart/form-data">
          <!-- Checkboxes and radios -->
          <fieldset>
              <div class="widget">    
                  <div class="head">
                    <h5 class="iRecord">Selecione uma imagem de <?php echo $_GET['IMG_SIZE'] ?></h5></div>
                  <div class="rowElem">
                    <div class="formRight">
                    
                    <?php
                    
					while($i++ < $upload_image_limit){
						$form_img .= '<label>Image '.$i.': </label> <input type="file" name="uplimg'.$i.'"><br />';
					}
				
					$htmo .= '
						<p>'.$feedback.'</p>
						
							'.$form_img.' <br />
							<input type="submit" value="Enviar Imagens"  class="blueBtn"" />
							<input name="edt-dir" type="hidden" id="edt-dir" value='.$_GET['URL_DIR'].' />
							<input name="edt-filename" type="hidden" id="edt-filename" value='.$_GET['URL_FILENAME'].' />
							<input name="edt-qtdimg" type="hidden" id="edt-qtdimg" value='.$_GET['URL_QTDEIMG'].' />
						
						';	
				
					echo $htmo;
					
					?>
                        
                        
                    </div>
                      <div class="fix"></div>
                  </div>
                    
              </div>
          </fieldset>

    </form>
        
      <!-- Form with validation --><!-- Form -->
      <form action="" class="mainForm displayNone">
        
       	  <!-- Another version of text inputs -->
          <fieldset>
              <div class="widget">
                  <div class="head"><h5 class="iList">Form. One more version</h5></div>
                  <div class="rowElem noborder"><label class="topLabel">Usual input text:</label><div class="formBottom"><input type="text" name="inputtext"/></div><div class="fix"></div></div>
                  <div class="rowElem"><label class="topLabel">Input password:</label><div class="formBottom"><input type="password" /></div><div class="fix"></div></div>
                  <div class="rowElem"><label class="topLabel">Autogrowing textarea:</label><div class="formBottom"><textarea rows="8" cols="" class="auto" name="textarea"></textarea></div><div class="fix"></div></div>
                  <input type="submit" value="Submit form" class="greyishBtn submitForm" />
                  <div class="fix"></div>
              </div>
          </fieldset>      
            
          <!-- And one more version -->
          <fieldset>
              <div class="widget">
                  <div class="head"><h5 class="iList">Form. One more version</h5></div>
                  <div class="floatleft twoOne">
                    <div class="rowElem noborder pb0"><label class="topLabel">Usual input text:</label><div class="formBottom"><input type="text" name="inputtext"/></div><div class="fix"></div></div>
                    <div class="rowElem noborder pb0"><label class="topLabel">Input password:</label><div class="formBottom"><input type="password" /></div><div class="fix"></div></div>
                  </div>
                  <div class="floatright twoOne">
                    <div class="rowElem noborder"><label class="topLabel">Textarea:</label><div class="formBottom"><textarea rows="7" cols="" name="textarea"></textarea></div><div class="fix"></div></div>
                    <input type="submit" value="Submit form" class="greyishBtn submitForm" />
                    
                  </div>
                  <div class="fix"></div>
              </div>
          </fieldset> 
      </form>       
                
  </div>
    
<div class="fix"></div>

<!-- Footer -->
</body>
</html>
